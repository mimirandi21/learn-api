class PoliticsSerializer

    def initialize(politics_obj)
        @politics = politics_obj
    end

    def to_serialized_json
        @politics.to_json
    end
end