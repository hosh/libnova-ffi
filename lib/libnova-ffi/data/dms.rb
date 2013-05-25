require 'ffi'

module LibNova
  module Data
    class DMS < FFI::Struct
      # Maps to struct ln_dms
      # http://libnova.sourceforge.net/structln__dms.html

      layout :neg,     :ushort,
             :degrees, :ushort,
             :minutes, :ushort,
             :seconds, :double

    end
  end
end
