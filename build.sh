#!/bin/bash

set -e

ASSEMBLY="$1"

asciidoctor "$ASSEMBLY" -o index.html \
-a stylesheet="assets/css/redhat.css" \
-a toc -a toc-placement=left \
-a docinfodir="assets" \
-a docinfo=shared \
-a source-highlighter=rouge \
-a rouge-style=github \
-a favicon="favicon.ico" \
-a icon-set=fab \
-a icons=font \
-a sectlinks 

echo ""
echo "finished building "$ASSEMBLY" as index.html"