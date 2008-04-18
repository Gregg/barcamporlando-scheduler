class Talk < ActiveRecord::Base
  belongs_to :event
  
  
  def self.get
    Talk.find(:all).group_by { |s| s.starts_at.strftime("%H:%M") }
  end
end
