# frozen_string_literal: true

require_relative "lib/syntax_tree/disable_ternary/version"

Gem::Specification.new do |spec|
  spec.name = "syntax_tree-disable_ternary"
  spec.version = SyntaxTree::DisableTernary::VERSION
  spec.authors = ["Discourse Team"]

  spec.summary = "syntax_tree plugin to prevent converting `if` expressions to ternary."
  spec.homepage = "https://github.com/discourse/syntax_tree-disable_ternary"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/discourse/syntax_tree-disable_ternary"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]
end
