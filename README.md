# heroku-sinatra
A Sinatra template for Heroku (and heroku-docker!) with some extra goodies included.

This repository ~~rips~~ takes a page out of Heroku's book of "getting started" repositories; it provides a scaffold for a Sinatra app that you can run out of the box with standard Heroku tools. Heroku provides a couple of fantastic starting points for a variety of platforms on [GitHub][1], including a [Rails app][2]. This is just a Sinatra variation on the theme.

***caveat emptor:*** This repository includes a bunch of tools that I *personally* find useful. You probably have opinions of your own, and you may not want them!

* **RSpec** for behavior-driven design
* **Pry** for a better REPL
* **Guard** for filesystem-aware automation (in this case, of test running)

## Using Docker
Heroku's [heroku-docker plugin][3] is a fantastic way to get the best of both worlds: easy local development with Docker and (almost) foolproof production on Heroku. All you need to start is the [Heroku Toolbelt][4].

Make sure the plugin is installed:

    heroku plugins:install heroku-docker

Configure Docker and Docker Compose:

    heroku docker:init

And run the app locally:

    docker-compose up web

The app will now be available on the Docker daemon IP on port 8080.

To run one-off commands, ie. database migrations or and other rake tasks, you can open a shell instead of a web worker:

    docker-compose run shell
    # bundle exec rake -T

You can also use Docker to release to Heroku:

    heroku create
    heroku docker:release
    heroku open

## Contribute
Contributions are always welcome. Submit a pull request or send me an email with suggestions.

This project is released under the MIT license.

Jordan Ryan Reuter (<mailto:me@jreut.com>)

[1]: https://github.com/heroku
[2]: https://github.com/heroku/ruby-getting-started
[3]: https://github.com/heroku/heroku-docker
[4]: https://toolbelt.heroku.com/
