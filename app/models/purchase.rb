class Purchase < ActiveRecord::Base
  belongs_to :shirt
  belongs_to :purchaser, class_name: "User"

end
