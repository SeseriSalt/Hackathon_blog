class AddTagToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :tag, :string
  end
end
