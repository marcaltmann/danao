class Source < ApplicationRecord
  has_many :thoughts, dependent: :destroy
end
