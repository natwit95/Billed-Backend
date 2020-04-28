class Bill < ApplicationRecord
    has_many :bill_contributors
    belongs_to :user
    # accepts_nested_attributes_for :bill_contributors
end
