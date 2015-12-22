class Profile
  attr_accessor :first_name, :last_name, :email, :phone, :short_bio, :twitter, :blog_url, :resume_url, :github_url, :photo_url, :user_id, :educations, :experiences, :capstones, :skills

  def initialize(pro)
    @first_name = pro['first_name']
    @last_name = pro['last_name']
    @email = pro['email']
    @phone = pro['phone']
    @short_bio = pro['short_bio']
    @twitter = pro['twitter']
    @blog_url = pro['blog_url']
    @resume_url = pro['resume_url']
    @github_url = pro['github_url']
    @photo_url = pro['photo_url']
    @user_id = pro['user_id']
    @capstones = Capstone.all(@user_id)
    @educations = Education.all(@user_id)
    @experiences = Experience.all(@user_id)
    @skills = Skill.all(@user_id)
  end

  def self.find_by(options)
    id = options[:id]
    profile_data  = Unirest.get("http://172.28.113.208:3000/students/#{id}.json").body
    Profile.new(profile_data)
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
