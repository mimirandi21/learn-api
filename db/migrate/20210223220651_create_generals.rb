class CreateGenerals < ActiveRecord::Migration[6.1]
  def change
    create_table :generals do |t|
      t.string :abbr
      t.date :year
      t.integer :order
      t.string :motto
      t.string :nickname, array: true, default: []
      t.integer :population
      t.integer :poprank
      t.integer :size
      t.integer :sizerank
      t.string :largestcity
      t.string :website
      t.string :bird
      t.string :birdimg
      t.string :flower
      t.string :flowerimg
      t.string :tree
      t.string :treeimg

    end
  end
end
