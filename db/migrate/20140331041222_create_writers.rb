class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
