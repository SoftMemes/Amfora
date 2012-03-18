class PostsController < ApplicationController
  def index
    @tests = Post.all

    respond_to do |format|
      format.json { render json: @tests }
    end
  end

  def show
    @test = Post.find(params[:id])

    respond_to do |format|
      format.json { render json: @test }
    end
  end

  def replies
    @test = Post.find(params[:id])

    respond_to do |format|
      format.json { render json: @test.replies }
    end
  end
end
