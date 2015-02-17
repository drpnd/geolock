class Point < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 1, maximum: 40 },
  uniqueness: { case_sensitive: true }

end
