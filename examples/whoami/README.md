# Who am I?

This examples shows how to use [`turnkey_client`](https://rubygems.org/gems/turnkey_client) to sign requests. Here we sign a "Who am I?" request (see [documentation](https://docs.turnkey.com/api#tag/Sessions/operation/GetWhoami))

To run this example:
* `cp .env.example .env`
* Follow the instructions in the `.env` file to fill in values for `TURNKEY_ORGANIZATION_ID`, `TURNKEY_API_PUBLIC_KEY`, and `TURNKEY_API_PRIVATE_KEY`
* Install the dependencies: `bundle install`
* Then run the `whoami.rb` script:
  ```ruby
  $ bundle exec ruby whoami.rb
  {:organizationId=>"4ecd2483-49db-4d63-bc2a-f70f122c3044", :organizationName=>"Ruby", :userId=>"1299d44a-339d-497d-867c-b78c047a8622", :username=>"Root user"}
  ```
