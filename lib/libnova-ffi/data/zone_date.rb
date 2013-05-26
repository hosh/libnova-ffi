require 'ffi'

module LibNova
  module Data
    class ZoneDate < FFI::Struct
      # Human readable Date and time with timezone information used by libnova.
      # This is the Human readable (easy printf) date with timezone format used by libnova.

      # Maps to struct ln_zonedate
      # http://libnova.sourceforge.net/structln__zonedate.html

      layout :years,   :int,    # All values valid. See libnova documentation for predictive accuracy
             :months,  :int,    # Valid values: 1 - 12
             :days,    :int,    # Valid values: 1 - 28,29,30,31 Depends on month
             :hours,   :int,    # Valid values: 0 - 23
             :minutes, :int,    # Valid values: 0 - 59
             :seconds, :double, # Valid values: 0 - 59.999999...
             :gmtoff,  :long    # Seconds east of UTC. Valid values 0..86400

    end
  end
end
