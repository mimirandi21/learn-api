class CapitalsSerializer

    def initialize(capitals_obj)
        @capitals = capitals_obj
    end

    def to_serialized_json
        @capitals.to_json
    end
end