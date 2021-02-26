class CreatePolitics < ActiveRecord::Migration[6.1]
  def change
    create_table :politics do |t|
      t.string :governor
      t.array :senator
      t.array :congressmen
      t.string :flag
      t.integer :electoral

    end
  end
end
