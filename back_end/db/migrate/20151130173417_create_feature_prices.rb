class CreateFeaturePrices < ActiveRecord::Migration
  def change
    create_table :feature_prices do |t|
      t.integer :project_type_id
      t.integer :project_feature_id
      t.timestamps null: false
    end

    add_foreign_key :feature_prices, :project_types
    add_foreign_key :feature_prices, :project_features
  end
end
