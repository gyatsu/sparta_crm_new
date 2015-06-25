class RemoveFamilyNameAndGivenNameToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :family_name, :string
    remove_column :users, :given_name, :string
  end
end
