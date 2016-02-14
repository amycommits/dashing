class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :accession_number
      t.string :title

      t.timestamps null: false
    end
  end
end
