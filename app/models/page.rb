class Page < ActiveRecord::Base
  def to_s
    shortname
  end
end
