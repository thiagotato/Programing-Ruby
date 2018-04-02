a = ["bundle-oi",
"bundle-stream-consumer",
"busuu-notifier",
"cannibalcorpse-sync",
"cartaosva",
"consumeroiligou",
"consumertimavisa",
"cusno-api",
"fortuna",
"generic-notifier",
"landync",
"megasms-gateway",
"oi-bundle-checker",
"oi-concierge",
"oi-fixo",
"promo_sms_worker",
"slayer-billing",
"slayer-bundle",
"slayer-message",
"slayer-subscription",
"speedy-gonzales",
"subscription-queue-consumer",
"subscription-stream-consumer",
"tartarus",
"tigo-billing-co",
"tigo-consumer-co",
"truecaller-event",
"turbo7",
"venom-message",
"venom-subscription",
"voucher-cocacola",
"voucher-tiendas"]

a.each {|id| 
  puts "- pipeline.id: #{id}"
  puts "  pipeline.batch.size: 125"
  puts "  pipeline.batch.delay: 50"
  puts "  path.config: \"/etc/logstash/conf.d/#{id}.conf\"", "\n"
}

