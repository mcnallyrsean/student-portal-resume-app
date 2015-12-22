class Student
  attr_accessor :first_name, :last_name, :email, :phone, :short_bio, :twitter, :blog_url, :resume_url, :github_url, :photo_url, :user_id, :educations, :experiences, :capstones, :skills
  def initialize(p)
    @first_name = p['first_name']
    @last_name = p['last_name']
    @email = p['email']
    @phone = p['phone']
    @short_bio = p['short_bio']
    @twitter = p['twitter']
    @blog_url = p['blog_url']
    @resume_url = p['resume_url']
    @github_url = p['github_url']
    @photo_url = p['photo_url']
    @user_id = p['user_id']
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
