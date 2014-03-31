class AddStartTimeToStories < ActiveRecord::Migration
  def change
    add_column :stories, :start_time, :datetime
  end
end
