class CreateMachineLearnings < ActiveRecord::Migration
  def change
    create_table :machine_learnings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
