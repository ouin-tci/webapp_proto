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
    - export MAIL_ACCOUNT="your gmail account"
    - export MAIL_ACCOUNT_PWD="you gmail account password"
    - https://myaccount.google.com/lesssecureapps
        - 安全性の低いアプリの許可: 有効
    - bundle install
    - rails c
    - 
    ``` User.create({:email=> 'ou.yun1@tci-cn.co.jp', :password=>'password', :created_by=>1, :updated_by=>1, :created_at=>DateTime.now, :updated_at=>DateTime.now, :password_confirmation=>'password'})
    
    ```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
