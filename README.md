# Machine Learning and Numerical Computing in MATLAB

A collection of MATLAB work covering numerical computing, statistics, and machine learning. It moves from vector and matrix fundamentals through probability distributions and Gaussian Mixture Models to convolutional neural networks, support vector machines, and regression with proper model evaluation.

![MATLAB](https://img.shields.io/badge/MATLAB-numerical%20%2B%20ML-orange)
![Deep Learning](https://img.shields.io/badge/CNN-transfer%20learning-success)
![ML](https://img.shields.io/badge/ML-SVM%20%2F%20GMM%20%2F%20regression-blue)

---

## What is in here

The work is organised by topic, roughly in order of increasing depth.

| Folder | Topic |
| --- | --- |
| `01-numerical-computing` | Vectors, matrices, and plotting fundamentals in MATLAB. |
| `02-statistics-and-distribution-fitting` | Fitting probability distributions to data (for example, fitting a normal PDF to car prices). |
| `03-gaussian-mixture-models` | A custom Gaussian Mixture Model density function and contour visualisation. |
| `04-cnn-transfer-learning` | Convolutional neural networks on notMNIST: dropout, fine-tuning pretrained layers, and using a CNN as a feature extractor for an SVM, with confusion matrices. |
| `05-neural-networks-and-classification` | Neural network and classification exercises. |
| `06-additional-exercises` | Further practice across the module. |
| `07-regression-and-model-evaluation` | Multiple and stepwise regression with AIC and BIC, residual analysis, an SVM classifier, ROC and AUC, confusion matrices, and precision and recall. |
| `data` | Supporting dataset used in the analysis work. |

---

## Skills demonstrated

- **Numerical computing**: vectors, matrices, and plotting in MATLAB
- **Statistics**: distribution fitting, probability density functions
- **Unsupervised learning**: Gaussian Mixture Models
- **Deep learning**: convolutional neural networks, dropout, transfer learning and fine-tuning, CNN features feeding an SVM
- **Supervised learning**: linear and stepwise regression, support vector machines
- **Model evaluation**: AIC and BIC, RMSE, residual analysis, ROC and AUC, confusion matrices, precision and recall

---

## How to run

Open the repository in MATLAB, then run any script from its topic folder. The deep-learning scripts use the Deep Learning Toolbox and expect a pretrained network and augmented datastores to be loaded in the workspace, as set up in the module. The numerical, statistics, GMM, and regression scripts run on their own or on the included dataset.

---

## Note

This work was completed as part of an engineering computing module. It is shared here to document the numerical and machine-learning techniques covered.
