class Participant < ApplicationRecord
  belongs_to :training
  belongs_to :user

  validates :training, presence: true, uniqueness: {scope: :user, message: "deja ajouté à la liste"}
  validates :user, presence: true

  def self.to_csv
    attributes = %w{nom prenom phone}
    CSV.generate(headers: true) do |csv|
      csv << attributes
  
      all.each do |participant|
        csv << participant.user.attributes.values_at(*attributes)
      end
  
    end
end

end
