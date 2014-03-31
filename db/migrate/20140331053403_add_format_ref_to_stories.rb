class AddFormatRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :format, index: true
  end
end
