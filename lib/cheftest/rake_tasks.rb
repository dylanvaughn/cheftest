require 'rake/tasklib'
require 'rspec/core/rake_task'

module ChefTest
  class RakeTasks < ::Rake::TaskLib

    def initialize

      desc "Run all tests"
      task "ct" => %w(ct:foodcritic ct:knife ct:spec)

      desc "Run foodcritic"
      task "ct:foodcritic" do
        sh "bundle exec foodcritic -f any ."
      end

      desc "Run knife test"
      task "ct:knife" do
        # sh "bundle exec knife cookbook test #{cookbook_directory} -c #{knife_config_file} -o '..'"
        sh "bundle exec knife cookbook test #{cookbook_directory} -o '..'"
      end

      desc "Run specs"
      RSpec::Core::RakeTask.new("ct:spec") do |t|
        t.rspec_opts = %w(--color)
      end

    end

    private

    def cookbook_directory
      File.basename(Dir.pwd)
    end

    def knife_config_file
      File.join(File.expand_path(File.dirname(__FILE__)), 'knife.rb')
    end

  end
end
