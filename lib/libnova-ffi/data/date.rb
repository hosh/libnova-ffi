require 'ffi'

module LibNova
  module Data
    class Date < FFI::Struct
      # Maps to struct ln_date
      # http://libnova.sourceforge.net/structln__date.html

      layout :years,   :int,
             :months,  :int,
             :days,    :int,
             :hours,   :int,
             :minutes, :int,
             :seconds, :double

    end
  end
end
