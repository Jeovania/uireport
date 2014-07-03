class ChangeDefaultValue < ActiveRecord::Migration
  def change
  	add_column :users, :age, :integer,     :null => true
  end
end
