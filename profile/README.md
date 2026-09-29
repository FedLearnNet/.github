# Federated Learning Net (FL-Net)

**FL-Net is an open-source framework for privacy-preserving, federated
analysis and machine learning across distributed institutional data.**

FL-Net enables multiple institutions to collaboratively analyze data and
train machine-learning models while retaining control over their local data.

🌐 [Website](https://federated-learning.net/)  
📖 [Documentation](https://federated-learning.net/documentation/)

---

## FL-Net Architecture

FL-Net follows a distributed architecture consisting of a central
**Platform** and independently operated **Sites**.

- **Platform** – coordinates federated projects, workflows, and analyses.
- **Sites** – retain institutional data and execute computations locally.
- **Federated Learning** – combines locally computed model updates without
  transferring raw data.
- **Distributed Data Queries** – enable privacy-preserving feasibility
  analyses across participating Sites.
- **Tools** – containerized analysis applications executed within the
  federated infrastructure.

---

## Main Repositories

| Repository | Purpose |
|---|---|
| [Frontends](https://github.com/FedLearnNet/Frontends) | Global and local FL-Net web interfaces |
| [Orchestration-API](https://github.com/FedLearnNet/Orchestration-API) | Orchestration of tools and federated workflows |
| [Learning-APIs](https://github.com/FedLearnNet/Learning-APIs) | Global and local federated-learning services |
| [Python-Tool-API](https://github.com/FedLearnNet/Python-Tool-API) | Python API for implementing FL-Net tools |
| [Tool-Build-Pipeline](https://github.com/FedLearnNet/Tool-Build-Pipeline) | Build and validation pipeline for FL-Net tools |
| [FL-Net-Client-Deployment](https://github.com/FedLearnNet/FL-Net-Client-Deployment) | Deployment utilities for FL-Net Sites |

---

## Getting Started

### Deploy an FL-Net Site

See the
[FL-Net Client Deployment](https://github.com/FedLearnNet/FL-Net-Client-Deployment)
repository.

### Develop an FL-Net Tool

Use the
[Python Tool API](https://github.com/FedLearnNet/Python-Tool-API)
and the Tool Build Pipeline.

### Explore FL-Net

A publicly accessible FL-Net deployment and additional documentation are
available at:

**https://federated-learning.net/**

---

## Documentation

Detailed information about installation, architecture, tool development,
federated workflows, and administration is available in the
[FL-Net documentation](https://federated-learning.net/documentation/).

---

## Contributing

FL-Net is developed as an open-source project. Contributions, bug reports,
feature requests, and discussions are welcome through the corresponding
GitHub repositories.

---

## Contact

For questions about FL-Net:

📧 info@mail.federated-learning.net