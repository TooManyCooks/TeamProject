class AddPassword < ActiveRecord::Migration
  def change
  	add_column("doctors", "password", :varchar(45))
  end
end
