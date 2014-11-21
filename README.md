# RedshiftIronWorker

Helper module for IronWorkers connecting to Amazon Redshift.  Includes method to connect through an SSH bastion host to work around the fact that Iron.io's large number of outgoing IPs make adding them all to your security group impractical, if you're outside the US-East-1 zone.

## Installation

Add this line to your application's Gemfile:

    gem 'redshift_iron_worker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redshift_iron_worker

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://bitbucket.org/quantdeck/redshift_iron_worker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
