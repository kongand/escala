# Escala

This is a learning project regarding system infrastructure and scalability.

## Prerequisites

Ensure that you have [docker](https://www.docker.com/) and [docker-compose](https://docs.docker.com/compose/overview/) installed.
Check by running `docker -v` and `docker-compose -v` in terminal.

## Get started

1) `git clone https://github.com/kongand/escala.git`

2) `cd escala`

3) Create an .env file at the root of this project and copy-paste content from .env.example into it.

4) Install dependencies: `docker-compose run composer` (this may take a few minutes)

5) `docker-compose up`

6) The system is now up and running at [localhost](http://localhost)

From here on you can always boot up this system just by running `docker-compose up`
