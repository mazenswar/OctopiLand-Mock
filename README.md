# Octopi Land Mock Challenge

# Rails Assessment

It's time to put our Rails know-how to use.

## Objectives

- MVC
- REST
- Form/Form Helpers
- ActiveRecord
- Remember to breathe!

## Setup

Before you begin, fork and clone this repo. Then run `bundle install`, `rails db:migrate` and `rails db:seed` to get started.

## The Domain

Octopi Land is a fictional app where an Octopus can own many items and an Item can have many Octopi. In this app, we will want to see all the Octopi, all the items and be able to give a specific Octopi a new item!

## Instructions / Deliverables

**_To help you complete this assignment we listed the high level steps required to complete this assignment. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one._**

1. Create the associations between the models. You may have to alter the current schema to get your code working.

2. On the Octopi index page, each octopus should show it's image and name. Clicking on the octopus' name should take you to its show page.

3. The octopus show page should include the octopus' name and a list of all the items that belong to it. Each item should link to that item's show page.

4. On the items index page, each item should show its image and name. Clicking on the item's name should take you to its show page.

5. The item show page should display its image, name and a list of all the octopi that own that item.

6. As a visitor to the website, I should be able to create an association between an existing octopus an existing item.

   HINT:
   https://apidock.com/rails/ActionView/Helpers/FormOptionsHelper/collection_select

## BONUS:

1. Make a form to create a new octopus.
2. Make a form to create a new item.
