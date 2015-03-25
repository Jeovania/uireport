class AddExemploToAdminQuestions < ActiveRecord::Migration
  def self.up
  	add_column :admin_questions, :exemplo, :text
    add_attachment :admin_questions, :image
  end

  def self.down
  	add_column :admin_questions, :exemplo, :text
    remove_attachment :admin_questions, :image
  end
end