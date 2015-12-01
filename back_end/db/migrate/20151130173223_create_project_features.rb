class CreateProjectFeatures < ActiveRecord::Migration
  def change
    create_table :project_features do |t|
      t.string :name
      t.string :description
      t.timestamps null: false
    end
  end
end
