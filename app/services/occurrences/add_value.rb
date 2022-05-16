module Occurrences
  class AddValue
    def initialize(occurrence)
      @occurrence = occurrence
    end

    def call
      add_value
    end

    private

    attr_accessor :occurrence


    def add_value
      Occurrence.type_names.each do |name, _|
        if name == occurrence.type_name
          index = Occurrence.type_names["#{occurrence.type_name}"]
          occurrence.value = values[index]
        end
      end
    end

    def values
      [10, 16, 10, 8, 6, 4, 8, 10, 16, 1]
    end
  end
end
