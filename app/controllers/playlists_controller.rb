class PlaylistsController < ApplicationController

def index
	@playlists = Playlist.all 
end

def search 
	@track = Track.new
end

def new
	@playlist = Playlist.new
end

def create
	@playlist = Playlist.create
end

def add_tracks
	@playlist = Playlist.find(params[:playlist][:id])
	@tracks = []
	params['url'].each do |url|
		@tracks << Track.create(:url => url)
	end 
	@playlist.tracks << @tracks
end

def show
end 

end 