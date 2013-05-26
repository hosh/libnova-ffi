require 'ffi'

module LibNova
  module Data
    class HLnLatPosn < FFI::Struct
      # Human Readable Ecliptical (or celestial) Longitude and Latitude.

      # The Ecliptical (or celestial) Latitude and Longitude of and object.
      # Angles are expressed in degrees. East is positive, West negative.

      # Maps to struct lnh_lnlat_posn
      # http://libnova.sourceforge.net/structlnh__lnlat__posn.html

      layout :lng, LibNova::Data::DMS, # longitude (degrees)
             :lat, LibNova::Data::DMS, # latitude (degrees)

    end
  end
end
