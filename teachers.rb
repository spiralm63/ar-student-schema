require_relative 'app/models/teacher'

Teacher.create(name: 'Mike Barr', gender: 'male', birthday: '11/02/1950',
             email: 'mikebar@whereever.com', phone: '2223456789')


Teacher.create(name: 'Jane Carr', gender: 'male', birthday: '11/02/1950',
             email: 'jane@stuff.com', phone: '2223450000')

Teacher.create(name: 'Bugs Bunny', gender: 'male', birthday: '11/02/1936',
             email: 'bugs@carrotheaven.com', phone: '2223456789')
      # t.string  :name
      # t.string  :gender
      # t.date    :birthday
      # t.string  :email
      # t.string  :phone
