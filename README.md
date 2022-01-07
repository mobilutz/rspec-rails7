# Error with Rails 7

When running `bundle exec rspec spec` with Rails 7.0 I get the following error:
```
❯ bunle exec rspec spec
F

Failures:

  1) TestClass does something
     Failure/Error: expect { test_class.perform }.to raise_error(::SomeError)

       expected SomeError, got #<NoMethodError: undefined method `message' for "Authentication Error":String> with backtrace:
         # ./app/services/test_class.rb:9:in `rescue in perform'
         # ./app/services/test_class.rb:6:in `perform'
         # ./spec/test_class_spec.rb:17:in `block (3 levels) in <top (required)>'
         # ./spec/test_class_spec.rb:17:in `block (2 levels) in <top (required)>'
     # ./spec/test_class_spec.rb:17:in `block (2 levels) in <top (required)>'

Finished in 0.1797 seconds (files took 1.29 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/test_class_spec.rb:16 # TestClass does something
```

But the same code, with Rails 6.1 does not show this error:

```
❯ bundle exec rspec spec
.

Finished in 0.157 seconds (files took 1.71 seconds to load)
1 example, 0 failures
```

This repo has the following inside:
* Rails 7.0 in `main` branch
* Rails 6.1 in `rails61` branch

Everything else is exactly the same.
