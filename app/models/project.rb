class Project < ApplicationRecord
    has_and_belongs_to_many :workers
    validates :name, presence: true
end