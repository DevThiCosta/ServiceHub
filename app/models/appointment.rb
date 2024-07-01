class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :contractor
  belongs_to :service
end
