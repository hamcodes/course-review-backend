class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :image, :played, :international
end
