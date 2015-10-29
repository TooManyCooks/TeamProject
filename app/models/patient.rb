class Patient < ActiveRecord::Base
  belongs_to :doctor
  validates :content, length: { maximum: 140 }
end
