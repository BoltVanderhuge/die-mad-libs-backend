class User < ApplicationRecord
    has_many :text_entries
    has_many :mad_libs, through: :text_entries

    validates :name, uniqueness: true
    
end
