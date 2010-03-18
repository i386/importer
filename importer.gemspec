# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{importer}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Micha\305\202 Szajbe"]
  s.date = %q{2010-03-18}
  s.description = %q{Define new objects or modifications of existing ones in XML file and import them to your application.}
  s.email = %q{michal.szajbe@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "importer.gemspec",
     "lib/importer.rb",
     "lib/importer/import.rb",
     "lib/importer/imported_object.rb",
     "lib/importer/parser.rb",
     "rails/init.rb",
     "rails_generators/importer/importer_generator.rb",
     "rails_generators/importer/templates/imported_objects_migration.rb",
     "rails_generators/importer/templates/imports_migration.rb",
     "test/database.yml",
     "test/factories.rb",
     "test/fixtures/empty.xml",
     "test/fixtures/product.xml",
     "test/fixtures/products.xml",
     "test/helper.rb",
     "test/importer/import_test.rb",
     "test/importer/imported_object_test.rb",
     "test/importer/parser_test.rb",
     "test/importer_test.rb"
  ]
  s.homepage = %q{http://github.com/szajbus/importer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Import objects from XML files}
  s.test_files = [
    "test/factories.rb",
     "test/helper.rb",
     "test/importer/import_test.rb",
     "test/importer/imported_object_test.rb",
     "test/importer/parser_test.rb",
     "test/importer_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<crack>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
    else
      s.add_dependency(%q<crack>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<crack>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
  end
end
