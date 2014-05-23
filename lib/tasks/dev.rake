namespace :dev do

  # Checks and ensures task is not run in production.
  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "\nI'm sorry, I can't do that.\n(You're asking me to drop your production database.)"
    end
  end

  desc "Reset the database to a 'clean' state"
  task reset: [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed"]

end