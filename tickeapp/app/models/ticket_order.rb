class TicketOrder < ApplicationRecord
  has_many :tickettypes
  belongs_to :user
  has_many :events
end
