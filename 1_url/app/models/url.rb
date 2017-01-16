class Url < ActiveRecord::Base
  # Remember to create a migration!
  before_create: new_url
  validates :long_url, presence: true
  validates_format_of :url, :with => URI::regexp
  # validates :long_url, format: {:with URI.regexp},
  # allow_blamk: true

  def new_url

  end
  
end
