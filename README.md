# PDFtk

PDFtk is a simple tool for doing everyday things with PDF documents.

[![Docker Build Status](https://img.shields.io/docker/build/sfoxdev/pdftk.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/automated/sfoxdev/pdftk.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/pulls/sfoxdev/pdftk.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/stars/sfoxdev/pdftk.svg?style=flat-square)]()

## Usage

### Create two directories in your server:

mkdir /opt/pdftk/input

mkdir /opt/pdftk/output

### Put your test.pdf file into directory /opt/pdftk/input

### Run container:

docker run -d -v /opt/pdftk/input:/input -v /opt/pdftk/output:/output sfoxdev/pdftk /input/test.pdf cat 2 output /output/result.pdf

-`/input/test.pdf` is the original PDF file

-`cat 2` is the page number want to extract

-`output /output/result.pdf` is the extracted output file
