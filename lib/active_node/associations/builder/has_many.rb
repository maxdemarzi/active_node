module ActiveNode::Associations::Builder
  class HasMany < CollectionAssociation #:nodoc:
    def macro
      :has_many
    end
  end
end
