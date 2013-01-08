class Addfototopapas < ActiveRecord::Migration
  def up
	add_column :papas, :foto, :string
  end

  def down
  end
end
