class ArticleSerializer
  include JSONAPI::Serializer

  # By default jsonapi_serializer will try to figure the type based on the
  # name of the serializer class. For example class MovieSerializer will
  # automatically have a type of :movie. If your serializer class name does not
  # follow this format, you have to manually state the set_type at the
  # serializer.
  set_type :articles
  attributes :title, :content, :slug
end
