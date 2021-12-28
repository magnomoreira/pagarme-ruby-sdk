# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Creates a refund with split rules
  class CreateCancelChargeSplitRulesRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The split rule gateway id
    # @return [String]
    attr_accessor :id

    # The split rule amount
    # @return [Integer]
    attr_accessor :amount

    # The amount type (flat ou percentage)
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['amount'] = 'Amount'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def optionals
      []
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(id = nil,
                   amount = nil,
                   type = nil)
      @id = id unless id == SKIP
      @amount = amount unless amount == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      amount = hash.key?('Amount') ? hash['Amount'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP

      # Create object from extracted values.
      CreateCancelChargeSplitRulesRequest.new(id,
                                              amount,
                                              type)
    end
  end
end
