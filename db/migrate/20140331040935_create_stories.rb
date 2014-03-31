class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :nickname
      t.date :date
      t.time :time
      t.string :notes

      t.timestamps
    end
  end
end
