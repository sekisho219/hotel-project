class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.integer :rate
      t.text :body
      t.datetime :time

      t.timestamps
    end
  end
end
