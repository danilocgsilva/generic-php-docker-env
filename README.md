# Generic PHP docker environment

**Note:** to make stuffs works, copy the `.env.example` to a `.env`. If required, you may change the values in `.env` file.

Run the command: `docker-compose up --build`

This application builds a basic php environment with a relational database. Propper to install application like Wordpress, Laravel, Symfony, Drupal, etc.

* The database credentials can be found in the `docker-compose.yml` file in the project root folder.
* Check out details from environment, like Linux distro in which this project has been based, as well php version and it's installed extensions.
