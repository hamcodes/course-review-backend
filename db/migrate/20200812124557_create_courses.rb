class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.string :image
      t.boolean :played
      t.boolean :international

      t.timestamps
    end
  end
end
