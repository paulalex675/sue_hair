class Client < ApplicationRecord
  has_many :addresses
  has_and_belongs_to_many :jobs
  belongs_to :user
  accepts_nested_attributes_for :addresses, allow_destroy: true

  def name
    self.first_name + " " + self.last_name
  end
end
