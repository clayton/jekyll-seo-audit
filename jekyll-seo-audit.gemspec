# frozen_string_literal: true

require_relative "lib/jekyll/seo/audit/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-seo-audit"
  spec.version       = Jekyll::Seo::Audit::VERSION
  spec.authors       = ["clayton"]
  spec.email         = ["6334+clayton@users.noreply.github.com"]

  spec.summary       = "Modern SEO audit for Jekyll powered websites."
  spec.description   = "An updated approach to ensuring you've got the best technical SEO for your Jekyll site."
  spec.homepage      = "https://github.com/clayton/jekyll-seo-audit"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/clayton/jekyll-seo-audit"
  spec.metadata["changelog_uri"] = "https://github.com/clayton/jekyll-seo-audit/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
