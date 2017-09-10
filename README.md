# Escala

This is a learning project regarding system infrastructure and scalability.

## Prerequisites

Ensure that you have [docker](https://www.docker.com/) installed.

## Get started

1) `git clone https://github.com/kongand/escala.git`

2) Create an .env file at the root of this project and copy-paste content from .env.example into it.

3) `docker build -t escala .`

4) `docker run -p 8000:80 escala`

5) The system is now up and running at [http://localhost:8000/](http://localhost:8000/)

From here on you can always boot up this service just by running `docker run -p 8000:80 escala`
