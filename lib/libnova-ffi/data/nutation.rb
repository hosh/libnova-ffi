require 'ffi'

module LibNova
  module Data
    class Nutation < FFI::Struct
      # Nutation in longitude, ecliptic and obliquity.

      # Contains Nutation in longitude, obliquity and ecliptic obliquity.
      # Angles are expressed in degrees.

      # Maps to struct ln_nutation
      # http://libnova.sourceforge.net/structln__nutation.html

      layout :longitude, :double, # Nutation in longitude (degrees)
             :obliquity, :double, # Nutation in obliquity (degrees)
             :ecliptic,  :double  # Nutation in ecliptic (degrees)

    end
  end
end
