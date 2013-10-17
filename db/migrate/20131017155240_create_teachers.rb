require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |t|
      t.string  :name
      t.string  :gender
      t.date    :birthday
      t.string  :email
      t.string  :phone
    end
  end
end

# rspec spec/migrate_create_table_spec.rb
