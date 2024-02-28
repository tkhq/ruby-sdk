# Who am I?

This examples shows how to use [`turnkey_client`](https://rubygems.org/gems/turnkey_client) to create a new sub-organization and a wallet. We generate a new Tron account (default account)

To run this example:
* `cp .env.example .env`
* Follow the instructions in the `.env` file to fill in values for `TURNKEY_ORGANIZATION_ID`, `TURNKEY_API_PUBLIC_KEY`, `TURNKEY_API_PRIVATE_KEY`, and `SUB_ORGANIZATION_ROOT_PUBLIC_KEY`
* Install the dependencies: `bundle install`
* Then run the `create_sub_org.rb` script: `bundle exec ruby create_sub_org.rb`

Here's an example run:

```
bundle exec ruby create_sub_org.rb
Created new Turnkey sub-organization successfully
Sub-Organization ID: 122da99b-db34-44ed-84ee-e326c5b149ec
Tron wallet address: TZFeFMTfJKtkvHMhyveuYXSxKReBbmUiZw
```
