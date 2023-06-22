#!/bin/bash

set -e

INPUT=$*

asciidoctor "$INPUT" -o index.html \
-a stylesheet="assets/css/redhat.css" \
-a logo="assets/img/logo.svg" \
-a toc -a toc-placement=left \
-a docinfodir="assets" \
-a docinfo=shared \
-a source-highlighter=rouge \
-a rouge-style=github \
-a favicon="assets/img/favicon.ico" \
-a icon-set=fab \
-a icons=font \
-a sectlinks 

echo ""
echo "Built ./index.html"