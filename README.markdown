Jasmine
=======
**YET ANOTHER JavaScript testing framework**

Quick Start
----------

### Install Jasmine

    mkdir -p spec/javascript
    cd spec/javascript
    git clone git://github.com/pivotal/jasmine.git
    cp jasmine/examples/ruby/spec/jasmine_helper.rb ./
    cp jasmine/examples/ruby/spec/jasmine_spec.rb ./

### Customize your spec/javascript/jasmine_helper.rb
  ## Step1: fix some directories
  #   jasmine_root  File.expand_path(File.join(File.dirname(__FILE__), 'jasmine'))
  #   jasmine_spec_dir  File.expand_path(File.join(File.dirname(__FILE__), 'spec'))

  ## Step2: add some more dir_mappings
  #       "/helpers" => File.join(jasmine_spec_dir, 'spec_helpers')
  #       "/public" => File.join(File.dirname(__FILE__),'..','..','public')

  ## Step3: get your spec_helper.js to be included in your spec_file_urls
  #   spec_file_urls ['/helpers/spec_helper.js'] + raw_spec_files.collect {|f| f.sub(jasmine_spec_dir, "/spec")}

### Create some supporting files
    cd RAILS_ROOT
    mkdir -p spec/javascript/spec/spec_helpers

## your spec helper is where you will include all your implementation code and libraries
- spec/javascript/spec/spec_helpers/spec_helper.js

    jasmine.include('public/javascripts/jquery/jquery-1.3.2.js', true);
    jasmine.include('public/javascripts/some_implementation.js', true);

    #if you want to make some custom matchers you can include them here as well
    jasmine.include('helpers/custom_matchers.js', true);

## Copy the Rakefile under examples/ruby into your lib/tasks/jasmine.rake
    - I changed the rake tasks from:
        test:ci to spec:jasmine
        jasmine_server to spec:jsamine_server

