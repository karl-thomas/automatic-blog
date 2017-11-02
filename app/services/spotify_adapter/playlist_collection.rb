class SpotifyAdapter
  class PlaylistCollection < SpotifyAdapter
    attr_reader :playlists
    def initialize(playlists)
      @playlists = sanitize_playlists(playlists)
    end

    def recent_playlists
      playlist.select &:recent?
    end

    def all_recent_tracks
      playlists.flat_map {|playlist| playlist.recent_tracks }
    end

    def group_tracks_by_date
      all_recent_tracks.group_by { |track| track.added_at.to_date.to_s }
    end

    def count_of_tracks_by_date
      group_tracks_by_date.map {|date, tracks| [ date, {added_tracks: tracks.count } ] }.to_h
    end

    def sanitize_playlists(playlists)
      playlists.map { |pl| SpotifyAdapter::Playlist.new(pl.id)}
    end
  end

end


# def recently_added_tracks
#     arr = recent_playlists.flat_map {|playlist| recent_tracks(playlist) }
#     arr.reduce { |agg, value| agg.merge(value) }
#   end



