class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :prename
      t.string :email
      t.boolean :infomailings
      t.boolean :newsmailings
      t.boolean :jobmailings
      t.text :comments
      t.references :major, index: true
      t.references :minor, index: true

      t.timestamps
    end
  end
end
