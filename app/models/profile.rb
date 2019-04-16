class Profile < ApplicationRecord
  belongs_to :user
  
  before_save :assign_balance
  
  protected
  def assign balance
    balance = self.balance || 0
    
    self.balance = balance
  end 
  
end