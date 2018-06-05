class Board < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates_presence_of :title, presence: true
end
