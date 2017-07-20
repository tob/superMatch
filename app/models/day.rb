class Day < ApplicationRecord
  has_many :pairs
  belongs_to :period
end
