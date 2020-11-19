class Note < ApplicationRecord
    validates :title, :priority, :detail, presence: true
end
