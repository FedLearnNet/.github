# Federated Learning Net (FL-Net)

**FL-Net is an open-source framework for privacy-preserving, federated
analysis and machine learning across distributed institutional data.**

FL-Net enables multiple institutions to collaboratively analyze data and
train machine-learning models while retaining control over their local data.

🌐 [Website](https://federated-learning.net/)  
📖 [Documentation](https://federated-learning.net/documentation/)

---

## FL-Net Architecture

FL-Net follows a star shaped network architecture consisting of a central
**Platform** and independently operated **Sites**.

- **Platform** – coordinates data discovery queries, federated statistics and federated learning projects
- **Sites** – retain institutional data and execute computations locally. Allows complex extract transfer load (ETL) data importing and tight permission based control of federated access.
📖 [Architecture Documentation](https://federated-learning.net/documentation/docs/intro/architecture/welcome)

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

This is a protected instance, please [contact us](mailto:info@mail.federated-learning.net) for account creation.

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
Please mind our [contribution guide](https://federated-learning.net/documentation/docs/contribution-guide/welcome)

---

## Contact

For questions about FL-Net:

📧 info@mail.federated-learning.net

## Citing FL-Net and References
You can find the academic paper describing FL-Net [on arxiv](https://arxiv.org/abs/2609.20650)

If you use the FL-Net software or the deployed instance (federated-learning.net), please cite the preprint of FL-Net:
```
@misc{süwer2026multicentermedicaldatamining,
      title={Multi-center Medical Data Mining with FL-Net - A One-stop Shop for Federated Learning}, 
      author={Simon Süwer and Julian Klemm and Elisa Acitelli and Mathieu Almeida and Lucia Altucci and Zsolt Bagyura and Michelangela Barbieri and Zsolt-Zoltán Bedő and Rosaria Benedetti and Béla Bihari and Csongor Csalóka and Lucia Dicunta and Stanislav Ehrlich and Bjoern M. Eskofier and Sándor-József Fejér and Georg Fröwis and Walter Hötzendorfer and Alexandra Kautzky-Willer and Jens Johann Georg Lohmann and Marianna Maranghi and Lorenzo Marconi and Rudolf Mayer and Wouter Leonard Megchelenbrink and Monika Moga and Adham Mottalib and Sanjeev Mehta and Madeleine Müller and Thomas Nyström and Balázs-Attila Orbán and Paul O'Toole and Giuseppe Paolisso and Paolo Parini and Matteo Pedrelli and Enrico Petrillo and Philipp Poindl and Niklas Probul and Anastasia Pustozerova and Tanja Šarčević and Lukas Weilguny and Jan Baumbach and Andreas Maier},
      year={2026},
      eprint={2609.20650},
      archivePrefix={arXiv},
      primaryClass={cs.LG},
      url={https://arxiv.org/abs/2609.20650}, 
}
```

