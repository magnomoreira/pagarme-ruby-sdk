# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Fine Response
  class GetFineResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Days
    # @return [Integer]
    attr_accessor :days

    # Type
    # @return [String]
    attr_accessor :type

    # Amount
    # @return [Integer]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['days'] = 'days'
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        days
        type
        amount
      ]
    end

    def initialize(days = nil,
                   type = nil,
                   amount = nil)
      @days = days
      @type = type
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      days = hash.key?('days') ? hash['days'] : nil
      type = hash.key?('type') ? hash['type'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil

      # Create object from extracted values.
      GetFineResponse.new(days,
                          type,
                          amount)
    end
  end
end
