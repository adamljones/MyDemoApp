class FixColumns < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :FirstName, :firstname
      t.rename :LastName, :lastname
      t.rename :Email, :email
      t.rename :BusinessCategory, :businesscategory
    end
  end
end
