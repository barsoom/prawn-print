guard "rspec", cmd: "bundle exec rspec --color" do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec" }
  watch("spec/spec_helper.rb")  { "spec" }
end
