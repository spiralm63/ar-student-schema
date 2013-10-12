require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here

# code in this section was added later in the challenge, for "Validation Magic"
# Instructions:
#   Add validations to the Student model so that a student cannot be saved unless the following requirements are met:
#   -- Email addresses must contain at least one @ character and one . character, with at least one character before the @, one character between the @ and first ., and at least two characters after the final ..
#   -- Email addresses must be unique across all students.
#   -- Students must be at least 5 years old.

  validates :email, uniqueness: true, format: { with: /\w+@.\w+.{2,}/ }
  validates :age, :numericality => { :greater_than => 4 }

# More Advanced Validations
# Add another validation to the Student model so that a student cannot be saved unless the following requirement is met:
#   -- Phone numbers must contain at least 10 digits, excluding non-numeric characters.
validates :phone, length: { minimum: 10 , tokenizer: lambda { |str| str.scan(/\d/) }}


# instructions (these were actually the first things modified in file:
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




