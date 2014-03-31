class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
