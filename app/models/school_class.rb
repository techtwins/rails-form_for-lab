class SchoolClass < ActiveRecord::Base
  def school_model
    self.title + " | " + self.room_number.to_s
  end
end