require 'ffi'
require 'libnova-ffi/data/lnlat_posn'
require 'libnova-ffi/data/equ_posn'
require 'libnova-ffi/data/rect_posn'
require 'libnova-ffi/data/helio_posn'
require 'libnova-ffi/data/rst_time'

module LibNova
  module Solar
    extend FFI::Library
    ffi_lib 'libnova'

    # Solar functions
    # http://libnova.sourceforge.net/group__solar.html

    # void ln_get_solar_ecl_coords  ( double  JD,
    #                                 struct ln_lnlat_posn *  position )
    # Calculate apparent ecliptical coordinates.
    #
    # Parameters:
    #   JD        Julian day
    #   position  Pointer to store calculated solar position. Use LibNova::Data::LnLatPosn
    #
    # Calculate apparent ecliptical solar coordinates for given julian day. This function includes the
    # effects of aberration and nutation.
    attach_function :ecl_coords, :ln_get_solar_ecl_coords, [:double, :pointer], :void

    # void ln_get_solar_equ_coords  ( double  JD,
    #                                 struct ln_equ_posn *  position )
    # Calculate apparent equatorial coordinates.
    #
    # Parameters:
    #   JD        Julian day
    #   position  Pointer to store calculated solar position. Use LibNova::Data::EquPosn
    #
    # Calculate apparent equatorial solar coordinates for given julian day. This function includes the
    # effects of aberration and nutation.
    attach_function :equ_coords, :ln_get_solar_equ_coords, [:double, :pointer], :void

    # void ln_get_solar_geo_coords  ( double  JD,
    #                                 struct ln_rect_posn *   position )
    #
    # Calculate geocentric coordinates (rectangular).
    #
    # Parameters:
    #   JD        Julian day
    #   position  Pointer to store calculated solar position. Use LibNova::Data::RectPosn
    #
    # Calculate geocentric coordinates (rectangular) for given julian day. Accuracy 0.01 arc second
    # error - uses VSOP87 solution. Position returned is in units of AU.
    attach_function :geo_coords, :ln_get_solar_geo_coords, [:double, :pointer], :void

    # void ln_get_solar_geom_coords ( double  JD,
    #                                 struct ln_helio_posn *  position )
    #
    # Calculate solar geometric coordinates.
    #
    # Parameters:
    #   JD        Julian day
    #   position  Pointer to store calculated solar position. Use LibNova::Data::HelioPosn
    #
    # Calculate geometric coordinates and radius vector accuracy 0.01 arc second error - uses VSOP87 solution.
    # Latitude and Longitude returned are in degrees, whilst radius vector returned is in AU.
    attach_function :geom_coords, :ln_get_solar_geom_coords, [:double, :pointer], :void

    # double ln_get_solar_rst ( double  JD,
    #                           struct ln_lnlat_posn *  observer,
    #                           struct ln_rst_time *  rst )
    #
    # Calculate the time of rise, set and transit for the Sun.
    #
    # Parameters:
    #   JD       Julian day
    #   observer latitude/longitude of the observer on Earth. Use LibNova::Data::LnLatPosn
    #   rst_time pointer to store rise, set, and time information. Use LibNova::Data::RSTTime
    #
    # Calls get_solar_rst_horizon with horizon set to LN_SOLAR_STANDART_HORIZON.
    attach_function :rst, :ln_get_solar_rst, [:double, :pointer, :pointer], :double

    # double ln_get_solar_sdiam ( double  JD )
    #
    # Calculate the semidiameter of the Sun in arc seconds.
    #
    # Parameters:
    #   JD  Julian day
    # Returns:
    #   Semidiameter in arc seconds
    #
    # Calculate the semidiameter of the Sun in arc seconds for the given julian day.
    attach_function :sdiam, :ln_get_solar_sdiam, [:double], :double
  end
end
