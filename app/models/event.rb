class Event < ApplicationRecord
  belongs_to :venue
  has_many :ticket
end
