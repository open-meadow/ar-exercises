class Store < ActiveRecord::Base
  has_many :employees, dependent: :restrict_with_error
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carries_apparel, on: :create  

  def carries_apparel
    if (mens_apparel || womens_apparel)
      return true
    else
      errors.add(:mens_apparel, "please sell something")
      return false
    end
  end
end
