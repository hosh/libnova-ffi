require 'ffi'

module LibNova
  module Data
    class EllOrbit < FFI::Struct
      # Elliptic Orbital elements

      # Maps to struct ln_ell_orbit
      # http://libnova.sourceforge.net/structln__ell__orbit.html

      layout :a,     :double, # Semi major axis (AU)
             :e,     :double, # Eccentricity
             :i,     :double, # Inclination (degrees)
             :w,     :double, # Argument of perihelion (degrees)
             :omega, :double, # Longitude of ascending node (degrees)
             :n,     :double, # Mean motion (degrees/day)
             :jd,    :double  # Time of last passage in Perihelion (julian day)

    end
  end
end
