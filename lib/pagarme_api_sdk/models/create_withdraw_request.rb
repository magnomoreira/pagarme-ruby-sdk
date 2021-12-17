# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # CreateWithdrawRequest Model.
  class CreateWithdrawRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [Hash]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        metadata
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(amount = nil,
                   metadata = nil)
      @amount = amount unless amount == SKIP
      @metadata = metadata unless metadata == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP

      # Create object from extracted values.
      CreateWithdrawRequest.new(amount,
                                metadata)
    end
  end
end
