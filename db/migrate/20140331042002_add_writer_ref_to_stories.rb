class AddWriterRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :writer, index: true
  end
end
