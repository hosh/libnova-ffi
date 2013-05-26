require 'ffi'

module LibNova
  module Data
    class ParOrbit < FFI::Struct
      # Parabolic Orbital elements

      # Maps to struct ln_par_orbit
      # http://libnova.sourceforge.net/structln__par__orbit.html

      layout :q,     :double, # Perihelion distance (AU)
             :i,     :double, # Inclination (degrees)
             :w,     :double, # Argument of perihelion (degrees)
             :omega, :double, # Longitude of ascending node (degrees)
             :jd,    :double  # Time of last passage in Perihelion (julian day)

    end
  end
end
