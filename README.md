# Nomster

Nomster is a yelp clone that integrates with the PostgreSQL database, Ruby on Rails, HTML5, CSS, BootStrap, and the Google Maps API. The App includes features like updating places (focuses in particular restaurants), loading maps, user commenting each place, star rating the place, uploading the image to each place (Amazon S3), and user authentication.

<img src="app/assets/images/nomster.jpg">

### Prerequisites

What things you need to install the software:

* [VirtualBox]
* [PostgreSQL]


### Installation

First, download the project, move the project to vagrant folder, and start VirtualBox.

```sh
$ cd nomster
$ vagrant up
$ vagrant ssh
```

Then, run database migration

```sh
$ rake db:create
$ rake db:migrate
```

Start rails server on localhost

```sh
$ rails server -b 0.0.0.0 -p 3000
```

Open localhost in your browser, you will see Nomster web application running!

### Edit Project

You can edit this project by opening directory on your code editor and editing as you wish. 
