class Blog < ApplicationRecord
  belongs_to :user
  
  def self.search(search)
      if search
          Blog.where(tag: search)
      else
          Blog.all
      end
  end
end
