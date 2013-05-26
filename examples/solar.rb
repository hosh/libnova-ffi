#!/usr/bin/env ruby
# Ported from http://libnova.sourceforge.net/sun_8c-example.html

$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'libnova-ffi/solar'
require 'libnova-ffi/calendar'

def print_date(title, zonedate)
  puts "\n#{title}",
       "  Year:    #{zonedate[:years]}",
       "  Month:   #{zonedate[:months]}",
       "  Day:     #{zonedate[:days]}",
       "  Hours:   #{zonedate[:hours]}",
       "  Minutes: #{zonedate[:minutes]}",
       "  Seconds: #{zonedate[:seconds]}"
end

equ      = LibNova::Data::EquPosn.new
rst      = LibNova::Data::RSTTime.new
pos      = LibNova::Data::HelioPosn.new
observer = LibNova::Data::LnLatPosn.new

rise, set, transit = (1..3).to_a.map { LibNova::Data::ZoneDate.new }

# observers location (Edinburgh), used to calc rst
observer[:lat] = 55.92 # 55.92 N
observer[:lng] = -3.18 # 3.18 W

# get Julian day from local time
jd = LibNova::Calendar.julian_from_sys
puts "JD #{jd}"

# geometric coordinates
LibNova::Solar.geom_coords(jd, pos)
puts "Solar Coords lng (deg) #{pos[:l]}",
     "             lat (deg) #{pos[:b]}",
     "             radius vector (AU) #{pos[:r]}"

# ra, dec
LibNova::Solar.equ_coords(jd, equ)
puts "Solar Position RA  #{equ[:ra]}",
     "               DEC #{equ[:dec]}"

# rise, set and transit
if LibNova::Solar.rst(jd, observer, rst) == 1
  puts "Sun is circumpolar\n";
else
  LibNova::Calendar.local_date(rst[:rise], rise)
  LibNova::Calendar.local_date(rst[:transit], transit)
  LibNova::Calendar.local_date(rst[:set], set)

  print_date 'Rise', rise
  print_date 'Transit', transit
  print_date 'Set', set
end
