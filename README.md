**Email Prediction**

This is a proposed solution to the following code challenge presented here:

https://gist.github.com/h4w5/a4a3747c0368fcdec044


**Prerequisites:**

Ruby, and RSpec

gem install rspec

*To Run Tests*

In Terminal:

$rspec

*To run Methods*

Load your preferred ruby environment i.e. irb or pry

$ irb/pry: load 'prediction.rb'

$ Prediction.email( first_name, last_name, @company_domain.com )

ex: Prediction.email("Dennis","Liaw","ironthrone.com")
=> "dennis.liaw@ironthrone.com"
ex: Prediction.email("Robb","Stark","direwolves.com")
=> "robb.s@direwolves.com"

**The Approach**

I approached this problem by writing a Prediction class with an email method that takes in a user's first name, last name, and company domain, and generates a possible email. Tests were written with rspec to match possible emails to patterns established in pre existing data.


