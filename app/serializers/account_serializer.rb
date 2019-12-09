class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :currency, :account_number, :balance
end
