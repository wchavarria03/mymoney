class Account < ApplicationRecord
  currencies = Hash[
    "1" => {
      symbol: 'C',
      coin: 'colon'
    },
    "2" => {
      symbol: '$',
      coin: 'dollar'
    }
  ]

  def self.currency
    currencies[self.currency_id]
  end
end
