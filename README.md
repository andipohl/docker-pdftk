PDFtk is a simple tool for doing everyday things with PDF documents.

1. Create two directories in your server:
mkdir /opt/pdftk/input
mkdir /opt/pdftk/output

2. Put your test,pdf file into directory /opt/pdftk/input

3. Run container:
docker run -d -v /opt/pdftk/input:/input -v /opt/pdftk/output:/output sfoxdev/pdftk /input/test.pdf cat 2 output /output/result.pdf

-`/input/test.pdf` is the original PDF file
-`cat 2` is the page number want to extract
-`output /output/result.pdf` is the extracted output file
