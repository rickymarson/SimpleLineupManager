class AddEditorRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :editor, index: true
  end
end
