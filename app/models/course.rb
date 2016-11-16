class Course < ActiveRecord::Base
    belongs_to :subject
    validates :number, presence: true, uniqueness: true
    validates :subject_id, presence: true
end
