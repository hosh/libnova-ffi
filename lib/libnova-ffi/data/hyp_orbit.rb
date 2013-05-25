require 'ffi'

module LibNova
  module Data
    class HypOrbit < FFI::Struct
      # Hyperbolic Orbital elements

      # Maps to struct ln_hyp_orbit
      # http://libnova.sourceforge.net/structln__hyp__orbit.html

      layout :q,     :double, # Perihelion distance (AU)
             :e,     :double, # Eccentricity
             :i,     :double, # Inclination (degrees)
             :w,     :double, # Argument of perihelion (degrees)
             :omega, :double, # Longitude of ascending node (degrees)
             :jd,    :double  # Time of last passage in Perihelion (julian day)

    end
  end
end
