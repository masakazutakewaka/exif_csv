
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "exif_csv/version"

Gem::Specification.new do |spec|
  spec.name          = "exif_csv"
  spec.version       = ExifCsv::VERSION
  spec.authors       = ["masakazutakewaka"]
  spec.email         = ["takewakamma@gmail.com"]

  spec.summary       = "read exif of all the images in the directory and write them in a csv file."
  spec.homepage      = "https://github.com/masakazutakewaka/exif_csv"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'exifr'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
