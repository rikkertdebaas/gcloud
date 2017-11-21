class MessagesController < ApplicationController
    def new
      @message = Message.new
    end

    def create
      @message = Message.new(message_params)

      if @message.valid?
        MessageMailer.contact_me(@message).deliver_now
        redirect_to new_message_url, notice: "Het bericht is verstuurd, Bedankt!"
      else
        render :new
      end
  end

  private

    def message_params
      params.require(:message).permit(:voornaam, :achternaam, :email, :telefoon, :bericht)
    end
  private
    {
      "type": "service_account",
      "project_id": "cesar-186311",
      "private_key_id": "25441c4a4363efda2dd27efe204ad994bba22321",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCzXEPdd77vh9+L\n05dvBcGwfN37QtJ+w9b4JqpSCx4jVm0nlBYW+2gFR6DtM8iH8X/Hvz7d02YFb33f\nckgxEFAAvb1UBtP3iWh9f9t5qLscPB6IpYCgx1krCPepoZ3mnJEjpaljgGN6Y129\njLhHZhzNV/r1zhpAPc1btKyRxQG+HjPGzQoe+26UEEyMDXAzhYFtmNhY/B4Ll3rf\nUaMSzmEagY7fUqS0VUJhJ+sqExPGOL7c6p9f6L21jgprh8Wv7Y8IMPc9EqTlHlri\n2qlere2wTyefARBgUXeVqvmLZMmgi7bhXd5dg8MKsi6qQ3bi//F0jOgWxh5afrPA\nuV7hkgIBAgMBAAECggEABZdyJa7AoPjOTS6F5XALYWhJJtbG120dT+vrqiZe1Ijy\nmvXkyOdiTyzUHWT8gtFyc3yYtgNrxi5bQRqv2bi5l8ZSh1K1q71IyMXSRq0OFUOi\nC45GT+zbEKqFRxBq6ug1ZaQ530hewY9kuh6vlYk/S18La7uWyasrkmjz6tD2nJHI\ntJF3KLqCzIqafYfjV+0fj0aGWi5p3PNEVdis7KsWzJqjnjaEU6LiJyuO+W2ar6r8\nUbVy+eIq7yJbnyMuTb7rgzmJ3/uZaKIqkYyHXH5rkG5satI0o6121LHrdXf4uBA6\nxqGUD6GuhwaDaAg4AwqFTnkL6pHQQ0eFA5uS/UrbuQKBgQD5yvEyJJL9bCX4Icdc\ny8xR77xHNQsxbYX699i9sDYwNNEdVI5a0pYG3OHV0+0gbtOSYYlWshZPAX1DUiyN\nelBMJvkUWmeeQzlQRhC6vTRKTOdYk/Nsx4OTMjDVNlosOBxsxGaWlqZUBRv5HH0g\nmFjF0nofAqCJfEZvZLyZgcs6GQKBgQC30URsbqnYIP066nARBDWbwxQK24RI/rg8\nXrEzBufif7xJpzFLCYzDgW2UyDz1tCAu2pq5xBdmkXJWXM6kbehoZ3QMW0FVsqDW\nljLNaIHqk4mIcDNX1mAZNpLCaPD3xmIvRRBg63f4Gn2kxBduTPeJe3f2R/nPjwL2\nfHW7+lHUKQKBgBqDO86Cq0dSr0UC8NIcn3ci5uz36FQ6t7nHjK21gkrjkD54txNU\nvq/DygSUFdsXaEVlLNqS1GNWWSFIG4p4rQUoLc/HOLBHmlG23hez9VTdjMCOE4w8\nMO7yqNQ4jKGc4wd4YRsiqkzIrgtmxrEq+mEk0elwsfFly2QPYSU57YQhAoGALwON\nFpavRiIZ4om3pAKJm48nfydqDClqAbbOZ5iqklnNVKE4kFKe+BoQZu9X+Bfb61/q\nFv06ZvdoYQJXr+KUgK+FFOv6J+sKDBhaYgMKx254zLa1yw9/gLNeke65QwYwcpqd\nd8yB4KkV3aBxxbpVzYoQwqLiF94iCd0HV87MQxECgYEAxmTPTz5Aw1wKOUq+VzUz\nkDeM8TNc4KwLEQgR+RAd+4EPmtlkrvhEAtWzVjJciVw+qwqB3iBQ9WZg9GewYt6U\nEVkhX5yGbdiQlfoBfzaFvxSCLA5ba5g8u+/Uts0TQy+aLvYlLt0oFEQ2cjZpffoz\nhJg5UaDoGF3+GUb6YsNZi/M=\n-----END PRIVATE KEY-----\n",
      "client_email": "cesar-186311@appspot.gserviceaccount.com",
      "client_id": "107328921205802426553",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://accounts.google.com/o/oauth2/token",
      "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/cesar-186311%40appspot.gserviceaccount.com"
    }
end
