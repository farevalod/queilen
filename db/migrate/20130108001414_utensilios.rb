class Utensilios < ActiveRecord::Migration
  def up
  	create_table :utensilios do |u|
		u.string :name
		u.string :foto
		u.string :description
	end
  end

  def down
  	drop_table :utensilios
  end
end
