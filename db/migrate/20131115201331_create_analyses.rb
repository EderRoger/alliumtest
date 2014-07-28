class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :description

      t.timestamps
    end
  end
end
