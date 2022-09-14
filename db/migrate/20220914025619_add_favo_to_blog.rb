class AddFavoToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :favo, :integer, default: 0, null: false
  end
end
