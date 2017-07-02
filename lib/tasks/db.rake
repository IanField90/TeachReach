namespace :db do
  namespace :clone do

    # For now, one environment to rule them all

    # desc "Clones staging database for use in local development"
    # task :staging => :environment do
    #   # TODO: Parameterise the heroku app and local db to use
    #   Rake::Task["db:drop"].invoke
    #   Rake::Task["db:create"].invoke
    #   Bundler.with_clean_env {
    #     system <<-CMD
    #       heroku pg:backups capture  --app teachreach-staging
    #       curl -o latest.dump `heroku pg:backups public-url --app teachreach-staging`
    #       pg_restore --verbose --clean --no-acl --no-owner -h localhost -d teachreachServer_development latest.dump
    #       rm latest.dump
    #     CMD
    #   }
    #   Rake::Task["db:migrate"].reenable
    #   Rake::Task["db:migrate"].invoke
    #   puts 'Cloned teachreach staging database into development and migrated!'
    # end

    desc "Clones production database for use in local development"
    task :production => :environment do
      # TODO: Parameterise the heroku app and local db to use
      Rake::Task["db:drop"].invoke
      Rake::Task["db:create"].invoke
      Bundler.with_clean_env {
        system <<-CMD
          heroku pg:backups capture --app teachreach
          curl -o latest.dump `heroku pg:backups public-url --app teachreach`
          pg_restore --verbose --clean --no-acl --no-owner -h localhost -d teachreachServer_development latest.dump
          rm latest.dump
        CMD
      }
      Rake::Task["db:migrate"].reenable
      Rake::Task["db:migrate"].invoke
      puts 'Cloned teachreach production database into development and migrated!'
    end

    # desc "Clone from production database to staging"
    # task :production_to_staging => :environment do
    #   Bundler.with_clean_env {
    #     system <<-CMD
    #       heroku pg:copy teachreach::PURPLE IVORY -a teachreach-staging
    #       heroku run rake db:migrate -a teachreach-staging
    #     CMD
    #   }
    #   puts "Cloned teachreach production database to staging"
    # end

  end

end
