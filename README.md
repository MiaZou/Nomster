# README

Nomster

<img src="image/nomster.png" >

Heroku: https://nomster-mia-zou.herokuapp.com

A yelp clone that integrates with the PostgreSQL database, Ruby on Rails, HTML5, CSS, BootStrap, and the Google Maps API. The App includes features like updating places (focuses in particular restaurants), loading maps, user commenting each place, star rating the place, uploading the image to each place (Amazon S3), and user authentication. 

Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

Prerequisites

What things you need to install the software and how to install them
VirtualBox, PostgreSQL

Installing

First, download the project, move the project to vagrant folder, and start VirtualBox: 
$ cd nomster
$ vagrant up
$ vagrant ssh

Then, run database migration: 
$ rake db:migrate

Start rails server on localhost: 
$ rails server -b 0.0.0.0 -p 3000

Open localhost in your browser http://localhost:3030/. You will see Nomster web application running.

Edit Project
You can edit this project by opening directory on your code editor and editing as you wish.
