class WorkspaceMember < ApplicationRecord
  belongs_to :workspace

  has_person_name
  has_secure_password
end
