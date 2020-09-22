class Participant < ApplicationRecord
  belongs_to :session
  belongs_to :user

  validates :session, presence: true, uniqueness: {scope: :user, message: "deja ajouté à la liste"}
  validates :user, presence: true
end
