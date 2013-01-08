class Papas < ActiveRecord::Migration
  def self.up
	  create_table :papas do |p|
		  p.string :name 
		  p.string :description
		  p.string :cook_time
		  p.string :taste
		  p.string :cook_mode
		  p.string :good_for
	  end
  end

  def self.down
	  drop_table :papas
  end
end
