class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: { scope: :title}

  def to_s
    self.first_name + " " + self.last_name
  end
end
