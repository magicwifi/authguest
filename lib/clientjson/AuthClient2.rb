require 'httparty' 

class AuthClient2
  include HTTParty
  base_uri '124.127.116.178'

  def questions
    result = HTTParty.post("http://124.127.116.178/update_auth_device.json", 
                           :body => {
                            :username => "xweiuser",
                            :password => "wifictbri",
                            :mac => "048D38264D08",
                            :authdevice => "1",
                            :times => "3",
                            :available =>"5"
                            }.to_json,
      :headers => { 'Content-Type' => 'application/json' } )
  end

end

stack_exchange = AuthClient2.new
puts stack_exchange.questions
