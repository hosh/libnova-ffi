require 'ffi'

module LibNova
  module Data
    class RectPosn < FFI::Struct
      # Rectangular Coordinates of a body. These coordinates can be either geocentric or heliocentric.

      # A heliocentric position is an objects position relative to the centre of the Sun.
      # A geocentric position is an objects position relative to the centre of the Earth.
      # Position is in units of AU for planets and in units of km for the Moon.

      # Maps to struct ln_helio_posn
      # http://libnova.sourceforge.net/structln__helio__posn.html

      layout :x, :double, # AU for planets, km for Moon
             :y, :double, # AU for planets, km for Moon
             :z, :double  # AU for planets, km for Moon

    end
  end
end
