class FixColumn < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :Password, :password
    end
  end
end
