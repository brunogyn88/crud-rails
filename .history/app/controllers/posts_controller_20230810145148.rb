class PostsController < ApplicationController
    def index
        @posts = Post.order(created_at: :desc)
        render json: @posts
    end

    def created_at
        @post = Post.new post_params

        if @posr.save
            render json: @post, status: :created
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end

    private

    def post_params
        
    end
end
