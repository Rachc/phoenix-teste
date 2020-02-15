FROM elixir:1.9.4

# Install debian packages
RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client

# Install node
# RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
# RUN bash nodesource_setup.sh
# RUN apt-get install nodejs

# Install Phoenix packages
RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR /app
COPY mix.exs mix.lock /app/

RUN mix deps.get --force

COPY . /app

EXPOSE 4000
