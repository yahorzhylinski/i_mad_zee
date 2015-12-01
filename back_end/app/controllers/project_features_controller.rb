class ProjectFeaturesController < ApplicationController

  CACHE_PATH_TO_FEATURES = "features_in_cache"
  TIME_TO_EXPIRE_FEATURES = 12.hours

  def index
    if !(features = Rails.cache.read(CACHE_PATH_TO_FEATURES))
      features = ProjectFeature.includes(project_prices: :project_types).all
      Rails.cache.write CACHE_PATH_TO_FEATURES, features, expires_in: TIME_TO_EXPIRE_FEATURES
    end
    render_success @projects, :ok
  end

end