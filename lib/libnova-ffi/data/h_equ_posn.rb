require 'ffi'

module LibNova
  module Data
    class HEquPosn < FFI::Struct
      # Human Readable Equitorial Coordinates
      # Maps to struct lnh_equ_posn
      # http://libnova.sourceforge.net/structlnh__equ__posn.html

      layout :ra,  LibNova::Data::HMS, # RA. Object right ascension (degrees)
             :dec, LibNova::Data::DMS  # DEC. Object declination (degrees)

    end
  end
end
