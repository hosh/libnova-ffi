require 'ffi'
require 'libnova-ffi/data/date'
require 'libnova-ffi/data/zone_date'

module LibNova
  module Calendar
    extend FFI::Library
    ffi_lib 'libnova'

    # http://libnova.sourceforge.net/group__calendar.html

    # TODO: These functions are here to help bootstrap the port. Pure-Ruby implementations should
    # be provided and tested against the C versions with unit tests.

    # void ln_get_date  ( double  JD,
    #                     struct ln_date *  date )
    #
    # Calculate the date from the julian day.
    #
    # Parameters:
    #   JD    Julian day
    #   date  Pointer to new calendar date. Use LibNova::Data::Date
    #
    # Calculate the date from the Julian day
    attach_function :date, :ln_get_date, [:double, LibNova::Data::Date.by_ref], :void

    # int ln_get_date_from_mpc  ( struct ln_date *  date,
    #                             char *  mpc_date )
    #
    # Calculate the local date from the a MPC packed date.
    #
    # Parameters:
    #   date      Pointer to new calendar date. Use LibNova::Data::Date
    #   mpc_date  Pointer to string MPC date
    #
    # Returns:
    #   0 for valid date
    #
    # Calculate the local date from the a MPC packed date. See http://cfa-www.harvard.edu/iau/info/PackedDates.html for info.
    attach_function :date_from_mpc, :ln_get_date_from_mpc, [LibNova::Data::Date.by_ref, :string], :void

    # void ln_get_date_from_sys ( struct ln_date *  date )
    #
    # Calculate date from system date.
    #
    # Parameters:
    #   date  Pointer to store date. Use LibNova::Data::Date
    #
    # Calculate local date from system date.
    attach_function :date_from_sys, :ln_get_date_from_sys, [LibNova::Data::Date.by_ref], :void

    # unsigned int ln_get_day_of_week ( struct ln_date *  date )
    #
    # Calculate day of the week.
    #
    # Parameters:
    #   date  Date required. Use LibNova::Data::Date
    # Returns:
    #   Day of the week
    #
    # Calculate the day of the week. Returns 0 = Sunday .. 6 = Saturday
    attach_function :day_of_week, :ln_get_day_of_week, [LibNova::Data::Date.by_ref], :uint

    # void ln_get_local_date (double JD, struct ln_zonedate * zonedate)
    # Get local date from Julian Day
    # Parameters
    #   jd       Julian Day
    #   zonedate Pointer to store local date. Use LibNova::Data::ZoneDate
    attach_function :local_date, :ln_get_local_date, [:double, LibNova::Data::ZoneDate.by_ref], :void

    # double ln_get_julian_day  ( struct ln_date *  date )
    #
    # Calculate the julian day from date.
    #
    # Parameters:
    #   date  Date required. Use LibNova::Data::Date
    # Returns:
    #   Julian day
    #
    # Calculate the julian day from a calendar day. Valid for positive and negative years but not for negative JD.
    attach_function :julian_day, :ln_get_julian_day, [LibNova::Data::Date.by_ref], :double

    # double ln_get_julian_from_mpc ( char *  mpc_date )
    #
    # Calculate the julian day from the a MPC packed date.
    #
    # Parameters:
    #   mpc_date  Pointer to string MPC date
    # Returns:
    #   Julian day.
    # Calculate the julian day from the a MPC packed date. See http://cfa-www.harvard.edu/iau/info/PackedDates.html for info.
    attach_function :julian_from_mpc, :ln_get_julian_from_mpc, [:string], :double

    # double ln_get_julian_from_sys (    )
    # Calculate julian day from system time.
    #
    # Returns:
    #   Julian day (UT)
    # Calculate the julian day (UT) from the local system time
    attach_function :julian_from_sys, :ln_get_julian_from_sys, [], :double

    # double ln_get_julian_from_timet ( time_t *  in_time  )
    # NOT IMPLEMENTED
    # TODO: Find out what time_t type is
    #
    # Calculate julian day from time_t.
    #
    # Parameters:
    #   time  The time_t.
    # Returns:
    #   Julian day.
    # Calculate Julian day from time_t.

    # double ln_get_julian_local_date ( struct ln_zonedate *  zonedate )
    #
    # Calculate Julian day from local date.
    #
    # Parameters:
    #   zonedate  Local date. Use LibNova::Data::ZoneDate
    # Returns:
    #   Julian day (UT)
    # Calculate Julian day (UT) from zone date
    attach_function :julian_local_date, :ln_get_julian_local_date, [LibNova::Data::ZoneDate.by_ref], :double

    # void ln_get_timet_from_julian ( double  JD,
    #                                 time_t *  in_time)
    # NOT IMPLEMENTED
    # TODO: Find out what time_t is
    # Calculate time_t from julian day.
    #
    # Parameters:
    #   JD  Julian day
    #   in_time   Pointer to store time_t
    # Calculate time_t from julian day

  end
end
