# README

## Passing in Rails 4.2.8

Install the app:

```bash
bundle install
```

Run the tests:

```bash
bin/rake
```

The output should be:

```text
Run options: --seed 5614

# Running:

Using Default driver
.Using Javascript driver
.

Finished in 0.014174s, 141.1008 runs/s, 282.2017 assertions/s.

2 runs, 4 assertions, 0 failures, 0 errors, 0 skips

```

## Failing in Rails 5.0.3

Open `Gemfile` and toggle the `gem 'rails'` line from `4.2.8` to `5.0.3`. Then:

```bash
bundle update rails
bin/rake
```

The output should be:

```text
Run options: --seed 8044

# Running:

E

Error:
HomeTest::a visitor with Javascript::{:js=>true}#test_0001_can view the homepage:
TypeError: no implicit conversion of nil into Hash
    test/integration/home_test.rb:6:in `setup'


bin/rails test test/integration/home_test.rb:25

E

Error:
HomeTest::a visitor without Javascript#test_0001_can view the homepage:
TypeError: no implicit conversion of nil into Hash
    test/integration/home_test.rb:6:in `setup'


bin/rails test test/integration/home_test.rb:15



Finished in 0.004305s, 464.6044 runs/s, 0.0000 assertions/s.
2 runs, 0 assertions, 0 failures, 2 errors, 0 skips
```

## Failing in Rails 5.1.1

Open `Gemfile` and toggle the `gem 'rails'` line from `5.0.0` to `5.1.1`. Then:

```bash
bundle update rails
bin/rake
```

The output is similar to the results under Rails 5.0.3, and should be:

```text
Run options: --seed 45251

# Running:

E

Error:
HomeTest::a visitor without Javascript#test_0001_can view the homepage:
TypeError: no implicit conversion of nil into Hash
    test/integration/home_test.rb:6:in `setup'


bin/rails test test/integration/home_test.rb:15

E

Error:
HomeTest::a visitor with Javascript::{:js=>true}#test_0001_can view the homepage:
TypeError: no implicit conversion of nil into Hash
    test/integration/home_test.rb:6:in `setup'


bin/rails test test/integration/home_test.rb:25



Finished in 0.004316s, 463.4315 runs/s, 0.0000 assertions/s.
2 runs, 0 assertions, 0 failures, 2 errors, 0 skips
```