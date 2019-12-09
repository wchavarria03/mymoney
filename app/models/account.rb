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

  def self.currency_data
    byebug
    currencies[self.currency]
  end
end
