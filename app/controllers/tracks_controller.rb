class TracksController < ApplicationController

def result
	@playlist = Playlist.new
	@query = params["track"]["url"]

	@client = Soundcloud.new(:client_id => 'd934a1c90d9d16288578bac5d6800e8e',
  		:client_secret => '23d8c41c38328fc9e4a138789977ba0a')
	@tracks = @client.get('/tracks', :q => @query)
	render "result"
end

end

