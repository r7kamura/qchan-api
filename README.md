# Qchan API
Provides Public API of Qchan.

Qchan is a project of a Job-Queue Worker System.
It consists of a cluster of many processes and Qchan API is a member of them.
Qchan API has a responsibility to provide Public REST API
to the Qchan's internal processes and the other external clients via HTTP.
See [API documentation](https://github.com/r7kamura/qchan-api/blob/master/doc/api/toc.md) for more details.

![](https://raw.github.com/r7kamura/qchan-api/master/doc/png/overview.png)

## Development
```sh
# setup
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:migrate RAILS_ENV=test

# run tests
bundle exec rake

# run tests with generating API documentation
bundle exec rake AUTODOC=1

# run tests with generating coverage to coverage/index.html
bundle exec rake COVERAGE=1

# generate PNG files from doc/dot/*.dot
bundle exec rake doc:dot

# run tests in pry console
rails c test
Loading test environment (Rails 4.0.2)
[1] pry(main)> rspec
```
