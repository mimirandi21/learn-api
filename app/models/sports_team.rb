class SportsTeam < ApplicationRecord
    validates_uniqueness_of :teamname
end
