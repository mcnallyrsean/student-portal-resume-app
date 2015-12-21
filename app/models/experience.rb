class Experience

  attr_accessor :start_date :end_date :job_title :company :details :student_id

  def initialize(exp)
    @start_date = exp['start_date']
    @end_date = exp['end_date']
    @job_title = exp['job_title']
    @company = exp['company']
    @details = exp['datails']
    @student_id = exp['student_id']
  end

end
