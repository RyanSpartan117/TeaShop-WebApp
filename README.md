# Tea Stores
### Ryan Chapman

## What is Tea Stores  
Tea Stores is a handy site for helping you manage the location of tea stores, and what they sell. The site will give generate a google map location for you according to the postcode you've given it. It is a fully CRUD website.


## Adding your own local version

With SSH:

If you have git already installed on your computer, paste the following code into your terminal into your chosen folder:

```
git@github.com:RyanSpartan117/teaShop.git

```

with Https paste the following into your browser, download the ZIP from the green button on the right of the page and then unzip into your chosen folder.

```
https://github.com/RyanSpartan117/teaShop.git

```


## Running the application

You will need bash for this part. Once you've unzipped the file, locate it from your terminal and go to the root of the file. From there, you need to run the following commands:

```
bundle 
```

``` 
bundle update
```

Then run:

```
rackup
```
After that, go to your browser, and go to localhost:9393. Congratulations, your computer is now running as a server! At this stage, you won't be able to view all of the website as the database hasn't been setup yet.  

## Database setup  

Once you have Postgres [setup](http://postgresguide.com/), then run these commands in this order from the root of the app.  
``` 
rake db:drop
```  
``` 
rake db:create
```  
``` 
rake db:migrate
```  
``` 
rake db:seed
```  
db:drop is just a precautionary measure to make sure there isn't a database connected already. db:seed looks at the seeds.rb file and executes all of the Active Record commands to populate the database.

If you would like to change the database, you need to create a migration and run `rake db:migrate` again. To create a migration, you can use the `rake db:create_migration NAME="name_here"` command, where name_here represents the name of the migration. 

## Active Record

Active Record is the Object Relational Mapping (ORM) for Postgres. It proves a layer on top to deal with the interactions between your application and the database. It requires a different approach to setting up the file structure.  
Model-View-Controller (MVC) is still the go to architectural pattern to use, but needs to be set up slightly differently. There needs be a central file that 'requires' all the models and controllers together. In the application runner, we then use this file, a config file with the database credentials and used something called migrations to create a schema.  

Migrations are Active Records way to make the database. By giving it a command, such as create_table or add_column followed by a set of parameters, you can set up a whole database without using any SQL.

Although it's a bit troublesome to set up, it comes with many benefits:

* It has it's own CRUD methods already, so you don't have to define your own. 
* It generates the database for you, and allows you to edit it easily with simple commands.
* Relationships between tables are very easy to setup.
* Some Ruby gems rely on having Active Record installed. In this applications case- Geocoder.
* Deploying it to Heroku, a web based cloud, was a lot easier.  

## Heroku  

Heroku is a cloud platform that let me [host my webapp online](https://warm-shelf-16330.herokuapp.com/). This is the Heroku set up process:

[Sign up to heroku and install heroku command line interface](https://devcenter.heroku.com/articles/getting-started-with-nodejs#introduction)

Run the following commands:
```
heroku create
```  
``` 
git push heroku master
```  
```
heroku rake db:create
```  
``` 
heroku rake db:migrate
```  
```
heroku rake db:seed
```  
```
heroku open
```  




