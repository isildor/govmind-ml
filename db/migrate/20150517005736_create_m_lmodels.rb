class CreateMLmodels < ActiveRecord::Migration
  def change
    create_table :m_lmodels do |t|

      t.timestamps null: false
    end
  end
end
