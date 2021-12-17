# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Creates a 3D-S authentication payment
  class CreateThreeDSecureRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The MPI Vendor (MerchantPlugin)
    # @return [String]
    attr_accessor :mpi

    # The Cardholder Authentication Verification value
    # @return [String]
    attr_accessor :cavv

    # The Electronic Commerce Indicator value
    # @return [String]
    attr_accessor :eci

    # The TransactionId value (XID)
    # @return [String]
    attr_accessor :transaction_id

    # The success URL after the authentication
    # @return [String]
    attr_accessor :success_url

    # Directory Service Transaction Identifier
    # @return [String]
    attr_accessor :ds_transaction_id

    # ThreeDSecure Version
    # @return [String]
    attr_accessor :version

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mpi'] = 'mpi'
      @_hash['cavv'] = 'cavv'
      @_hash['eci'] = 'eci'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['success_url'] = 'success_url'
      @_hash['ds_transaction_id'] = 'ds_transaction_id'
      @_hash['version'] = 'version'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        cavv
        eci
        transaction_id
        success_url
        ds_transaction_id
        version
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(mpi = nil,
                   cavv = nil,
                   eci = nil,
                   transaction_id = nil,
                   success_url = nil,
                   ds_transaction_id = nil,
                   version = nil)
      @mpi = mpi unless mpi == SKIP
      @cavv = cavv unless cavv == SKIP
      @eci = eci unless eci == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @success_url = success_url unless success_url == SKIP
      @ds_transaction_id = ds_transaction_id unless ds_transaction_id == SKIP
      @version = version unless version == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mpi = hash.key?('mpi') ? hash['mpi'] : SKIP
      cavv = hash.key?('cavv') ? hash['cavv'] : SKIP
      eci = hash.key?('eci') ? hash['eci'] : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      success_url = hash.key?('success_url') ? hash['success_url'] : SKIP
      ds_transaction_id =
        hash.key?('ds_transaction_id') ? hash['ds_transaction_id'] : SKIP
      version = hash.key?('version') ? hash['version'] : SKIP

      # Create object from extracted values.
      CreateThreeDSecureRequest.new(mpi,
                                    cavv,
                                    eci,
                                    transaction_id,
                                    success_url,
                                    ds_transaction_id,
                                    version)
    end
  end
end
