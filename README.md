# TrimBlobs

This gem is intended to trim database logging of BLOBs. The implementation is originally made from [this blog](http://log.kares.org/2009/08/trimmed-blobs-from-log-in-rails.html) by [Karol Bucek](https://github.com/kares).

The gem has been updated and some bugs have been fixed along the way.

## Requirements

Currently it is working with Rails >= 3.2 and ruby version >= 1.9, if
you need this gem for another set of version, please let me know, and
I will gladly implement it for you

## Installation

Add this line to your application's Gemfile:

    gem 'trim_blobs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trim_blobs

## Usage

There is basically no usage. The result of using this gem can be seen in the log files where long lines of hexadecimal number have been replaced with a text like

    \x89504e470d0a1a0a0000000d49484452... (TRIMMED 34924 hexadecimal digits)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
