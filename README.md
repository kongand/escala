# Escala

This is a learning project regarding system infrastructure and scalability.

## Prerequisites

Ensure that you have [docker](https://www.docker.com/) and [docker-compose](https://docs.docker.com/compose/overview/) installed.
Check by running `docker -v` and `docker-compose -v` in terminal.

## Get started

1) `git clone https://github.com/kongand/escala.git`

2) Create an .env file at the root of this project and copy-paste content from .env.example into it.

3) `cd escala`

3) Install dependencies: `docker-compose run composer` (this may take a few minutes)

4) `docker-compose up`

5) The system is now up and running at [localhost](http://localhost)

From here on you can always boot up this system just by running `docker-compose up`
