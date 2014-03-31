class AddStatusRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :status, index: true
  end
end
