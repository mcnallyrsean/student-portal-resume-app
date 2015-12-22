class Capstone
  attr_accessor :name, :description, :url, :screenshot_url
  attr_reader :student_id

  def initialize(cap)
    @name = cap['name']
    @description = cap['description']
    @url = cap['url']
    @screenshot_url = cap['screenshot_url']
    @student_id = cap['student_id']
  end

  
end
