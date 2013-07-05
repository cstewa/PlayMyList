class Track < ActiveRecord::Base
  attr_accessible :url
  belongs_to :playlist


  def embed_info
    client = Soundcloud.new(:client_id => 'd934a1c90d9d16288578bac5d6800e8e', 
  		:client_secret => '23d8c41c38328fc9e4a138789977ba0a')
    embed_info = client.get('/oembed', :url => self.url)
    embed_info['html'].html_safe
  end



end
