class CreateEditors < ActiveRecord::Migration
  def change
    create_table :editors do |t|
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
