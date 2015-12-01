class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.string :type_name
      t.timestamps null: false
    end
  end
end
