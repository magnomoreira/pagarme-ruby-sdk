# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetCheckoutCreditCardPaymentResponse Model.
  class GetCheckoutCreditCardPaymentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Descrição na fatura
    # @return [String]
    attr_accessor :statement_descriptor

    # Parcelas
    # @return [List of GetCheckoutCardInstallmentOptionsResponse]
    attr_accessor :installments

    # Payment Authentication response
    # @return [GetPaymentAuthenticationResponse]
    attr_accessor :authentication

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statementDescriptor'
      @_hash['installments'] = 'installments'
      @_hash['authentication'] = 'authentication'
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

    def initialize(statement_descriptor = nil,
                   installments = nil,
                   authentication = nil)
      @statement_descriptor = statement_descriptor unless statement_descriptor == SKIP
      @installments = installments unless installments == SKIP
      @authentication = authentication unless authentication == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor =
        hash.key?('statementDescriptor') ? hash['statementDescriptor'] : SKIP
      # Parameter is an array, so we need to iterate through it
      installments = nil
      unless hash['installments'].nil?
        installments = []
        hash['installments'].each do |structure|
          installments << (GetCheckoutCardInstallmentOptionsResponse.from_hash(structure) if structure)
        end
      end

      installments = SKIP unless hash.key?('installments')
      authentication = GetPaymentAuthenticationResponse.from_hash(hash['authentication']) if
        hash['authentication']

      # Create object from extracted values.
      GetCheckoutCreditCardPaymentResponse.new(statement_descriptor,
                                               installments,
                                               authentication)
    end
  end
end
