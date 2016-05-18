class ChargesController < ApplicationController

def index
	
    if session[:user_email]         
      #	@users = User.all
      redirect_to users_path
     else
      	redirect_to root_path
    end
	
end

def new
end

def create
  # Amount in cents
  @amount = 1000

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )
	
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end


end
