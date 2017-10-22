#!/bin/bash
docker run -i -t -v "$PWD":/data -v "$PWD"/latex/aa:/usr/share/texlive/texmf-dist/tex/latex/aa weinschenker/docker-texlive /bin/bash
