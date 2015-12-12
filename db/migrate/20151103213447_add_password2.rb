class AddPassword2 < ActiveRecord::Migration
  def change

  	add_column :doctors, :password, :string

  end
end
