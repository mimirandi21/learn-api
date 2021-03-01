class SportsTeamsSerializer

    def initialize(st_obj)
        @st = st_obj
    end

    def to_serialized_json
        @st.to_json
    end
end