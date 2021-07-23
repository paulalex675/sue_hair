class Job < ApplicationRecord
  has_many :clients
  has_many :expenses
end
