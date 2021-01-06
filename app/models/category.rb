class Category < ApplicationRecord
  self.data = [
    {id:1,neme:'---'},
    {id:2,name:''}
  ]
  
  include ActiveHash::Associations
  has_many :articles
end
