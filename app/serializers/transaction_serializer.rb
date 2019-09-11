class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :detail, :amount, :currency
  has_one :category
end
