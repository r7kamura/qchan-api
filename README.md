# Qchan API
Provides Public API of Qchan.

Qchan is a project of a Job-Queue Worker System.
It consists of a cluster of many processes and Qchan API is a member of them.
Qchan API has a responsibility to provide Public REST API
to the Qchan's internal processes and the other external clients via HTTP.
See [API documentation](https://github.com/r7kamura/qchan-api/blob/master/doc/api/toc.md) for more details.

![](https://raw.github.com/r7kamura/qchan-api/master/doc/svg/overview.svg)

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
