require 'httparty' 

class JsonClient
  include HTTParty
  base_uri '124.127.116.178'

  def questions
   
    @data = {"0"=>{:name => "xiaowei1",:mac=>"AABBCCDDEEDD", :redirect_url =>"http://ww.sina.com", :portal_url => "http://baidu.com"},"1"=>{:name=>"xiaowei2",:mac=>"112233445566",:redirect_url=>"baidu.com",:portal_url =>"http://www.sina.com"},"2"=>{:name=>"xiaowei3",:mac=>"334455667788",:redirect_url=>"xxxx",:portal_url=>"www.sohu.com"}}

    result = HTTParty.post("http://124.127.116.177/bindurl", 
                           :body => {
                            :username => "admin",
                            :password => "ctbri@2014",
                            :data => @data
                            }.to_json,
      :headers => { 'Content-Type' => 'application/json' } )
  end

end

stack_exchange = JsonClient.new
puts stack_exchange.questions
