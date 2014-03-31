class AddThemeRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :theme, index: true
  end
end
