require 'ffi'

module LibNova
  module Data
    class HelioPosn < FFI::Struct
      # Heliocentric position.

      # A heliocentric position is an objects position relative to the centre of the Sun.
      # Angles are expressed in degrees. Radius vector is in AU.

      # Maps to struct ln_helio_posn
      # http://libnova.sourceforge.net/structln__helio__posn.html

      layout :l, :double, # Heliocentric longitude (degrees)
             :b, :double, # Heliocentric latitude (degrees)
             :r, :double  # Heliocentric radius vector (AU)

    end
  end
end
