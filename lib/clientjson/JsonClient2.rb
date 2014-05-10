require 'httparty' 

class JsonClient2
  include HTTParty
  base_uri '124.127.116.178'

  def questions
   
    @data = [{:name => "netcore",:mac=>"04:8D:38:26:4D:08", :redirect_url =>"http://218.94.58.242/xweicms/ctwifi/busi/jingchanhe/jingchanhe-login.jsp?apid=29", :portal_url => "http://218.94.58.242/xweicms/ctwifi/busi/jingchanhe/jingchanhe-wel.jsp?apid=29"}]

    result = HTTParty.post("http://117.34.78.195/bindurl.json", 
                           :body => {
                            :username => "xweiuser",
                            :password => "wifictbri",
                            :data => @data
                            }.to_json,
      :headers => { 'Content-Type' => 'application/json' } )
  end

end

stack_exchange = JsonClient2.new
puts stack_exchange.questions
