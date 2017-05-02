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


