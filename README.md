FL-Net GitHub Configuration

This repository contains organization-wide GitHub configuration files for the FedLearnNet organization.

<<<<<<< Updated upstream
The public organization profile is defined in profile/README.md.
=======
The public organization profile is defined in profile/README.md.

`actions/version` holds the release rules shared by all FL-Net repositories (version format, which branch
takes which version, what a build publishes). The repositories use it in their workflows as
`FedLearnNet/.github/actions/version@main`; see "Release workflow" in the contribution guide of the Documentation.

`.github/workflows/image-cleanup.yml` is a reusable workflow the repositories call weekly to remove old,
no longer tagged images from the GitHub Container Registry.
>>>>>>> Stashed changes
