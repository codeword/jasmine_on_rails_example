require File.expand_path(File.join(File.dirname(__FILE__), "../../spec/javascript/jasmine_helper.rb"))

namespace :spec do

  require "spec"
  require 'spec/rake/spectask'

  desc "Run continuous integration tests"
  Spec::Rake::SpecTask.new(:jasmine) do |t|
    t.spec_opts = ["--color", "--format", "specdoc"]
    t.spec_files = ["spec/javascript/jasmine_spec.rb"]
  end

  desc "Run specs via server"
  task :jasmine_server do
    require File.expand_path(File.join(JasmineHelper.jasmine_root, "contrib/ruby/jasmine_spec_builder"))

    puts "your tests are here:"
    puts "  http://localhost:8888/run.html"

    Jasmine::SimpleServer.start(
      8888,
      lambda { JasmineHelper.spec_file_urls },
      JasmineHelper.dir_mappings
    )
  end
end
