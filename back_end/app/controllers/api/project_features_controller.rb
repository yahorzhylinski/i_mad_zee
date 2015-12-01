class Api::ProjectFeaturesController < Api::BaseController

  PATH_TO_FEATURES = "cache_features"
  TIME_TO_EXPIRE = 12.hours

  def index 
    project_features = nil
    if !(project_features = Rails.cache.read(PATH_TO_FEATURES))
      project_features =  ProjectFeature.includes(feature_prices: :project_types).all
      Rails.cache.write(project_features, PATH_TO_FEATURES, expires_in: TIME_TO_EXPIRE)
    end

    success_response project_features
  end
end