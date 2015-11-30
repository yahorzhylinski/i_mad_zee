class FeaturePrice < ActiveRecord::Base

  belongs_to :project_feature
  belongs_to :project_type

end
