class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :carries_apparel, on: :create  

  def carries_apparel
    # # errors.add(:mens_apparel, "is not active") unless :mens_apparel?
    # puts :mens_apparel, ":men"
    # puts :womens_apparel, ":women"
    # puts mens_apparel, "men"
    # puts womens_apparel, "women"
    if (mens_apparel || womens_apparel)
      return true
    else
      errors.add(:mens_apparel, "no men's apparel")
      errors.add(:womens_apparel, "please sell something")
      return false
    end

  end
end
