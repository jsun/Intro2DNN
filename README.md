# Introduction to deep neural network with R


Deep learning has proven to be one of state-of-the-art tools in object recognition
and natural language processing, and has been applied to many fields including life sciences.
Deep learning refers to the use of multiple layers of neural network which is one of traditional machine learning algorithms.
The deep neural networks are able to solve problems
that are difficult to solve with the conventional machine learning algorithms.
At present, various architectures of deep neural networks have been published,
especially convolutional neural network (CNN) and recurrent neural network (RNN) are well known.
CNN is known to be excellent in computer visions such as object recognition and object detection,
while RNN is known to be excellent in time-series data analysis and natural langauge processing.
In this workshop, we will introduce both CNN and RNN to build model for predictions.



## Documents

Slides to introduce deep learning are available at [aabbdd.jp](https://aabbdd.jp/),
and tutorials (vignettes) are avaliable at [GitHub Pages](https://jsun.github.io/Intro2DNN/).




## Docker

Dcoker image is available at [aabbdd/intro2dnn:biocasia2021](https://hub.docker.com/repository/docker/aabbdd/intro2dnn).
Note that the Docker image only correctly works on Ubuntu host OS, otherwise it may crash the R/RStudio session.
To download and run the Docker container, run the following commands on terminal.

```sh
docker run -e PASSWORD=biocasia -p 8787:8787 aabbdd/intro2dnn:biocasia2021
```

Once running, open your web browser and accesss to https://localhost:8787/ and then login with username `rstudio` and password `biocasia`.
Again, if you run this Docker image on your macOS or Windows system, it may crash the R/RStudio session.




## Goals and Objectives

The workshop introduces fundamental concepts of one of CNN and RNN algorithms through developing models.
By the end of the workshop, participants should be able to:

* understand fundamental concepts of neural network
* understand fundamental concepts of CNN and RNN
* develop an deep neural network model with programming language R


## Prerequisties

The workshop will proceed on the assumption that participants have the following basic knowledge:

* basic knowledge of R syntax (package installation, reading and writing files, `for` sentence, functions)
* basic knowledge of mathematics (multivariate functions, linear combinations, differentiation, etc.)

Since the workshop focuses on explaining basic knowledge of deep learning,
it is not intended for those who are familiar with deep learning or who can build models with Python or other programming languages.


## Setup

In this workshop, we mainly use torch package for R [@torch4r] to perform deep learning,
and use tidyverse package [@tidyverse] for data summarisation and visualization.
It is required to install these two packages into your R/RStudio environments with the following scripts.

```
install.packages('jpeg')
install.packages('coro')
install.packages('tidyverse')
install.packages('torch')
install.packages('torchvision')
```




