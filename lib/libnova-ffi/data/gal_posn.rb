require 'ffi'

module LibNova
  module Data
    class GalPosn < FFI::Struct
      # Galactic Coordinates
      # Maps to struct ln_gal_posn
      # http://libnova.sourceforge.net/structln__gal__posn.html

      layout :l, :double, # Galactic longitude (degrees)
             :b, :double  # Galactic latitude (degrees)

    end
  end
end
