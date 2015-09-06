class Address < ActiveRecord::Base
  belongs_to :user
   validates :name,  presence: true, length: { maximum: 50 }
   validates :email,  presence: true, length: { maximum: 50 }
   validates :business_phone,  presence: true, length: { maximum: 50 }
end
