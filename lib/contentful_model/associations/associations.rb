# A module to map relationships, a little like ActiveRecord::Relation
# This is necessary because Contentful::Link classes are not 2-way, so you can't
# get the parent from a child.
module ContentfulModel
  module Associations
    def self.included(base)
      base.send :include, HasMany
      base.send :include, HasOne
      base.send :include, BelongsTo
      base.send :include, BelongsToMany
      base.send :include, HasManyNested
    end
  end
end
