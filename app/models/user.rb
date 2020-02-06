class User < ApplicationRecord
  # Direct associations

  has_many   :posts,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
