class Client < ApplicationRecord
  has_one :address
  belongs_to :job
  accepts_nested_attributes_for :address, allow_destroy: true

  def name
    self.first_name + " " + self.last_name
  end
end
