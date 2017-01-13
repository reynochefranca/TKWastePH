namespace :a do
    desc "test"

# $ rake inactive_user:destroy_unconfirmed のように使う
# :environmentは超大事。ないとモデルにアクセスできない

    task :rake_command_test => :environment do

      puts 'test.....'

    end

end
