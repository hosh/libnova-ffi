require 'ffi'

module LibNova
  module Data
    class RSTTime < FFI::Struct
      # Rise, Set and Transit times.

      # Contains the Rise, Set and transit times for a body.
      # Angles are expressed in degrees.

      # Maps to struct ln_rst_time
      # http://libnova.sourceforge.net/structln__rst_time.html

      layout :rise,    :double, # Rise time (JD)
             :set,     :double, # Set time (JD)
             :transit, :double  # Transit time (JD)

    end
  end
end
