# Crowdfunder

This is a group project for creating a crowd funding application.

* Ruby Version 2.2.0
* Uses Postgres DB

# Current Features
As a Project Owner, I want to be able to create a new project with a title and a description

As a Project Owner, I want to set a goal for my project

As a Project Owner, I want to set a funding period (start date, finish date) for my project

As a Project Owner, I want the ability to set funding rewards with a description of what backers will receive for each reward

As a Backer, I want to see all of the projects that I have backed

As a Backer, I want to see who the owner of a project is

As a Project Owner, I want to see how many people have funded my project at each reward

# Thursday's Features

As a Backer, I want to be able to back a project at a certain reward
    - should be able to click on a reward and have it submitted with no page refresh
    -  once submitted, upon success, the amount raised should update
    TO DO: 
        - Mockup the user flow to determine what we have to code

As a Project Owner, I want to see how many days are left before my project is done
    TO DO:
        - Mockup the user profile to feature
            + Projects owned by user
                * sorting by soonest end date
                * hightlight the end date and the % of goal
                * showing total $ raised
            + Projects Backed By user
                * what rewards they get
                * the projects %
            + Possibly use tabs and ajax to sort this data

Add Pictures to Project Page
    - use picture as background on a jumbotron
Add user profile picture


As a Backer, When viewing a project, it should be very clear whether I have backed the project or not

As a Backer, I want to see the total amount of money I have spent on projects

# Friday's Goals

As a Project Owner, To help people find my project, I want the ability to add it to a category
    - As a Backer, I want to be able to see all projects in a particular category

As a Project Owner, To help people find my project, I want the ability to add various tags to my project
    - As a Backer, I want the ability to see all the projects associated with a particular tag

As a Backer, I want to be able to leave comments on a project
    - The comment should be submitted via AJAX
    - As a Backer, I want the ability to leave comments on a project owner
    - The comment should be submitted via AJAX

As a Backer, I want to be notified when any projects I am backing meet their goal and are fully funded
     - Mailer? Notifications


