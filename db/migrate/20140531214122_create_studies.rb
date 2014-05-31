class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :name
      t.integer :ECTS
      t.references :field, index: true
      t.references :degree, index: true

      t.timestamps
    end
  end
end
