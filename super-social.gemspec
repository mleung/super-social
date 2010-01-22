# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{super-social}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Leung"]
  s.date = %q{2010-01-22}
  s.email = %q{me@michaelleung.us}
  s.extra_rdoc_files = ["README"]
  s.files = ["README", "lib/super-social", "lib/super-social/twitter", "lib/super-social/twitter/base.rb", "lib/super-social/twitter/statuses.rb", "lib/super-social.rb"]
  s.homepage = %q{http://yoursite.example.com}
  s.rdoc_options = ["--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{super-social}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{What this thing does}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
