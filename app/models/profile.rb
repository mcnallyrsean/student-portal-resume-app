class Profile
  attr_accessor 
  def initialize(p)
    @capstones = Capstone.all
    @educations = Education.all
    @experiences = Experience.all
    @skills = Skill.all
  ##@user_id = User.id
  end

  def self.find_by(options)
    id = options[:id]
    profile_data = Unirest.get("#AddressOfAPI").body
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
