namespace :exercise do
  desc 'Deletes Exercise data from Database'
  task :del => :environment do
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE exercises")
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE items")
  end
end