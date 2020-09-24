class Participant < ApplicationRecord
  belongs_to :training
  belongs_to :user

  validates :training, presence: true, uniqueness: {scope: :user, message: "deja ajouté à la liste"}
  validates :user, presence: true
end
