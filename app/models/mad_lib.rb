class MadLib < ApplicationRecord
    has_many :text_entries
    has_many :users, through: :text_entries

end
