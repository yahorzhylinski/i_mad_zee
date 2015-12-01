class ProjectType < ActiveRecord::Base

  MAX_TYPE_NAME = 200

  has_many :feature_prices
  has_many :project_features, through: :feature_prices

  validates :type_name, presence: true, length: { maximum: MAX_TYPE_NAME }

end
