class Error < ApplicationRecord
  validates :message, :date, :href, presence: true
end
