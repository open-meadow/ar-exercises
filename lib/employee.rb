class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than_or_equal_to: 200}
  validates_associated :store
  
  before_create :create_password
  
  private
  def create_password
    # Source: https://stackoverflow.com/questions/88311/how-to-generate-a-random-string-in-ruby
    self.password = (0...8).map{ (65 + rand(59)).chr }.join
  end
end
