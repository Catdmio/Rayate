class Event < ApplicationRecord
	belongs_to :user
	belongs_to :tattooer , foreign_key: :tattooer_id, class_name: "User"
end
