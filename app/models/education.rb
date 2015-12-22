class Education

  attr_accessor :start_date, :end_date, :degree, :school, :details, :student_id
  
  def initialize(edu)
    @start_date = edu['start_date']
    @end_date = edu['end_date']
    @degree = edu['degree']
    @school  = edu['school']
    @details  = edu['details']
    @student_id = edu['student_id']
  end


end
