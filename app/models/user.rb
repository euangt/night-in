class User < ApplicationRecord
  belongs_to :group
  has_many :choices
  has_many :events
end
