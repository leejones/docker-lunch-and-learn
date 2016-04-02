# Docker Lunch and Learn

## Setup

Dependencies:

* Git
* Docker

Build the docker image:

```bash
git clone https://github.com/leejones/docker-lunch-and-learn.git
docker build -t docker-lunch-and-learn .
```

## Running the presentation

```bash
docker run \
  -i \
  -p 8000:8000 \
  --rm \
  -t \
  -v $PWD/images:/reveal.js/images \
  -v $PWD/index.html:/reveal.js/index.html \
  -v $PWD/slides:/reveal.js/slides \
  leejones/docker-lunch-and-learn
```

That will run the container in the foreground. Hit `ctl+c` when you are ready to stop the presentation. The presentation should be available on port 8000 of your docker host. If you are using docker-machine, you can find the docker host ip with the following command (assuming your docker-machine is named "default"):

```bash
docker-machine ip default
```

A shortcut to open that in your browswer:

```bash
open "http://$(docker-machine ip default):8000"
```
