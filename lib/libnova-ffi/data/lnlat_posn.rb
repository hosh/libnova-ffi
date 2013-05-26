require 'ffi'

module LibNova
  module Data
    class LnLatPosn < FFI::Struct
      # Ecliptical (or celestial) Longitude and Latitude.

      # The Ecliptical (or celestial) Latitude and Longitude of and object.
      # Angles are expressed in degrees. East is positive, West negative.

      # Maps to struct ln_lnlat_posn
      # http://libnova.sourceforge.net/structln__lnlat__posn.html

      layout :lng, :double, # longitude (degrees)
             :lat, :double  # latitude (degrees)

    end
  end
end
