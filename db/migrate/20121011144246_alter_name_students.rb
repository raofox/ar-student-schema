require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AlterNameStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    
  end
end
