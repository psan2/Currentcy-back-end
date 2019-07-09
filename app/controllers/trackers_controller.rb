class TrackersController < ApplicationController
  ALPHAVANTAGE_URL = 'https://www.alphavantage.co/'
  WEEKLY_QUERY_EXT = 'query?function=FX_WEEKLY&'
  API_KEY = ConfigItems::API_KEY

  def fetch_chart(_fromCurrency, _toCurrency)
    full_url = ALPHAVANTAGE_URL + WEEKLY_QUERY_EXT + 'from_symbol=${fromCurrency}&to_symbol=${toCurrency}&apikey=${API_KEY}'

    response = RestClient::Request.execute(
      method: :get,
      url: full_url,
      headers: { api_key: API_KEY }
    )

    JSON.parse(response)
  end
end
