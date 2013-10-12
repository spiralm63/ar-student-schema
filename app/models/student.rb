require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here

# instructions:
# Create a class called Student (in the app/models/student.rb file) that meets the following requirements:
#    -- Given a Student model object, I should be able to easily retrieve her full name via a name method.
#    -- Given a Student model object, I should be able to easily know her age (in years) via an age method.
#    -- Don't overcomplicate this! From this user story, we can infer that
      # student.name would likely be the syntax to access the name method.
      # What can we infer is needed in the Student Class?

  def name
    self.first_name + " " + self.last_name
  end

  def age
    today = Date.today
    if birthday.month > today.month
      age = (today.year - birthday.year) - 1
    elsif birthday.month == today.month
      if birthday.day > today.day
        age = (today.year - birthday.year) - 1
      end
    else
      age = today.year - birthday.year
    end
  end

end




