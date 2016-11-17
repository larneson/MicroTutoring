class ChangePostSubjectIdToCourseId < ActiveRecord::Migration
  def change
    rename_column :posts, :subject_id, :course_id
  end
end
