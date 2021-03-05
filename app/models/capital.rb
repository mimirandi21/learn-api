class Capital < ApplicationRecord
    validates_uniqueness_of :abbr, :usstate
end
