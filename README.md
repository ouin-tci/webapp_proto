# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    - Rails 5.2.2
    - Ruby 2.4.4

* System dependencies

* Configuration

* Database creation
    

* Database initialization
    - rails db:migrate

* How to run the test suite
    - setup email ENV
    ```Shell
    export MAIL_ACCOUNT="your gmail account"
    export MAIL_ACCOUNT_PWD="you gmail account password"
    ```
    - https://myaccount.google.com/lesssecureapps
        - 安全性の低いアプリの許可: 有効
    - prepare
    ```Shell
    bundle install
    rails db:migrate
    ```
    - add first user via rails console
    ```Shell
    rails c
    ```
    ```Ruby
    User.create({:email=> 'youname@domain', :password=>'password', :created_by=>1, :updated_by=>1, :created_at=>DateTime.now, :updated_at=>DateTime.now, :password_confirmation=>'password'})
    
    #exit
    exit
    
    ```
    - start up server 
    ```Shell
    rails s
    ```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
