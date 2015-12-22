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

  def self.all(id)
    capstones = Unirest.get("http://172.28.113.208:3000/students/#{id}.json").body['capstones']
    capstones
  end
    
  
end
