# BeatdApp Coding Challenge

This is a coding challenge BeatdApp has asked me to create during the interview process. 

Requirements:
 - End users must be able to record expenses by entering in the:
    - Name of the expense
    - Cost of the item purchased
    - Category of the purchase
 - End users must be able to delete expenses
 - End users must be able to view a list of all of their expenses
 - Create a `README.md` file that a developer can follow to run your project locally
 
 You can use the app by visiting https://beatdapp-challenge.herokuapp.com/ or by installing it on your local device(the steps are below).
 
 I have created a user with sample data you may use: (email: abc@gmail.com password: 123456789) or you can create your own. 

## Installation
1. Clone the repo to your machine 
    * In your terminal run  ```git@github.com:Gurshant/beatdAppChallenge.git``` or
    * Simply download the repo
2. Make sure ruby version: 2.6.3 and rails version: 6.0.0 is installed

3. Start the Rails App
    2. Install all dependencies
        * ``` bundle install```
    3. Migrate database
        * ```rails db:create ```
        * ```rails db:migrate ```
        * ```rails db:seed ```
    4. Start the server
         * ```rails s```
        
Note: The server is running on http://localhost:3000

## Technologies Used

* [Ruby on Rails](https://rubyonrails.org)

* [PostgreSQL](https://www.postgresql.org) - Database

* [Semantic UI](https://semantic-ui.com) - Styling  

