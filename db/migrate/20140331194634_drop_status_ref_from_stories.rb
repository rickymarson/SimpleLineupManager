class DropStatusRefFromStories < ActiveRecord::Migration
  def change
  	remove_reference :stories, :status
  end

end
