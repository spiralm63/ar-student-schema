require_relative '../config'

class ChangeStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
  end

end
