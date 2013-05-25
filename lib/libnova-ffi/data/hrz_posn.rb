require 'ffi'

module LibNova
  module Data
    class HrzPosn < FFI::Struct
      # Horizontal Coordinates

      # The Azimuth and Altitude of an object.
      # Angles are expressed in degrees.

      # Maps to struct ln_hrz_posn
      # http://libnova.sourceforge.net/structln__hrz__posn.html

      layout :az,  :double, # AZ. Object azimuth (degrees)
             :alt, :double  # ALT. Object altitude (degrees)

    end
  end
end
