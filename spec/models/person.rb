class Person < ActiveNode::Base
  attribute :name, type: String
  attribute :multi
  timestamps

  has_many :people
  has_many :children, class_name: "Person"
  #has_many :sons, class_name: "Person"
  has_one :father, type: :child, direction: :incoming, class_name: "Person"
  has_one :address

  validates :name, uniqueness: true
end