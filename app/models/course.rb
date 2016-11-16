class Course < ActiveRecord::Base
    belongs_to :subject
    validates :name, presence: true, uniqueness: true
end
