class Shirt < ActiveRecord::Base
  belongs_to :designer, class_name: "User"
  has_many :sales, class_name: "Purchase"
  has_many :purchasers, class_name: "User",through: :sales
end
