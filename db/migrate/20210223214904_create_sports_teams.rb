class CreateSportsTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :sports_teams do |t|
      t.string :teamname
      t.string :abbr
      t.string :league
      t.string :homefield
      t.string :logo
      t.string :website

    end
  end
end
