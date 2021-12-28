# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for updating card data
  class UpdateChargeCardRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Indicates if the subscriptions using this card must also be updated
    # @return [Boolean]
    attr_accessor :update_subscription

    # Card id
    # @return [String]
    attr_accessor :card_id

    # Card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # Indicates a recurrence
    # @return [Boolean]
    attr_accessor :recurrence

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['update_subscription'] = 'update_subscription'
      @_hash['card_id'] = 'card_id'
      @_hash['card'] = 'card'
      @_hash['recurrence'] = 'recurrence'
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

    def initialize(update_subscription = nil,
                   card_id = nil,
                   card = nil,
                   recurrence = nil)
      @update_subscription = update_subscription unless update_subscription == SKIP
      @card_id = card_id unless card_id == SKIP
      @card = card unless card == SKIP
      @recurrence = recurrence unless recurrence == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      update_subscription =
        hash.key?('update_subscription') ? hash['update_subscription'] : SKIP
      card_id = hash.key?('card_id') ? hash['card_id'] : SKIP
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      recurrence = hash.key?('recurrence') ? hash['recurrence'] : SKIP

      # Create object from extracted values.
      UpdateChargeCardRequest.new(update_subscription,
                                  card_id,
                                  card,
                                  recurrence)
    end
  end
end
