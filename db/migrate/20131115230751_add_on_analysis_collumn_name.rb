class AddOnAnalysisCollumnName < ActiveRecord::Migration
  def change
    add_column :analyses, :name, :string
  end
end
