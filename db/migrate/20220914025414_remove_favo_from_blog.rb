class RemoveFavoFromBlog < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :favo, :integer
  end
end
