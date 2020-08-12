class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :course_id

      t.timestamps
    end
  end
end
