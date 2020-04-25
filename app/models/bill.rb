class Bill < ApplicationRecord
    has_many :bill_contributors
    belongs_to :user
end
