# Helper function definitions v1.0.0

# Get timestamp compilation. Eg: 2014-04-17 21:25:00 -0500
module Sass::Script::Functions
    def now()
        return Sass::Script::String.new(Time.now.to_s)
    end
end