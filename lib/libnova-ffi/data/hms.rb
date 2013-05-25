require 'ffi'

module LibNova
  module Data
    class HMS < FFI::Struct
      # Maps to struct ln_hms
      # http://libnova.sourceforge.net/structln__dms.html

      layout :hours,   :ushort,
             :minutes, :ushort,
             :seconds, :double

    end
  end
end
