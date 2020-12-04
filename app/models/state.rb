class State < ApplicationRecord
scope :availables, -> { where(deleted_at: nil) }
end
