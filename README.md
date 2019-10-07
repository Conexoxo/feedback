# Plataforma para realizar feedback a profesores
ICF244 Arquitectura de Sistemas - Tarea 1: Comunidad UNAB

[Demo en Heroku >>](https://feedback-qa.herokuapp.com/)

* Usuario de prueba: alumno
* Clave de prueba: alumno123

## Dependencies
* Rails 6.0.0:
```Rails
  gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  sudo apt install curl
  \curl -sSL https://get.rvm.io | bash
  \curl -sSL https://get.rvm.io | bash -s stable --rails
  rails --v
```

* Ruby 2.6.5:

Using rbenv:
```Ruby
  rbenv install 2.6.5
```
Using RVM:
```Ruby
  rvm install ruby-2.6.5
  rvm use ruby-2.6.5
```

* Docker:
```Docker
sudo apt install docker-compose
```
[Docker installation](https://docs.docker.com/install/)

[Docker-compose installation](https://docs.docker.com/compose/install/)

## Usage
To use:
```Docker
docker-compose build
docker-compose run web rails db:create
docker-compose run web rails db:migrate
docker-compose run web rails db:seed
docker-compose up
```

Open rails console:
```Docker
docker-compose run web rails c
```

Reset db:
```Docker
docker-compose run web rails db:drop
```

To initialize docker apps:
```Docker
docker-compose run web rails new . --force --no-deps --database=postgresql
```

Now when you modify Gemfile, you have to sync changes in Gemfile.lock using:
```Docker
docker-compose run web bundle install
docker-compose up --build
```

## Known Issues
1) To fix "Error installing pg: ERROR: Failed to build gem native extension." :
```Fix
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev postgresql-client-common postgresql-client libpq-dev
```

2) To fix "Webpacker::Manifest::MissingEntryError - Webpacker can't find application in /feedback/public/packs/manifest.json" and "[Webpacker] Compilation failed: web_1  | /usr/local/bundle/gems/webpacker-4.0.7/lib/webpacker/runner.rb:13:in `': No such file or directory - yarn (Errno::ENOENT) web_1  |     from /usr/local/bundle/gems/webpacker-4.0.7/lib/webpacker runner.rb:13:in" :
```Fix
  bundle exec rake assets:precompile
```

3) To fix "Cannot start service db: driver failed programming external connectivity on endpoint feedback_db_1 (): Error starting userland proxy: listen tcp 0.0.0.0:5432: bind: address already in use" :
```Fix
  sudo service postgresql stop
```

## Authors
* **Pedro Conejera** - *2019* - [PedroConejera](https://github.com/PedroConejera)
* **Gonzalo Manquilef** - *2019* - [GonzaloManquilef](https://github.com/GonzaloManquilef)
* **Luciano Huenuvil** - *2019* - [LucianoHuenuvil](https://github.com/lucianohuenuvil)
