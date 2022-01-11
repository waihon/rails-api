# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Terminal Commands

### 4. Article Model

* `rails g model article title content:text slug`
* `rails db:migrate`

### 11. Articles List Routing

* `rails routes -g articles`

### 16. Article Serialization

* `rails g serializer Article title content slug`

### 23. Create User Model

* `rails g model user login name url avatar_url provider`
* `rails db:migrate`

### 24. Octokit Integration

#### Terminal
* `GITHUB_TOKEN='githubpersonalaccesstoken' rails c`

#### Rails Console
* `client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'])`
* `client.user`
