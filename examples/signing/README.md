# Who am I?

This examples shows how to use [`turnkey_client`](https://rubygems.org/gems/turnkey_client) to create a new wallet and sign a message with it.

To run this example:
* `cp .env.example .env`
* Follow the instructions in the `.env` file to fill in values for `TURNKEY_ORGANIZATION_ID`, `TURNKEY_API_PUBLIC_KEY`, and `TURNKEY_API_PRIVATE_KEY`
* Install the dependencies: `bundle install`
* Then run the `signing.rb` script: `bundle exec ruby signing.rb`

You should be able to verify the signature produced via Etherscan. Here's an example run:

```
created new wallet successfully
successful signature
- address: 0xf0635c94F7bEEcF9abC77F512Bf33BB66Fe9997f
- message: "hello from Turnkey, in Ruby!"
- signature hash: 0x9b55914814658b4cb592ed6782f2e639b28b89d122240c34f7ea5d7afd48c5861271b008ae62d15131cdd95fbc6a8498ea8379e20ad8fa0956dfd207c6def1d21b
You can verify for yourself at https://etherscan.io/verifiedSignatures > "Verify Signature"
```

Proof of validity: https://etherscan.io/verifySig/36331
