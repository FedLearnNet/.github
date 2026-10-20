#!/usr/bin/env bash
# FL-Net release rules, shared by all repositories through the "version" action next to this file.
# The repositories only read and write their version (.github/scripts/version.sh); this script decides
# whether that version is valid and what a build publishes. See "Release workflow" in the Documentation.
#
# Usage:
#   rules.sh check <version> <branch>   fail if the version may not go into the branch (pull request check)
#   rules.sh ci <version>               GitHub Actions: check the pushed branch and write the step outputs
#
# Locally, with this repository cloned next to the others:
#   bash ../.github/actions/version/rules.sh check "$(.github/scripts/version.sh)" main
set -euo pipefail

# X.Y.Z.dev while developing, X.Y.Z.rcN for release candidates, X.Y.Z for releases
FORMAT='^(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)(\.dev|\.rc(0|[1-9][0-9]*))?$'

fail() { echo "::error::$1" >&2; exit 1; }

kind() {
  case "$1" in
    *.dev) echo dev ;;
    *.rc*) echo rc ;;
    *) echo release ;;
  esac
}

# Commit of the git tag <version>, empty if the version was not released yet
tagged_commit() {
  local repo=${GITHUB_REPOSITORY:-$(gh repo view --json nameWithOwner --jq .nameWithOwner)} sha
  sha=$(gh api "repos/$repo/commits/refs/tags/$1" --jq .sha 2>/dev/null) || sha=""
  echo "$sha"
}

check_branch() {
  local version=$1 branch=$2
  [[ $version =~ $FORMAT ]] || fail "Version '$version' is not X.Y.Z.dev, X.Y.Z.rcN or X.Y.Z"
  case "$branch" in
    main)
      [ "$(kind "$version")" = release ] || fail "main only takes release versions (X.Y.Z), found $version" ;;
    develop)
      [ "$(kind "$version")" != release ] || fail "develop takes X.Y.Z.dev or X.Y.Z.rcN, found $version. Set the next .dev version" ;;
  esac
}

case "${1:-}" in
  check)
    version=${2:?Usage: rules.sh check <version> <branch>}
    branch=${3:?Usage: rules.sh check <version> <branch>}
    check_branch "$version" "$branch"
    if [ "$branch" = main ] && [ -n "$(tagged_commit "$version")" ]; then
      fail "$version is already released. Raise the version"
    fi
    echo "$version is valid for $branch"
    ;;
  ci)
    version=${2:?Usage: rules.sh ci <version>}
    branch=$GITHUB_REF_NAME
    check_branch "$version" "$branch"
    tag_image=false
    release=false
    if [ "$branch" = main ] || [ "$branch" = develop ]; then
      if [ "$(kind "$version")" = dev ]; then
        # Moving tag, always the newest develop build
        tag_image=true
      else
        # Release candidates and releases are published once and stay fixed afterwards
        commit=$(tagged_commit "$version")
        if [ -z "$commit" ]; then
          tag_image=true
          release=true
        elif [ "$commit" = "$GITHUB_SHA" ]; then
          tag_image=true
        else
          moving=$([ "$branch" = main ] && echo latest || echo staging)
          echo "::warning::$version was already released from ${commit::7}, so this build only updates '$moving'. Raise the version to publish a new one."
        fi
      fi
    fi
    {
      echo "version=$version"
      echo "tag_image=$tag_image"
      echo "release=$release"
      echo "prerelease=$([ "$(kind "$version")" = rc ] && echo true || echo false)"
    } >> "$GITHUB_OUTPUT"
    echo "version=$version tag_image=$tag_image release=$release"
    ;;
  *)
    fail "Usage: rules.sh check <version> <branch> | rules.sh ci <version>"
    ;;
esac
