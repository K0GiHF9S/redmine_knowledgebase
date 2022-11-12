class AddRatingsToArticles < Rails.version < '5.1' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  require File.expand_path('../../../lib/acts_as_rated', __FILE__)

  def self.up
    ActiveRecord::Base.create_ratings_table :with_rater => false
  end

  def self.down
    ActiveRecord::Base.drop_ratings_table
  end
end
