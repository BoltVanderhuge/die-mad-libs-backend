class User < ApplicationRecord
    has_many :text_entries, dependent: :delete_all
    has_many :mad_libs, through: :text_entries, dependent: :delete_all

    validates :name, uniqueness: true

end
