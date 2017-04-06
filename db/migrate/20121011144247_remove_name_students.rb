require_relative '../config'

# this is where you should use an ActiveRecord migration to

class RemoveNameStudents < ActiveRecord::Migration
  def change
    remove_column :students, :name, :string

  end
end
