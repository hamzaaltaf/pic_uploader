class Picture < ApplicationRecord
    # has_attached_file :avatar, styles: lambda { |a| a.instance.is_image? ? {:small => "x200>", :medium => "x300>", :large => "x400>"}  : {:thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10}, :medium => { :geometry => "300x300#", :format => 'jpg', :time => 10}}}, processors: lambda { |a| a.is_video? ? [ :ffmpeg ] : [ :thumbnail ] }
    validates_presence_of :url, :question, :option1
end