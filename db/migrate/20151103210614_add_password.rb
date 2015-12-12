class AddPassword < ActiveRecord::Migration
  def change
  	add_column("doctors", "password", :string)
  end
end
