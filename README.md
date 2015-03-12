[![Build Status](https://travis-ci.org/CentroDL/wdi_code_challenge.svg?branch=master)](https://travis-ci.org/CentroDL/wdi_code_challenge)

#Email Prediction

This is a proposed solution to the following code challenge presented [here](https://gist.github.com/h4w5/a4a3747c0368fcdec044).


###Prerequisites

You'll need Ruby and RSpec installed:

`gem install rspec`

#### To Run Tests

In Terminal:

`$ rspec`

#### To run Methods

Load your preferred ruby environment i.e. irb or pry

`$ irb/pry: load 'lib/prediction.rb'`

`$ jon = Prediction.new( first_name, last_name, @company_domain.com )`

`$ jon.email `

Example I/O:

`$ dennis = Prediction.new("Dennis","Liaw","ironthrone.com")`

`$ dennis.email`

	=> "dennis.liaw@ironthrone.com"

`$ rob = Prediction.new("Robb","Stark","direwolves.com")`

`$ rob.email`

	=> "robb.s@direwolves.com"

# The Approach

I approached this problem by writing a Prediction class that takes in a user's first name, last name, and company domain in it's constructor, and an email method that returns all possible emails. Tests were written with rspec to match possible emails to patterns established in pre existing data.

Right now the method looks at hard coded values for each domain in the pre existing data. A more scalable way would be to have each domain name as a hash key that can reference the appropriate method. There was also some ambiguity in how to approach a case in which there is now pre-existing email domain, so we call a method 'all_possible_emails' that generates an array of all possible emails but it's compartmentalized in it's own method and can be edited as needed, whether to order by precedence or change format to be more readable, reducing the amount of code an end user would need.


