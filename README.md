# README
Creating todo'steps

name - what kind of todo
description - details of the todo

Todo'steps
Controller name = todos_controller.rb
Table name todos table - plural since lots of todos
Model name -todo.rb, class definition - Todo

To create a todo:

Initiate a new todo object
save the object to database
**remember using .new creates a new object but does not save it to the 
database**

you can use .create to impact database right away as long as there
are no errors

see video 11:53 for updating from Rails console

6.20.19

<!--adding resources :todo automatically put all the available resource routes -->
<!--into the app. Verified by placing resources :todos into-->
<!--routes.rb. Then adding /todos/new ( or todos/*whatever)-->
<!--to url in the browser. At this point should see Action controller-->
<!--exception error. Uninitialized constant TodosController-->

<!--This README would normally document whatever steps are necessary to get the-->
<!--application up and running.-->

<!--Things you may want to cover:-->

<!--* Ruby version-->

<!--* System dependencies-->

<!--* Configuration-->

<!--* Database creation-->

<!--* Database initialization-->

<!--* How to run the test suite-->

<!--* Services (job queues, cache servers, search engines, etc.)-->

<!--* Deployment instructions-->

<!--* ...-->
