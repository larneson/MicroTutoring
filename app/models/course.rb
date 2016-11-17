class Course < ActiveRecord::Base
    belongs_to :subject
    has_many :posts
    validates :number, presence: true, uniqueness: true
    validates :subject_id, presence: true
end
