require 'date'

  def age(birthday)
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


  janeday = Date.parse('Nov 6 1963')
  p age(janeday)

  julieday = Date.parse('June 30 1968')
  p age(julieday)


# rspec spec/migrate_create_table_spec.rb
