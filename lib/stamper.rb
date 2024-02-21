require 'openssl'
require 'json'
require 'base64'

class ApiKeyStamper
    # Initializes a new API key stamper
    # Required arguments:
    # - :api_public_key
    # - :api_private_key
    def initialize args
        if args[:api_public_key].nil?
            raise "Unable to find :api_public_key in initialization arguments"
        end
            
        if args[:api_private_key].nil?
            raise "Unable to find :api_private_key in initialization arguments"
        end

        pkcs8_hex = "308141020100301306072a8648ce3d020106082a8648ce3d030107042730250201010420" + args[:api_private_key]
        pkcs8_bytes = hex_to_bin(pkcs8_hex)

        @key = OpenSSL::PKey.read(pkcs8_bytes)
        
        # Check that we loaded the right key by comparing the public key to the passed in public key
        if self.public_key != args[:api_public_key].downcase
            raise "Expected public key to be #{args[:api_public_key]}, found #{public_key_hex}"
        end
    end

    # Return the hex-encoded public key in compressed form
    def public_key
        # This gives the public point as a [OpenSSL::BN](https://ruby-doc.org/stdlib-2.4.1/libdoc/openssl/rdoc/OpenSSL/BN.html)
        public_key_bn = @key.public_key.to_bn :compressed
        public_key_hex = public_key_bn.to_s 16
        public_key_hex.downcase
    end

    # Given a string (often, a POST request body), returns a hash with the correct auth header
    # to authenticate the request.
    def stamp(data)
        hash = OpenSSL::Digest::SHA256.digest(data)
        signature = @key.dsa_sign_asn1(hash)
        
        stamp = {
            publicKey: self.public_key,
            scheme: "SIGNATURE_SCHEME_TK_API_P256",
            signature: bin_to_hex(signature),
        }

        { "x-stamp" => Base64.urlsafe_encode64(stamp.to_json, padding: false) }
    end
end

# Classic: https://anthonylewis.com/2011/02/09/to-hex-and-back-with-ruby/
# ...why isn't this part of Ruby's standard lib again?
def bin_to_hex(s)
    s.unpack('H*').first
end

def hex_to_bin(s)
    s.scan(/../).map { |x| x.hex }.pack('c*')
end
