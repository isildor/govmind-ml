class CreateMls < ActiveRecord::Migration
  def change
    create_table :mls do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
