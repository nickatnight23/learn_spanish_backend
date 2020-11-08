class Api::V1::TopicsController < ApplicationController

    def index
        topics = Topic.all
        render json: TopicSerializer.new(topics)
    end

    def create
       topic = Topic.new(topic_params)
        if topic.save
            render json: TopicSerializer.new(topic), status: :accepted
        else
            render json: {errors: topic.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
    
        topic = Topic.find_by(id: params[:id])
        topic.destroy
        # head :no_content
    end
    def edit
        topic = Topic.find(params[:id])
      end
    
      def update
        topic.update(topic_params)
        if topic.save
          render json: topic, status: :accepted
        else
          render json: { errors: topic.errors.full_messages }, status: :unprocessible_entity
        end
      end

    private

    def topic_params
        params.require(:topic).permit(:title,:content, :category_id)

    end


end
