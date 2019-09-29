# Plataforma para realizar feedback a profesores
ICF244 Arquitectura de Sistemas - Tarea 1: Comunidad UNAB

[Demo en Heroku >>](https://trello.com/b/BP7z3o5H/grupo9registro-de-accionistas)

* Usuario de prueba: alumno
* Clave de prueba: alumno123

## Installation
Rails:
```Rails
  gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  sudo apt install curl
  \curl -sSL https://get.rvm.io | bash
  \curl -sSL https://get.rvm.io | bash -s stable --rails
```
Docker:
```Docker
sudo apt install docker-compose
```
[Docker install](https://docs.docker.com/install/)
[Docker-compose install](https://docs.docker.com/compose/install/)

## Known Issues
To fix "Error installing pg: ERROR: Failed to build gem native extension."
```Fix
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev postgresql-client-common postgresql-client libpq-dev
```

## Usage
To use:
```Docker
docker-compose run web rails new . --force --no-deps --database=postgresql
```

## Authors
* **Pedro Conejera** - *2019* - [PedroConejera](https://github.com/PedroConejera)
* **Gonzalo Manquilef** - *2019* - [GonzaloManquilef](https://github.com/GonzaloManquilef)
* **Luciano Huenuvil** - *2019* - [LucianoHuenuvil](https://github.com/lucianohuenuvil)
