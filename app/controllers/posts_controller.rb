class PostsController < ApplicationController
    def new
    end

    def create
        subject = Subject.find_by(name: params[:post][:subject])
        if subject == nil
          redirect_to root_path
        end
        course = Course.find_by(number: params[:post][:course], subject_id: subject)
        if course == nil
          redirect_to root_path
        end
        post = Post.new(
          :title => params[:post][:title],
          :course_id => course.id,
          :description => params[:post][:description],
          :bounty => params[:post][:bounty].to_i,
          :user_id => current_user.id,
          :user_email => current_user.email)
         post.save
          #flash isn't working rn but at least it doesn't error
         redirect_to courses_show_path(course.id)
    end

    def delete
        post = Post.find(params[:id])
        course = Course.find_by(id: post.course_id)
        post.destroy
        redirect_to courses_show_path(course.id)
    end
end
