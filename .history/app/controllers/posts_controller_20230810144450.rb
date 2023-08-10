class PostsController < ApplicationController
    def index
        @posts = Post.order(created_at: :desc)
        render json: @posts
    end

    def created_at
        @post = Post.new

        if @posr.save
            render json: @post
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end
end
