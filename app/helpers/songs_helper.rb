module SongsHelper
    
    def artist_select(song)
        # if the passed in song does not have an artist,
        if song.artist.nil?
            # create a select_tag for the song's artist_id. Shows all Artists in the list, assigns the id, based on the name chosen.
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
            # Else, the artist_id does have a value, create a hidden_field tag that assigns the artist_id.
            hidden_field_tag "song[artist_id]", song.artist_id
        end
    end

end
