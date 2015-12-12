class AddPasswordDigest < ActiveRecord::Migration
  def change
  	rename_column :doctors, :password, :password_digest
  end
end
