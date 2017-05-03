# Latex TexLive distribution

This image contains a texlive distribution and the pandoc utility. This will allow you to write latex documents and convert them into docx or odt documents afterwards.

The Dockerfile can be found on [github](https://github.com/janweinschenker/docker-texlive).

## Build the image

The image is on Docker hub at [https://hub.docker.com/r/weinschenker/docker-texlive/](https://hub.docker.com/r/weinschenker/docker-texlive/).

To build it directly from the Dockerfile, run `build.sh`: 

```bash
$ ./buil.sh
```

## Pull and run the image

You can run the image without building it yourself. Pull it from the hub first:

```bash
$ docker pull weinschenker/docker-texlive
```

Then run it:

```bash
$ ./run.sh ...
```

## Run options
All command line arguments after `run.sh` will be executed inside the docker container. To compile a tex document, place it in the same directory as `run.sh` and type:

```bash
$ ./run.sh pdflatex your_latex_doc.tex
```

A more extensive example that executes multiple commands (latex compile, makeindex and biber) inside the container:
```bash
$ ./run.sh /bin/sh -c "pdflatex your_latex_doc.tex && \
    makeindex your_latex_doc.nlo -s nomencl.ist -o your_latex_doc.nls && \
    biber your_latex_doc &&  \
    pdflatex your_latex_doc.tex &&  \
    pdflatex your_latex_doc.tex"
```

## Scripts

| name       | description |
| ---        | ---         |
| `bash.sh`  | Start the container and access it via bash. |
| `build.sh` | Build the container locally using the Dockerfile. |
| `run.sh`   | Start the container, map the current path at the host promt as a data volume and execute the script's command line arguments inside the container. See examples in the previous section. |
| `stop-rm.sh` | Some commands to quickly remove the container or the image. |
