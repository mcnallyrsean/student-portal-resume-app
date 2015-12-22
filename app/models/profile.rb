class Student
  attr_accessor :first_name, :last_name, :email, :phone, :short_bio, :twitter, :blog_url, :resume_url, :github_url, :photo_url, :user_id, :educations, :experiences, :capstones, :skills
  def initialize(p)
    @capstones = Capstone.all
    @educations = Education.all
    @experiences = Experience.all
    @skills = Skill.all
  end

  def self.find_by(options)
    id = options[:id]
    student_data  = Unirest.get("http://172.28.113.208:3000/students.json").body
    Student.new(profile_data)
  end

  def update(options)
    ## Not sure how to get this method rolling???
    profile_data  = Unirest.post(
      "#AddressOfAPI",
      headers: { "Accept" => "application/json" }, 
      parameters: options
    ).body
    ## Profile.new(data returned from the hash)
  end
end
