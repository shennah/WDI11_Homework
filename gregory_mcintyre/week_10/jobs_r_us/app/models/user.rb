class User < ActiveRecord::Base
  has_many :jobs

  def self.search(first_name, last_name)
    where_clauses = []
    fields = []
    if first_name.present?
      where_clauses.push('first_name LIKE ?')
      fields.push("%#{first_name}%")
    end
    if last_name.present?
      where_clauses.push('last_name LIKE ?')
      fields.push("%#{last_name}%")
    end
    where(
      where_clauses.join(" OR "),
      *fields
    )
  end

  def self.alive
    where(dead: false)
  end

  # user.jobs  all jobs
  # user.jobs.where(company_name: "Google")
  # user.jobs.create(company_name: "Atlassian")
  #
  # Job.create(user_id: ...)
end
