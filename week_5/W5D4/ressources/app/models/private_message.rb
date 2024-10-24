class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "Uzer"
  belongs_to :recipient, class_name: "Uzer"
end
