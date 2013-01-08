class Modifypapas < ActiveRecord::Migration
  def up
  	change_column :papas, :description, :text
  end

  def down
  end
end
