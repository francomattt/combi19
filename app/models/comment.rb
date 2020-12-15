class Comment < ApplicationRecord
    belongs_to :ticket
    validates :name, presence: true
    validates :score, presence: true
    validates :content, presence: true
end
