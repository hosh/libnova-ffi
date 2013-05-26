require 'ffi'

module LibNova
  module Data
    class HHrzPosn < FFI::Struct
      # Human Readable Horizontal Coordinates

      # The Azimuth and Altitude of an object.
      # Angles are expressed in degrees.

      # Maps to struct lnh_hrz_posn
      # http://libnova.sourceforge.net/structlnh__hrz__posn.html

      layout :az,  LibNova::Data::DMS, # AZ. Object azimuth (degrees)
             :alt, LibNova::Data::DMS  # ALT. Object altitude (degrees)

    end
  end
end
