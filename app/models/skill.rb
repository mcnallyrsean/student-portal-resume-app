class Skill
  attr_accessor :skill_name
  attr_reader :student_id

  def initialize(skl)
    @skill_name = skl['skill_name']
  end

  def self.all(id)
    skills  = Unirest.get("http://172.28.113.208:3000/students/#{id}.json").body['skills']
    skills
  end


end
