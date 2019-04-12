class ProfileController < ApplicationController
  
  belongs_to :user
  
  before_save :assign_balance
  
  def profile
  end
  
  protected
  def assign balance
    balance = self.balance || 0
    
    self.balance = balance
  end 
  
end
