kovai
=====

One place for all social networks


Simple website where users can create a public profile.
The backend will aggregate the data from all the social
networks of the user and display it in one place.

Quick setup
-----------
First you need to get api keys for the social network APIs.
Then you need to copy `keys/social_apis_template.yml` to `keys/social_apis.yml`.
Fill in the obtained API keys on the `keys/social_apis.yml`

From the project directory run the following commands

    $ bundle install
    $ rake db:setup
    $ rake db:populate
    $ rails s

Then you can visit the site by pointing the browser url to localhost:3000

License: MIT