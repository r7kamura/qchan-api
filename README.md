# Qchan API
Provides Public API of Qchan.

Qchan is a project of a Job-Queue Worker System.
It consists of a cluster of many processes and Qchan API is a member of them.
Qchan API has a responsibility to provide Public REST API
to the Qchan's internal processes and the other external clients via HTTP.
See [API documentation](https://github.com/r7kamura/qchan-api/blob/master/doc/api/toc.md) for more details.

![](https://a248.e.akamai.net/camo.github.com/607c2ec126e02bdf43dc55436e1e14e780869e69/687474703a2f2f646c2e64726f70626f7875736572636f6e74656e742e636f6d2f2f752f353937383836392f696d6167652f32303133313231315f3034333135372e706e67)

## Development
```sh
# setup
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:migrate RAILS_ENV=test

# run tests
bundle exec rspec

# generate API documentation
AUTODOC=1 bundle exec rspec

# generate SVG files from doc/dot/*.dot
bundl exec rake doc:dot
```
