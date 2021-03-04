class GeneralsSerializer

    def initialize(generals_obj)
        @generals = generals_obj
    end

    def to_serialized_json
        @generals.to_json
    end
end