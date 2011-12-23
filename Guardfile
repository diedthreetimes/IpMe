# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'minitest' do
  # with Minitest::Unit
  # watch(%r|^test/test_(.*)\.rb|)
  # watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }

  watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/functional/#{m[1]}_test.rb" }
  watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }

  watch(%r|^test/controllers/(.*)_test\.rb|)
  watch(%r|^test/models/(.*)_test\.rb|)
  watch(%r|^test/requests/(.*)_test\.rb|)
  #watch(%r|^app/(.*)/(.*)([^/]+)\.rb|) {|m| "test/#{m[1]}/#{m[2]}test_#{m[3]}.rb"}
  watch(%r|^test/minitest_helper\.rb|)    { "test" }
end
