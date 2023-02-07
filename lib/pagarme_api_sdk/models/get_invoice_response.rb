# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting an invoice
  class GetInvoiceResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [List of GetInvoiceItemResponse]
    attr_accessor :items

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [GetChargeResponse]
    attr_accessor :charge

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :installments

    # TODO: Write general description for this method
    # @return [GetBillingAddressResponse]
    attr_accessor :billing_address

    # TODO: Write general description for this method
    # @return [GetSubscriptionResponse]
    attr_accessor :subscription

    # TODO: Write general description for this method
    # @return [GetPeriodResponse]
    attr_accessor :cycle

    # TODO: Write general description for this method
    # @return [GetShippingResponse]
    attr_accessor :shipping

    # TODO: Write general description for this method
    # @return [Hash of String]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :due_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :canceled_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :billing_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :seen_at

    # Total discounted value
    # @return [Integer]
    attr_accessor :total_discount

    # Total discounted value
    # @return [Integer]
    attr_accessor :total_increment

    # Subscription Id
    # @return [String]
    attr_accessor :subscription_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['url'] = 'url'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['payment_method'] = 'payment_method'
      @_hash['created_at'] = 'created_at'
      @_hash['items'] = 'items'
      @_hash['customer'] = 'customer'
      @_hash['charge'] = 'charge'
      @_hash['installments'] = 'installments'
      @_hash['billing_address'] = 'billing_address'
      @_hash['subscription'] = 'subscription'
      @_hash['cycle'] = 'cycle'
      @_hash['shipping'] = 'shipping'
      @_hash['metadata'] = 'metadata'
      @_hash['due_at'] = 'due_at'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['billing_at'] = 'billing_at'
      @_hash['seen_at'] = 'seen_at'
      @_hash['total_discount'] = 'total_discount'
      @_hash['total_increment'] = 'total_increment'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        code
        url
        amount
        status
        payment_method
        created_at
        items
        customer
        charge
        installments
        billing_address
        subscription
        cycle
        shipping
        metadata
        due_at
        canceled_at
        billing_at
        seen_at
        total_discount
        total_increment
        subscription_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        code
        url
        amount
        status
        payment_method
        created_at
        items
        customer
        charge
        installments
        billing_address
        subscription
        cycle
        shipping
        metadata
        due_at
        canceled_at
        billing_at
        seen_at
        total_discount
        total_increment
        subscription_id
      ]
    end

    def initialize(id = SKIP,
                   code = SKIP,
                   url = SKIP,
                   amount = SKIP,
                   status = SKIP,
                   payment_method = SKIP,
                   created_at = SKIP,
                   items = SKIP,
                   customer = SKIP,
                   charge = SKIP,
                   installments = SKIP,
                   billing_address = SKIP,
                   subscription = SKIP,
                   cycle = SKIP,
                   shipping = SKIP,
                   metadata = SKIP,
                   due_at = SKIP,
                   canceled_at = SKIP,
                   billing_at = SKIP,
                   seen_at = SKIP,
                   total_discount = SKIP,
                   total_increment = SKIP,
                   subscription_id = SKIP)
      @id = id unless id == SKIP
      @code = code unless code == SKIP
      @url = url unless url == SKIP
      @amount = amount unless amount == SKIP
      @status = status unless status == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @created_at = created_at unless created_at == SKIP
      @items = items unless items == SKIP
      @customer = customer unless customer == SKIP
      @charge = charge unless charge == SKIP
      @installments = installments unless installments == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @subscription = subscription unless subscription == SKIP
      @cycle = cycle unless cycle == SKIP
      @shipping = shipping unless shipping == SKIP
      @metadata = metadata unless metadata == SKIP
      @due_at = due_at unless due_at == SKIP
      @canceled_at = canceled_at unless canceled_at == SKIP
      @billing_at = billing_at unless billing_at == SKIP
      @seen_at = seen_at unless seen_at == SKIP
      @total_discount = total_discount unless total_discount == SKIP
      @total_increment = total_increment unless total_increment == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (GetInvoiceItemResponse.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
      customer = GetCustomerResponse.from_hash(hash['customer']) if hash['customer']
      charge = GetChargeResponse.from_hash(hash['charge']) if hash['charge']
      installments = hash.key?('installments') ? hash['installments'] : SKIP
      billing_address = GetBillingAddressResponse.from_hash(hash['billing_address']) if
        hash['billing_address']
      subscription = GetSubscriptionResponse.from_hash(hash['subscription']) if
        hash['subscription']
      cycle = GetPeriodResponse.from_hash(hash['cycle']) if hash['cycle']
      shipping = GetShippingResponse.from_hash(hash['shipping']) if hash['shipping']
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      due_at = if hash.key?('due_at')
                 (DateTimeHelper.from_rfc3339(hash['due_at']) if hash['due_at'])
               else
                 SKIP
               end
      canceled_at = if hash.key?('canceled_at')
                      (DateTimeHelper.from_rfc3339(hash['canceled_at']) if hash['canceled_at'])
                    else
                      SKIP
                    end
      billing_at = if hash.key?('billing_at')
                     (DateTimeHelper.from_rfc3339(hash['billing_at']) if hash['billing_at'])
                   else
                     SKIP
                   end
      seen_at = if hash.key?('seen_at')
                  (DateTimeHelper.from_rfc3339(hash['seen_at']) if hash['seen_at'])
                else
                  SKIP
                end
      total_discount =
        hash.key?('total_discount') ? hash['total_discount'] : SKIP
      total_increment =
        hash.key?('total_increment') ? hash['total_increment'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP

      # Create object from extracted values.
      GetInvoiceResponse.new(id,
                             code,
                             url,
                             amount,
                             status,
                             payment_method,
                             created_at,
                             items,
                             customer,
                             charge,
                             installments,
                             billing_address,
                             subscription,
                             cycle,
                             shipping,
                             metadata,
                             due_at,
                             canceled_at,
                             billing_at,
                             seen_at,
                             total_discount,
                             total_increment,
                             subscription_id)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_due_at
      DateTimeHelper.to_rfc3339(due_at)
    end

    def to_canceled_at
      DateTimeHelper.to_rfc3339(canceled_at)
    end

    def to_billing_at
      DateTimeHelper.to_rfc3339(billing_at)
    end

    def to_seen_at
      DateTimeHelper.to_rfc3339(seen_at)
    end
  end
end
