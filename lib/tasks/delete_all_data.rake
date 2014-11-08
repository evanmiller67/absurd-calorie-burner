namespace :datafy do
  desc 'Deletes all data from Database'
  task :del => :environment do
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE exercises")
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE items")
    ActiveRecord::Base.connection.execute("TRUNCATE TABLE foods")
  end
end