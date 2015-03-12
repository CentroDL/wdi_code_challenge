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

`$ Prediction.email( first_name, last_name, @company_domain.com )`

Example I/O:

`$ Prediction.email("Dennis","Liaw","ironthrone.com")`

	$ "dennis.liaw@ironthrone.com"

`$ Prediction.email("Robb","Stark","direwolves.com")`

	"robb.s@direwolves.com"

# The Approach

I approached this problem by writing a Prediction class with an email method that takes in a user's first name, last name, and company domain, and generates a possible email. Tests were written with rspec to match possible emails to patterns established in pre existing data.

Right now the method looks at hard coded values for each domain in the pre existing data. A more scalable way would be to have each domain name as a hash key that can reference the appropriate method.


