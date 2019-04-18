class Profile < ApplicationRecord
  belongs_to :user
  
  before_save :assign_balance
  
  
  #This is the user's balance. This needs to detect where data was added to the table and how much of it was added in order to apply more points appropriately. 
  #Points will be as follows: 
  #Survey completion: +5
  #Locations visited: +10
  #Purchases made: +15
  
  protected
  def assign balance
    balance = self.balance || 0
    
    balance += 5 if submissions.category = ('survey')
    balance += 10 if submissions.category = ('location')
    balance += 15 if submissions.category = ('purchase')
    
    #Example of a purchase being made:
    #balance -= 100 if transaction.item = ('xboxlive')
    
    self.balance = balance
  end 
  
end