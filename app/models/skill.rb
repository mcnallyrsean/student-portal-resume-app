class Skill
  attr_accessor :skill_name
  attr_reader :student_id

  def initialize(skl)
    @skill_name = skl['skill_name']
  end

end
