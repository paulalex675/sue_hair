class Job < ApplicationRecord
  has_and_belongs_to_many :clients
  belongs_to :service
  belongs_to :user
end
