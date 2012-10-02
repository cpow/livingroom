# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "backbone-on-rails"
  s.version = "0.9.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["William Meleyal"]
  s.date = "2012-07-12"
  s.description = "A simple gem for using Backbone with Rails (>= 3.1), based on thoughtbot's 'Backbone.js on Rails'"
  s.email = ["william.meleyal@gmail.com"]
  s.homepage = "http://github.com/meleyal/backbone-on-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "A simple gem for using Backbone with Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<ejs>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<eco>, ["~> 1.0.0"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<ejs>, ["~> 1.0.0"])
      s.add_dependency(%q<eco>, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<ejs>, ["~> 1.0.0"])
    s.add_dependency(%q<eco>, ["~> 1.0.0"])
  end
end
