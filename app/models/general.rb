class General < ApplicationRecord
    validates_uniqueness_of :abbr
end
