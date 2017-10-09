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

## Before you begin development (Branch management)

There are 2 main branches: master and develop. As a developer you should never touch master branch as it is used for production only. So, before you start developing:

1) cd to repository

2) run `git config core.hooksPath hooks`

3) run `chmod +x hooks/pre-commit`

4) run `chmod +x hooks/pre-push`

Following these steps will prevent you from commiting or pushing anything to master branch.

## Branch Management (in-depth)

<!-- Branches -->
<!-- Purpose w Branches -->
<!-- hooks explained -->
