require 'ffi'

module LibNova
  module Data
    class EquPosn < FFI::Struct
      # Equitorial Coordinates
      # Maps to struct ln_equ_posn
      # http://libnova.sourceforge.net/structln__equ__posn.html

      layout :ra,  :double, # RA. Object right ascension (degrees)
             :dec, :double  # DEC. Object declination (degrees0

    end
  end
end
