namespace :radiant do
  namespace :extensions do
    namespace :reservation do
      
      desc "Runs the migration of the Reservation extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          ReservationExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          ReservationExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Reservation to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from ReservationExtension"
        Dir[ReservationExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(ReservationExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory, :verbose => false
          cp file, RAILS_ROOT + path, :verbose => false
        end
      end  
    end
  end
end
