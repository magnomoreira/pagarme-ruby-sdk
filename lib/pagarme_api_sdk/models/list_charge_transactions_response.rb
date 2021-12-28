# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Response object for listing charge transactions
  class ListChargeTransactionsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The charge transactions objects
    # @return [List of GetTransactionResponse]
    attr_accessor :data

    # Paging object
    # @return [PagingResponse]
    attr_accessor :paging

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data'] = 'data'
      @_hash['paging'] = 'paging'
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

    def initialize(data = nil,
                   paging = nil)
      @data = data unless data == SKIP
      @paging = paging unless paging == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      data = nil
      unless hash['data'].nil?
        data = []
        hash['data'].each do |structure|
          data << (GetTransactionResponse.from_hash(structure) if structure)
        end
      end

      data = SKIP unless hash.key?('data')
      paging = PagingResponse.from_hash(hash['paging']) if hash['paging']

      # Create object from extracted values.
      ListChargeTransactionsResponse.new(data,
                                         paging)
    end
  end
end
