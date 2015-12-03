class User < ActiveRecord::Base
  has_many :jobs

  # user.jobs  all jobs
  # user.jobs.where(company_name: "Google")
  # user.jobs.create(company_name: "Atlassian")
  #
  # Job.create(user_id: ...)
end
