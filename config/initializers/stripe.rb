=begin
Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_BHyPYRFpBhmBmlvwo6NLzsEc'],
  :secret_key      => ENV['sk_test_Olv2231XuGcFajxnDpFDChgn']
}

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}
=end

Rails.configuration.stripe = {
  :publishable_key => 'pk_test_BHyPYRFpBhmBmlvwo6NLzsEc',
  :secret_key      => 'sk_test_Olv2231XuGcFajxnDpFDChgn'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]

