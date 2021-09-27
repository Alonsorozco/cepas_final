class Wine < ApplicationRecord
    has_many :blends
    has_many :strains, through: :blends
    has_many :wine_scores
    has_many :oenologists, through: :wine_scores

    accepts_nested_attributes_for :blends, reject_if: :all_blank
end
