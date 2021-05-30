class Book < ApplicationRecord
    has_one_attached :featured_image
    has_rich_text :content

    validates_presence_of :title, :description 
end
