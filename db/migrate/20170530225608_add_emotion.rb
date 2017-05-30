class AddEmotion < ActiveRecord::Migration[5.0]
  def change
    add_column(:posts, :emotion, :text)
  end
end
