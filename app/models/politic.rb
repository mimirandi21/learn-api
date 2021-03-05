class Politic < ApplicationRecord
    validates_uniqueness_of :abbr
end
