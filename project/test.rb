require 'net/http'

#i = Net::HTTP.get_response('skyscanner.com.br', '/transport/flights/rioa/mia/171218/180102/airfares-from-rio-de-janeiro-to-miami-international-in-december-2017-and-january-2018.html')

#puts i.body


#uri = URI('https://skyscanner.com.br//transport/flights/rioa/mia/171218/180102/airfares-from-rio-de-janeiro-to-miami-international-in-december-2017-and-january-2018.html')
params = { 
  :adults => 2,
  :children => 1,
  :adultsv2 => 2,
  :childrenv2 => 7,
  :infants => 0,
  :cabinclass => 'economy',
  :rtn => 1,
  :preferdirects => false,
  :outboundaltsenabled => false,
  :inboundaltsenabled => false,
  :ref => 'home#results'
}

#uri.query = URI.encode_www_form(params)

#res = Net::HTTP.get_response(uri)
#puts res.body if res.is_a?(Net::HTTPSuccess)


uri = URI('https://www.skyscanner.com.br/transport/flights/rioa/mia/171218/180102/airfares-from-rio-de-janeiro-to-miami-international-in-december-2017-and-january-2018.html?adults=2&children=1&adultsv2=2&childrenv2=7&infants=0&cabinclass=economy&rtn=1&preferdirects=false&outboundaltsenabled=false&inboundaltsenabled=false&ref=home')

Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Get.new uri

  response = http.request request # Net::HTTPResponse object
  puts response
end
