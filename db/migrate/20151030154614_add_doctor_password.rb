class AddDoctorPassword < ActiveRecord::Migration
  def up
    add_column("doctors", "password", :string)
  end

  def down
    remove_column("doctors", "password")
  end
end
