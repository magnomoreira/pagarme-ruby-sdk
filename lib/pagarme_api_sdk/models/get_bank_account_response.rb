# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # GetBankAccountResponse Model.
  class GetBankAccountResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Id
    # @return [String]
    attr_accessor :id

    # Holder name
    # @return [String]
    attr_accessor :holder_name

    # Holder type
    # @return [String]
    attr_accessor :holder_type

    # Bank
    # @return [String]
    attr_accessor :bank

    # Branch number
    # @return [String]
    attr_accessor :branch_number

    # Branch check digit
    # @return [String]
    attr_accessor :branch_check_digit

    # Account number
    # @return [String]
    attr_accessor :account_number

    # Account check digit
    # @return [String]
    attr_accessor :account_check_digit

    # Bank account type
    # @return [String]
    attr_accessor :type

    # Bank account status
    # @return [String]
    attr_accessor :status

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Deletion date
    # @return [DateTime]
    attr_accessor :deleted_at

    # Recipient
    # @return [GetRecipientResponse]
    attr_accessor :recipient

    # Metadata
    # @return [Hash]
    attr_accessor :metadata

    # Pix Key
    # @return [String]
    attr_accessor :pix_key

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['holder_name'] = 'holder_name'
      @_hash['holder_type'] = 'holder_type'
      @_hash['bank'] = 'bank'
      @_hash['branch_number'] = 'branch_number'
      @_hash['branch_check_digit'] = 'branch_check_digit'
      @_hash['account_number'] = 'account_number'
      @_hash['account_check_digit'] = 'account_check_digit'
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash['recipient'] = 'recipient'
      @_hash['metadata'] = 'metadata'
      @_hash['pix_key'] = 'pix_key'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        recipient
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(id = nil,
                   holder_name = nil,
                   holder_type = nil,
                   bank = nil,
                   branch_number = nil,
                   branch_check_digit = nil,
                   account_number = nil,
                   account_check_digit = nil,
                   type = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   deleted_at = nil,
                   metadata = nil,
                   pix_key = nil,
                   recipient = nil)
      @id = id unless id == SKIP
      @holder_name = holder_name unless holder_name == SKIP
      @holder_type = holder_type unless holder_type == SKIP
      @bank = bank unless bank == SKIP
      @branch_number = branch_number unless branch_number == SKIP
      @branch_check_digit = branch_check_digit unless branch_check_digit == SKIP
      @account_number = account_number unless account_number == SKIP
      @account_check_digit = account_check_digit unless account_check_digit == SKIP
      @type = type unless type == SKIP
      @status = status unless status == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @deleted_at = deleted_at unless deleted_at == SKIP
      @recipient = recipient unless recipient == SKIP
      @metadata = metadata unless metadata == SKIP
      @pix_key = pix_key unless pix_key == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      holder_name = hash.key?('holder_name') ? hash['holder_name'] : SKIP
      holder_type = hash.key?('holder_type') ? hash['holder_type'] : SKIP
      bank = hash.key?('bank') ? hash['bank'] : SKIP
      branch_number = hash.key?('branch_number') ? hash['branch_number'] : SKIP
      branch_check_digit =
        hash.key?('branch_check_digit') ? hash['branch_check_digit'] : SKIP
      account_number =
        hash.key?('account_number') ? hash['account_number'] : SKIP
      account_check_digit =
        hash.key?('account_check_digit') ? hash['account_check_digit'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      deleted_at = if hash.key?('deleted_at')
                     (DateTimeHelper.from_rfc3339(hash['deleted_at']) if hash['deleted_at'])
                   else
                     SKIP
                   end
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      pix_key = hash.key?('pix_key') ? hash['pix_key'] : SKIP
      recipient = GetRecipientResponse.from_hash(hash['recipient']) if hash['recipient']

      # Create object from extracted values.
      GetBankAccountResponse.new(id,
                                 holder_name,
                                 holder_type,
                                 bank,
                                 branch_number,
                                 branch_check_digit,
                                 account_number,
                                 account_check_digit,
                                 type,
                                 status,
                                 created_at,
                                 updated_at,
                                 deleted_at,
                                 metadata,
                                 pix_key,
                                 recipient)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_deleted_at
      DateTimeHelper.to_rfc3339(deleted_at)
    end
  end
end
