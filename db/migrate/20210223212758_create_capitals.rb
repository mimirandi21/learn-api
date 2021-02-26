class CreateCapitals < ActiveRecord::Migration[6.1]
  def change
    create_table :capitals do |t|
      t.string :usstate
      t.string :abbr
      t.string :capital
      t.string :shape

    end
  end
end
