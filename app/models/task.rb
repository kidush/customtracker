class Task
  include Mongoid::Document
  field :name, type: String
  field :started_at, type: DateTime
  field :finish_at, type: DateTime
end
