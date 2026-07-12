# Machine Learning and Numerical Computing in MATLAB

A collection of MATLAB work covering numerical computing, statistics, and machine learning. It moves from vector and matrix fundamentals through probability distributions and Gaussian Mixture Models to convolutional neural networks, support vector machines, and regression with proper model evaluation. The work is organised by topic so each area can be read on its own.

![MATLAB](https://img.shields.io/badge/MATLAB-numerical%20%2B%20ML-orange)
![Deep Learning](https://img.shields.io/badge/CNN-transfer%20learning-success)
![ML](https://img.shields.io/badge/ML-SVM%20%2F%20GMM%20%2F%20regression-blue)

---

## Table of contents

1. [Overview](#overview)
2. [Topics in detail](#topics-in-detail)
3. [Skills demonstrated](#skills-demonstrated)
4. [Repository structure](#repository-structure)
5. [How to run](#how-to-run)
6. [Notes](#notes)

---

## Overview

This repository gathers the numerical and machine-learning work I did in MATLAB, cleaned up and grouped by subject. It runs from the fundamentals of vectors, matrices, and plotting, through fitting probability distributions to real data, and on to genuine machine learning: Gaussian Mixture Models, convolutional neural networks with transfer learning, support vector machines, and regression models evaluated with the metrics a data scientist actually uses.

---

## Topics in detail

### 01. Numerical computing
Vectors, matrices, and plotting fundamentals: building and indexing vectors and matrices, matrix operations, and several plotting exercises including complex-number and distribution plots. This is the MATLAB groundwork the later machine-learning work builds on.

### 02. Statistics and distribution fitting
Fitting probability distributions to data. One script takes a set of car prices, plots a histogram normalised to a density, fits a normal distribution to it with `fitdist`, and overlays the fitted probability density function. This is the bridge from raw data to a statistical model.

### 03. Gaussian Mixture Models
A custom Gaussian Mixture Model. `mygmm.m` defines a two-component GMM density as a weighted sum of multivariate normal densities, with assertions that the mixing weights are valid, and then visualises the mixture as a contour plot over a scatter of the data. The supporting practice scripts work through the surrounding exercises.

### 04. CNN transfer learning
Convolutional neural networks on the notMNIST character dataset, using transfer learning from a pretrained network. The work runs three experiments and compares them: a CNN with a dropout layer, a fine-tuned CNN where the pretrained layers keep learning at a reduced rate, and using the CNN purely as a feature extractor whose features feed a support vector machine. Each approach is scored on validation accuracy and shown as a confusion matrix. `freezeWeights.m` is a helper that freezes selected layer weights during training.

### 05. Neural networks and classification
Further neural-network and classification exercises that extend the deep-learning work.

### 06. Additional exercises
Further practice across the module, kept for completeness.

### 07. Regression and model evaluation
Regression modelling done properly: multiple and stepwise linear regression with model selection by AIC and BIC, residual analysis, a support vector machine classifier, and a full evaluation with ROC and AUC, confusion matrices, and precision and recall.

---

## Skills demonstrated

- **Numerical computing**: vectors, matrices, and plotting in MATLAB
- **Statistics**: distribution fitting and probability density functions
- **Unsupervised learning**: Gaussian Mixture Models
- **Deep learning**: convolutional neural networks, dropout, transfer learning and fine-tuning, and CNN features feeding an SVM
- **Supervised learning**: linear and stepwise regression, support vector machines
- **Model selection and evaluation**: AIC and BIC, residual analysis, ROC and AUC, confusion matrices, precision and recall

---

## Repository structure

```
matlab-machine-learning/
├── 01-numerical-computing/                 # vectors, matrices, plotting
├── 02-statistics-and-distribution-fitting/ # fitting distributions to data
├── 03-gaussian-mixture-models/             # custom GMM density and contours
├── 04-cnn-transfer-learning/               # dropout, fine-tuning, CNN + SVM, freezeWeights
├── 05-neural-networks-and-classification/  # further NN and classification
├── 06-additional-exercises/                # further practice
├── 07-regression-and-model-evaluation/     # regression, SVM, ROC/AUC, confusion matrices
├── data/                                   # supporting dataset
└── README.md
```

---

## How to run

Open the repository in MATLAB, then run any script from its topic folder. The deep-learning scripts use the Deep Learning Toolbox and expect a pretrained network and augmented image datastores to be loaded in the workspace, as set up in the module. The numerical, statistics, GMM, and regression scripts run on their own or on the included dataset.

---

## Notes

This work was completed as part of an engineering computing module. It is shared here to document the numerical and machine-learning techniques covered, cleaned up and organised by topic.
