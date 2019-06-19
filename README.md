# ExifCsv

ExifCsv reads exif of all the jpgs in the directory and writes them in a csv file.
It only supports gps latitude and longitude at the moment.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'exif_csv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install exif_csv

## Usage

```
$ ls img
/img
├── cats
│   └── image_e.jpg
├── image_a.jpg
├── image_b.jpg(doesn't have exif)
├── image_c.jpg
└── image_d.jpg(doesn't have gps tags)

$ exif_csv img

$ cat output.csv
/img/cats/image_e.jpg,59.92475507998271,10.695598120067395
/img/image_c.jpg,38.4,-122.82866666666666
/img/image_a.jpg,50.09133333333333,-122.94566666666667
```

## Help

```
Usage: exif_csv [options]
        --dry-run
    -h, --help
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/exif_csv.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
