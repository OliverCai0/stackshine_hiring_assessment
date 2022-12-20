class Workspace < ApplicationRecord
  extend FriendlyId

  has_many :workspace_members
  has_many :workspace_vendors
  friendly_id :code, use: :slugged

  enum status: {
         active: 0,
         inactive: 1,
       }

  def code
    Digest::SHA1.hexdigest self.id.to_s
  end
end
