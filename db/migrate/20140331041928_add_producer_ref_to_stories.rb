class AddProducerRefToStories < ActiveRecord::Migration
  def change
    add_reference :stories, :producer, index: true
  end
end
