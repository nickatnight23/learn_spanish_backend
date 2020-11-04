class TopicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :category_id, :category, :id
end
