class TextEntry < ApplicationRecord
  belongs_to :mad_lib
  belongs_to :user
end
