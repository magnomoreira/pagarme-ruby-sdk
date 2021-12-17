# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for creating a pricing scheme
  class CreatePricingSchemeRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Scheme type
    # @return [String]
    attr_accessor :scheme_type

    # Price brackets
    # @return [List of CreatePriceBracketRequest]
    attr_accessor :price_brackets

    # Price
    # @return [Integer]
    attr_accessor :price

    # Minimum price
    # @return [Integer]
    attr_accessor :minimum_price

    # percentual value used in pricing_scheme Percent
    # @return [Float]
    attr_accessor :percentage

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scheme_type'] = 'scheme_type'
      @_hash['price_brackets'] = 'price_brackets'
      @_hash['price'] = 'price'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['percentage'] = 'percentage'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        price
        minimum_price
        percentage
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(scheme_type = nil,
                   price_brackets = nil,
                   price = nil,
                   minimum_price = nil,
                   percentage = nil)
      @scheme_type = scheme_type unless scheme_type == SKIP
      @price_brackets = price_brackets unless price_brackets == SKIP
      @price = price unless price == SKIP
      @minimum_price = minimum_price unless minimum_price == SKIP
      @percentage = percentage unless percentage == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scheme_type = hash.key?('scheme_type') ? hash['scheme_type'] : SKIP
      # Parameter is an array, so we need to iterate through it
      price_brackets = nil
      unless hash['price_brackets'].nil?
        price_brackets = []
        hash['price_brackets'].each do |structure|
          price_brackets << (CreatePriceBracketRequest.from_hash(structure) if structure)
        end
      end

      price_brackets = SKIP unless hash.key?('price_brackets')
      price = hash.key?('price') ? hash['price'] : SKIP
      minimum_price = hash.key?('minimum_price') ? hash['minimum_price'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP

      # Create object from extracted values.
      CreatePricingSchemeRequest.new(scheme_type,
                                     price_brackets,
                                     price,
                                     minimum_price,
                                     percentage)
    end
  end
end
