class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Email
      t.string :Password
      t.string :BusinessCategory

      t.timestamps
    end
  end
end
