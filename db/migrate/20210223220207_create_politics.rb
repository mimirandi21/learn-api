class CreatePolitics < ActiveRecord::Migration[6.1]
  def change
    create_table :politics do |t|
      t.string :abbr
      t.string :governor
      t.string :senator, array: true, default: []
      t.string :congressmen, array: true, default: []
      t.string :flag
      t.integer :electoral

    end
  end
end
