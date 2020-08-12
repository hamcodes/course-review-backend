class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :course_id
end
