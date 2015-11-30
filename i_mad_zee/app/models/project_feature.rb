class ProjectFeature < ActiveRecord::Base

  MAX_LENGTH_NAME = 200
  MAX_LENGTH_DESCRIPTION = 200

  has_many :feature_prices
  has_many :project_types, through: :feature_prices

  validates :name, presence: true, length: { maximum: MAX_LENGTH_NAME }
  validates :description, presence: true, length: { maximum: MAX_LENGTH_DESCRIPTION }

end
