quotes = {
  "Steve Jobs" => "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
  "Mahatma Gandhi" => "I recognise no God except the God that is to be found in the hearts of the dumb millions... And I worship the God that is Truth ... through the service of these millions.",
  "Eminem" => "The truth is you don't know what is going to happen tomorrow. Life is a crazy ride, and nothing is guaranteed."
}

random_value = quotes.keys.sample

puts random_value + ' says, "' + quotes[random_value] + '"'
