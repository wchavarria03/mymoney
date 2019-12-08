class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :currency_id, :account_number, :balance
end
