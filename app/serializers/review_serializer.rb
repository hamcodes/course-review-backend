class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :course_id
  belongs_to :course
end
