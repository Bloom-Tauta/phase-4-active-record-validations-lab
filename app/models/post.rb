class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    # validates :category, inclusion: {:in, message: "Fiction"} 
    validate :title_is_clickbait

    def title_is_clickbait
       if title == "True Facts"
        errors.add(:title, "Title cannot be True Facts")
       end
    end

end
