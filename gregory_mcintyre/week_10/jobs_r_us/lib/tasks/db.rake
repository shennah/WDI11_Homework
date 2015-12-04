namespace :db do

  desc "Create fake data in our database"
  task fake: :environment do

    User.transaction do  # BEGIN

      num_users = 5_000

      num_users.times do

        user = User.create(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          dob: Faker::Date.between(18.years.ago, 80.years.ago),
          dead: rand(1..10) == 1
        )
        rand(1..3).times do
          user.jobs.create(
            company_name: Faker::Company.name,
            job_title: Faker::Company.profession
          )
        end
      end

    end        # COMMIT

  end
end
