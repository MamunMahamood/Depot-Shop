class OrderMailer < ApplicationMailer
  default from: 'DEPOT SHOP <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail to: @order.email, subject: 'Depot Shop Order Confirmation'
  end
end
