package stdgo._internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
import stdgo._internal.time.Time;
var _c : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
final _windowsInaccuracy : stdgo._internal.time.Time.Duration = (17000000i64 : stdgo._internal.time.Time.Duration);
final _unixToZero : stdgo.GoUInt64 = (62135596800i64 : stdgo.GoUInt64);
var _t : Time = ({} : stdgo._internal.time.Time.Time);
var _u : stdgo.GoInt64 = (0 : stdgo.GoInt64);
final _minDuration : stdgo._internal.time.Time.Duration = (-9223372036854775808i64 : stdgo._internal.time.Time.Duration);
final _maxDuration : stdgo._internal.time.Time.Duration = (9223372036854775807i64 : stdgo._internal.time.Time.Duration);
final _testdataRFC3339UTC : stdgo.GoString = ("2020-08-22T11:27:43.123456789Z" : stdgo.GoString);
final _testdataRFC3339TZ : stdgo.GoString = ("2020-08-22T11:27:43.123456789-02:00" : stdgo.GoString);
var _nextStdChunkTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("(2006)-(01)-(02)T(15):(04):(05)(Z07:00)" : stdgo.GoString), ("(2006)-(01)-(02) (002) (15):(04):(05)" : stdgo.GoString), ("(2006)-(01) (002) (15):(04):(05)" : stdgo.GoString), ("(2006)-(002) (15):(04):(05)" : stdgo.GoString), ("(2006)(002)(01) (15):(04):(05)" : stdgo.GoString), ("(2006)(002)(04) (15):(04):(05)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _rfc3339Formats : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeFormatTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.TimeFormatTest>(3, 3, ...[(new stdgo._internal.time_test.Time_test.TimeFormatTest(date((2008 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (17 : stdgo.GoInt), (20 : stdgo.GoInt), (4 : stdgo.GoInt), (26 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), ("2008-09-17T20:04:26Z" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.TimeFormatTest), (new stdgo._internal.time_test.Time_test.TimeFormatTest(date((1994 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (17 : stdgo.GoInt), (20 : stdgo.GoInt), (4 : stdgo.GoInt), (26 : stdgo.GoInt), (0 : stdgo.GoInt), fixedZone(("EST" : stdgo.GoString), (-18000 : stdgo.GoInt)))?.__copy__(), ("1994-09-17T20:04:26-05:00" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.TimeFormatTest), (new stdgo._internal.time_test.Time_test.TimeFormatTest(date((2000 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (26 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (6 : stdgo.GoInt), (0 : stdgo.GoInt), fixedZone(("OTO" : stdgo.GoString), (15600 : stdgo.GoInt)))?.__copy__(), ("2000-12-26T01:15:06+04:20" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.TimeFormatTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.TimeFormatTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeFormatTest>);
var _formatTests : stdgo.Slice<stdgo._internal.time_test.Time_test.FormatTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.FormatTest>(29, 29, ...[
(new stdgo._internal.time_test.Time_test.FormatTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Wed Feb  4 21:00:57 2009" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("UnixDate" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb  4 21:00:57 PST 2009" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Wed Feb 04 21:00:57 -0800 2009" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RFC822" : stdgo.GoString), ("02 Jan 06 15:04 MST" : stdgo.GoString), ("04 Feb 09 21:00 PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RFC850" : stdgo.GoString), ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString), ("Wednesday, 04-Feb-09 21:00:57 PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RFC1123" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), ("Wed, 04 Feb 2009 21:00:57 PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RFC1123Z" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 -0700" : stdgo.GoString), ("Wed, 04 Feb 2009 21:00:57 -0800" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RFC3339" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2009-02-04T21:00:57-08:00" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("RFC3339Nano" : stdgo.GoString), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString), ("2009-02-04T21:00:57.0123456-08:00" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Kitchen" : stdgo.GoString), ("3:04PM" : stdgo.GoString), ("9:00PM" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("am/pm" : stdgo.GoString), ("3pm" : stdgo.GoString), ("9pm" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("AM/PM" : stdgo.GoString), ("3PM" : stdgo.GoString), ("9PM" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("two-digit year" : stdgo.GoString), ("06 01 02" : stdgo.GoString), ("09 02 04" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Janet" : stdgo.GoString), ("Hi Janet, the Month is January" : stdgo.GoString), ("Hi Janet, the Month is February" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Stamp" : stdgo.GoString), ("Jan _2 15:04:05" : stdgo.GoString), ("Feb  4 21:00:57" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("StampMilli" : stdgo.GoString), ("Jan _2 15:04:05.000" : stdgo.GoString), ("Feb  4 21:00:57.012" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("StampMicro" : stdgo.GoString), ("Jan _2 15:04:05.000000" : stdgo.GoString), ("Feb  4 21:00:57.012345" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("StampNano" : stdgo.GoString), ("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Feb  4 21:00:57.012345600" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("DateTime" : stdgo.GoString), ("2006-01-02 15:04:05" : stdgo.GoString), ("2009-02-04 21:00:57" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("DateOnly" : stdgo.GoString), ("2006-01-02" : stdgo.GoString), ("2009-02-04" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("TimeOnly" : stdgo.GoString), ("15:04:05" : stdgo.GoString), ("21:00:57" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("YearDay" : stdgo.GoString), ("Jan  2 002 __2 2" : stdgo.GoString), ("Feb  4 035  35 4" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Year" : stdgo.GoString), ("2006 6 06 _6 __6 ___6" : stdgo.GoString), ("2009 6 09 _6 __6 ___6" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Month" : stdgo.GoString), ("Jan January 1 01 _1" : stdgo.GoString), ("Feb February 2 02 _2" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("DayOfMonth" : stdgo.GoString), ("2 02 _2 __2" : stdgo.GoString), ("4 04  4  35" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("DayOfWeek" : stdgo.GoString), ("Mon Monday" : stdgo.GoString), ("Wed Wednesday" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Hour" : stdgo.GoString), ("15 3 03 _3" : stdgo.GoString), ("21 9 09 _9" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Minute" : stdgo.GoString), ("4 04 _4" : stdgo.GoString), ("0 00 _0" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest),
(new stdgo._internal.time_test.Time_test.FormatTest(("Second" : stdgo.GoString), ("5 05 _5" : stdgo.GoString), ("57 57 _57" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.FormatTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.FormatTest>);
var _goStringTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(4, 4, ...[({ _in : date((2009 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (5 : stdgo.GoInt), (5 : stdgo.GoInt), (0 : stdgo.GoInt), (57 : stdgo.GoInt), (12345600 : stdgo.GoInt), utc)?.__copy__(), _want : ("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.UTC)" : stdgo.GoString) } : T__struct_1), ({ _in : date((2009 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (5 : stdgo.GoInt), (5 : stdgo.GoInt), (0 : stdgo.GoInt), (57 : stdgo.GoInt), (12345600 : stdgo.GoInt), local)?.__copy__(), _want : ("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Local)" : stdgo.GoString) } : T__struct_1), ({ _in : date((2009 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (5 : stdgo.GoInt), (5 : stdgo.GoInt), (0 : stdgo.GoInt), (57 : stdgo.GoInt), (12345600 : stdgo.GoInt), fixedZone(("Europe/Berlin" : stdgo.GoString), (10800 : stdgo.GoInt)))?.__copy__(), _want : ("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Location(\"Europe/Berlin\"))" : stdgo.GoString) } : T__struct_1), ({ _in : date((2009 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (5 : stdgo.GoInt), (5 : stdgo.GoInt), (0 : stdgo.GoInt), (57 : stdgo.GoInt), (12345600 : stdgo.GoInt), fixedZone(("Non-ASCII character ⏰" : stdgo.GoString), (10800 : stdgo.GoInt)))?.__copy__(), _want : ("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Location(\"Non-ASCII character \\xe2\\x8f\\xb0\"))" : stdgo.GoString) } : T__struct_1)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _in : ({} : stdgo._internal.time.Time.Time), _want : ("" : stdgo.GoString) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _parseTests : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTest>(53, 53, ...[
(new stdgo._internal.time_test.Time_test.ParseTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("UnixDate" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57 PST 2010" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 04 21:00:57 -0800 2010" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC850" : stdgo.GoString), ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString), ("Thursday, 04-Feb-10 21:00:57 PST" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC1123" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), ("Thu, 04 Feb 2010 21:00:57 PST" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC1123" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), ("Thu, 04 Feb 2010 22:00:57 PDT" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC1123Z" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 -0700" : stdgo.GoString), ("Thu, 04 Feb 2010 21:00:57 -0800" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC3339" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2010-02-04T21:00:57-08:00" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("custom: \"2006-01-02 15:04:05-07\"" : stdgo.GoString), ("2006-01-02 15:04:05-07" : stdgo.GoString), ("2010-02-04 21:00:57-08" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.0 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("UnixDate" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.01 PST 2010" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 04 21:00:57.012 -0800 2010" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC850" : stdgo.GoString), ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString), ("Thursday, 04-Feb-10 21:00:57.0123 PST" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC1123" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), ("Thu, 04 Feb 2010 21:00:57.01234 PST" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC1123Z" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 -0700" : stdgo.GoString), ("Thu, 04 Feb 2010 21:00:57.01234 -0800" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("RFC3339" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2010-02-04T21:00:57.012345678-08:00" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("custom: \"2006-01-02 15:04:05\"" : stdgo.GoString), ("2006-01-02 15:04:05" : stdgo.GoString), ("2010-02-04 21:00:57.0" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb 4 21:00:57 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu      Feb     4     21:00:57     2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("THU FEB 4 21:00:57 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("thu feb 4 21:00:57 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("millisecond:: dot separator" : stdgo.GoString), ("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.012 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("microsecond:: dot separator" : stdgo.GoString), ("Mon Jan _2 15:04:05.000000 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.012345 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("nanosecond:: dot separator" : stdgo.GoString), ("Mon Jan _2 15:04:05.000000000 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.012345678 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("millisecond:: comma separator" : stdgo.GoString), ("Mon Jan _2 15:04:05,000 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.012 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("microsecond:: comma separator" : stdgo.GoString), ("Mon Jan _2 15:04:05,000000 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.012345 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("nanosecond:: comma separator" : stdgo.GoString), ("Mon Jan _2 15:04:05,000000000 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57.012345678 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("zero1" : stdgo.GoString), ("2006.01.02.15.04.05.0" : stdgo.GoString), ("2010.02.04.21.00.57.0" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("zero2" : stdgo.GoString), ("2006.01.02.15.04.05.00" : stdgo.GoString), ("2010.02.04.21.00.57.01" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("Janet" : stdgo.GoString), ("Hi Janet, the Month is January: Jan _2 15:04:05 2006" : stdgo.GoString), ("Hi Janet, the Month is February: Feb  4 21:00:57 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(("GMT-8" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Fri Feb  5 05:00:57 GMT-8 2010" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05.9999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05.999999999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05.9999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.0123 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05.999999999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.0123 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05.9999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.012345678 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05.999999999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.012345678 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05,9999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05,999999999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05,9999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.0123 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05,999999999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.0123 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05,9999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.012345678 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 15:04:05,999999999 -0700 MST" : stdgo.GoString), ("2010-02-04 21:00:57.012345678 -0800 PST" : stdgo.GoString), true, false, (1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Feb  4 21:00:57.012345678" : stdgo.GoString), false, false, (-1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("Jan _2 15:04:05.999" : stdgo.GoString), ("Feb  4 21:00:57.012300000" : stdgo.GoString), false, false, (-1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("Jan _2 15:04:05.999" : stdgo.GoString), ("Feb  4 21:00:57.012345678" : stdgo.GoString), false, false, (-1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("Jan _2 15:04:05.999999999" : stdgo.GoString), ("Feb  4 21:00:57.0123" : stdgo.GoString), false, false, (-1 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("Jan _2 15:04:05.999999999" : stdgo.GoString), ("Feb  4 21:00:57.012345678" : stdgo.GoString), false, false, (-1 : stdgo.GoInt), (9 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01-02 002 15:04:05" : stdgo.GoString), ("2010-02-04 035 21:00:57" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-01 002 15:04:05" : stdgo.GoString), ("2010-02 035 21:00:57" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("2006-002 15:04:05" : stdgo.GoString), ("2010-035 21:00:57" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("200600201 15:04:05" : stdgo.GoString), ("201003502 21:00:57" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest),
(new stdgo._internal.time_test.Time_test.ParseTest(stdgo.Go.str()?.__copy__(), ("200600204 15:04:05" : stdgo.GoString), ("201003504 21:00:57" : stdgo.GoString), false, false, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest)].concat([for (i in 53 ... (53 > 53 ? 53 : 53 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.ParseTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTest>);
var _dayOutOfRangeTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(27, 27, ...[
({ _date : ("Thu Jan 99 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Jan 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Jan 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Feb 28 21:00:57 2012" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Feb 29 21:00:57 2012" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Feb 29 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Mar 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Mar 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Apr 30 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Apr 31 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu May 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu May 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Jun 30 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Jun 31 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Jul 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Jul 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Aug 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Aug 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Sep 30 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Sep 31 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Oct 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Oct 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Nov 30 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Nov 31 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Dec 31 21:00:57 2010" : stdgo.GoString), _ok : true } : T__struct_2),
({ _date : ("Thu Dec 32 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2),
({ _date : ("Thu Dec 00 21:00:57 2010" : stdgo.GoString), _ok : false } : T__struct_2)].concat([for (i in 27 ... (27 > 27 ? 27 : 27 : stdgo.GoInt).toBasic()) ({ _date : ("" : stdgo.GoString), _ok : false } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _rubyTests : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTest>(4, 4, ...[(new stdgo._internal.time_test.Time_test.ParseTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 04 21:00:57 -0800 2010" : stdgo.GoString), true, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest), (new stdgo._internal.time_test.Time_test.ParseTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 04 21:00:57 -0000 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest), (new stdgo._internal.time_test.Time_test.ParseTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 04 21:00:57 +0000 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest), (new stdgo._internal.time_test.Time_test.ParseTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 04 21:00:57 +1130 2010" : stdgo.GoString), false, true, (1 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ParseTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.ParseTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTest>);
var _parseTimeZoneTests : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTimeZoneTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTimeZoneTest>(29, 29, ...[
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("gmt hi there" : stdgo.GoString), (0 : stdgo.GoInt), false) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT hi there" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT+12 hi there" : stdgo.GoString), (6 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT+00 hi there" : stdgo.GoString), (6 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT+" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT+3" : stdgo.GoString), (5 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT+a" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT+3a" : stdgo.GoString), (5 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT-5 hi there" : stdgo.GoString), (5 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("GMT-51 hi there" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("ChST hi there" : stdgo.GoString), (4 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("MeST hi there" : stdgo.GoString), (4 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("MSDx" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("MSDY" : stdgo.GoString), (0 : stdgo.GoInt), false) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("ESAST hi" : stdgo.GoString), (5 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("ESASTT hi" : stdgo.GoString), (0 : stdgo.GoInt), false) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("ESATY hi" : stdgo.GoString), (0 : stdgo.GoInt), false) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("WITA hi" : stdgo.GoString), (4 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("+03 hi" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("-04 hi" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("+00" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("-11" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("-12" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("-23" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("-24" : stdgo.GoString), (0 : stdgo.GoInt), false) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("+13" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("+14" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("+23" : stdgo.GoString), (3 : stdgo.GoInt), true) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest),
(new stdgo._internal.time_test.Time_test.ParseTimeZoneTest(("+24" : stdgo.GoString), (0 : stdgo.GoInt), false) : stdgo._internal.time_test.Time_test.ParseTimeZoneTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.ParseTimeZoneTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseTimeZoneTest>);
var _parseErrorTests : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseErrorTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.ParseErrorTest>(28, 28, ...[
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Feb  4 21:00:60 2010" : stdgo.GoString), ("cannot parse \"Feb  4 21:00:60 2010\" as \"Mon\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:00:57 @2010" : stdgo.GoString), ("cannot parse \"@2010\" as \"2006\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:00:60 2010" : stdgo.GoString), ("second out of range" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 21:61:57 2010" : stdgo.GoString), ("minute out of range" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Thu Feb  4 24:00:60 2010" : stdgo.GoString), ("hour out of range" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 23:00:59x01 2010" : stdgo.GoString), ("cannot parse \"x01 2010\" as \".000\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 23:00:59.xxx 2010" : stdgo.GoString), ("cannot parse \".xxx 2010\" as \".000\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Mon Jan _2 15:04:05.000 2006" : stdgo.GoString), ("Thu Feb  4 23:00:59.-123 2010" : stdgo.GoString), ("fractional second out of range" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Dec  7 11:22:01.000000" : stdgo.GoString), ("cannot parse \".000000\" as \".000000000\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Dec  7 11:22:01.0000000000" : stdgo.GoString), ("extra text: \"0\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("parsing time \"2006-01-02T15:04:05Z07:00\": extra text: \"07:00\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04_abc" : stdgo.GoString), ("parsing time \"2006-01-02T15:04_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \":\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05_abc" : stdgo.GoString), ("parsing time \"2006-01-02T15:04:05_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \"Z07:00\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z_abc" : stdgo.GoString), ("parsing time \"2006-01-02T15:04:05Z_abc\": extra text: \"_abc\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2010-02-04T21:00:67.012345678-08:00" : stdgo.GoString), ("second out of range" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("0000-01-01T00:00:.0+00:00" : stdgo.GoString), ("parsing time \"0000-01-01T00:00:.0+00:00\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \".0+00:00\" as \"05\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("_2 Jan 06 15:04 MST" : stdgo.GoString), ("4 --- 00 00:00 GMT" : stdgo.GoString), ("cannot parse \"--- 00 00:00 GMT\" as \"Jan\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("_2 January 06 15:04 MST" : stdgo.GoString), ("4 --- 00 00:00 GMT" : stdgo.GoString), ("cannot parse \"--- 00 00:00 GMT\" as \"January\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Jan _2 002 2006" : stdgo.GoString), ("Feb  4 034 2006" : stdgo.GoString), ("day-of-year does not match day" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("Jan _2 002 2006" : stdgo.GoString), ("Feb  4 004 2006" : stdgo.GoString), ("day-of-year does not match month" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("\"2006-01-02T15:04:05Z07:00\"" : stdgo.GoString), ("0" : stdgo.GoString), ("parsing time \"0\" as \"\\\"2006-01-02T15:04:05Z07:00\\\"\": cannot parse \"0\" as \"\\\"\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("\"" : stdgo.GoString), ("parsing time \"\\\"\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"\\\"\" as \"2006\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("0000-01-01T00:00:00+00:+0" : stdgo.GoString), ("parsing time \"0000-01-01T00:00:00+00:+0\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"+00:+0\" as \"Z07:00\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("0000-01-01T00:00:00+-0:00" : stdgo.GoString), ("parsing time \"0000-01-01T00:00:00+-0:00\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"+-0:00\" as \"Z07:00\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("2006-01-02" : stdgo.GoString), ("22-10-25" : stdgo.GoString), ("parsing time \"22-10-25\" as \"2006-01-02\": cannot parse \"22-10-25\" as \"2006\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("06-01-02" : stdgo.GoString), ("a2-10-25" : stdgo.GoString), ("parsing time \"a2-10-25\" as \"06-01-02\": cannot parse \"a2-10-25\" as \"06\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("03:04PM" : stdgo.GoString), ("12:03pM" : stdgo.GoString), ("parsing time \"12:03pM\" as \"03:04PM\": cannot parse \"pM\" as \"PM\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest),
(new stdgo._internal.time_test.Time_test.ParseErrorTest(("03:04pm" : stdgo.GoString), ("12:03pM" : stdgo.GoString), ("parsing time \"12:03pM\" as \"03:04pm\": cannot parse \"pM\" as \"pm\"" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.ParseErrorTest)].concat([for (i in 28 ... (28 > 28 ? 28 : 28 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.ParseErrorTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.ParseErrorTest>);
var _secondsTimeZoneOffsetTests : stdgo.Slice<stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest>(9, 9, ...[(new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05-070000" : stdgo.GoString), ("1871-01-01T05:33:02-003408" : stdgo.GoString), (-2048 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05-07:00:00" : stdgo.GoString), ("1871-01-01T05:33:02-00:34:08" : stdgo.GoString), (-2048 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05-070000" : stdgo.GoString), ("1871-01-01T05:33:02+003408" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05-07:00:00" : stdgo.GoString), ("1871-01-01T05:33:02+00:34:08" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05Z070000" : stdgo.GoString), ("1871-01-01T05:33:02-003408" : stdgo.GoString), (-2048 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05Z07:00:00" : stdgo.GoString), ("1871-01-01T05:33:02+00:34:08" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05-07" : stdgo.GoString), ("1871-01-01T05:33:02+01" : stdgo.GoString), (3600 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05-07" : stdgo.GoString), ("1871-01-01T05:33:02-02" : stdgo.GoString), (-7200 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest), (new stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest(("2006-01-02T15:04:05Z07" : stdgo.GoString), ("1871-01-01T05:33:02-02" : stdgo.GoString), (-7200 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.SecondsTimeZoneOffsetTest>);
var _monthOutOfRangeTests : stdgo.Slice<T__struct_4> = (new stdgo.Slice<T__struct_4>(3, 3, ...[({ _value : ("00-01" : stdgo.GoString), _ok : false } : T__struct_4), ({ _value : ("13-01" : stdgo.GoString), _ok : false } : T__struct_4), ({ _value : ("01-01" : stdgo.GoString), _ok : true } : T__struct_4)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _value : ("" : stdgo.GoString), _ok : false } : T__struct_4)])) : stdgo.Slice<T__struct_4>);
var _longFractionalDigitsTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(16, 16, ...[
({ _value : ("2021-09-29T16:04:33.000000000Z" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.000000001Z" : stdgo.GoString), _want : (1 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.100000000Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.100000001Z" : stdgo.GoString), _want : (100000001 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.999999999Z" : stdgo.GoString), _want : (999999999 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.012345678Z" : stdgo.GoString), _want : (12345678 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.0000000000Z" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.0000000001Z" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.1000000000Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.1000000009Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.9999999999Z" : stdgo.GoString), _want : (999999999 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.0123456789Z" : stdgo.GoString), _want : (12345678 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.10000000000Z" : stdgo.GoString), _want : (100000000 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.00123456789Z" : stdgo.GoString), _want : (1234567 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.000123456789Z" : stdgo.GoString), _want : (123456 : stdgo.GoInt) } : T__struct_6),
({ _value : ("2021-09-29T16:04:33.9999999999999999Z" : stdgo.GoString), _want : (999999999 : stdgo.GoInt) } : T__struct_6)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _value : ("" : stdgo.GoString), _want : (0 : stdgo.GoInt) } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
var _monotonicStringTests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(8, 8, ...[({ _mono : (0i64 : stdgo.GoInt64), _want : ("m=+0.000000000" : stdgo.GoString) } : T__struct_7), ({ _mono : (123456789i64 : stdgo.GoInt64), _want : ("m=+0.123456789" : stdgo.GoString) } : T__struct_7), ({ _mono : (-123456789i64 : stdgo.GoInt64), _want : ("m=-0.123456789" : stdgo.GoString) } : T__struct_7), ({ _mono : (123456789000i64 : stdgo.GoInt64), _want : ("m=+123.456789000" : stdgo.GoString) } : T__struct_7), ({ _mono : (-123456789000i64 : stdgo.GoInt64), _want : ("m=-123.456789000" : stdgo.GoString) } : T__struct_7), ({ _mono : (9000000000000000000i64 : stdgo.GoInt64), _want : ("m=+9000000000.000000000" : stdgo.GoString) } : T__struct_7), ({ _mono : (-9000000000000000000i64 : stdgo.GoInt64), _want : ("m=-9000000000.000000000" : stdgo.GoString) } : T__struct_7), ({ _mono : (-9223372036854775808i64 : stdgo.GoInt64), _want : ("m=-9223372036.854775808" : stdgo.GoString) } : T__struct_7)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _mono : (0 : stdgo.GoInt64), _want : ("" : stdgo.GoString) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
var _slots : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(13, 13, ...[
(5 : stdgo.GoInt),
(3 : stdgo.GoInt),
(6 : stdgo.GoInt),
(6 : stdgo.GoInt),
(6 : stdgo.GoInt),
(1 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(7 : stdgo.GoInt),
(9 : stdgo.GoInt),
(4 : stdgo.GoInt),
(8 : stdgo.GoInt),
(0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
var _utctests : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>(6, 6, ...[(new stdgo._internal.time_test.Time_test.TimeTest((0i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1970 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((1221681866i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2008 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (17 : stdgo.GoInt), (20 : stdgo.GoInt), (4 : stdgo.GoInt), (26 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((-1221681866i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1931 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (16 : stdgo.GoInt), (3 : stdgo.GoInt), (55 : stdgo.GoInt), (34 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((-11644473600i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1601 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((599529660i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1988 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (31 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (6 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((978220860i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2000 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (31 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.TimeTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>);
var _nanoutctests : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>(2, 2, ...[(new stdgo._internal.time_test.Time_test.TimeTest((0i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1970 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (100000000 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((1221681866i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2008 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (17 : stdgo.GoInt), (20 : stdgo.GoInt), (4 : stdgo.GoInt), (26 : stdgo.GoInt), (200000000 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Weekday), (0 : stdgo.GoInt), ("UTC" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.TimeTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>);
var _localtests : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>(9, 9, ...[(new stdgo._internal.time_test.Time_test.TimeTest((0i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1969 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (31 : stdgo.GoInt), (16 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Weekday), (-28800 : stdgo.GoInt), ("PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((1221681866i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2008 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (17 : stdgo.GoInt), (13 : stdgo.GoInt), (4 : stdgo.GoInt), (26 : stdgo.GoInt), (0 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Weekday), (-25200 : stdgo.GoInt), ("PDT" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2159200800i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (6 : stdgo._internal.time.Time.Month), (3 : stdgo.GoInt), (11 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Weekday), (-25200 : stdgo.GoInt), ("PDT" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2152173599i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (59 : stdgo.GoInt), (59 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (-28800 : stdgo.GoInt), ("PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2152173600i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (-25200 : stdgo.GoInt), ("PDT" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2152173601i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (3 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (-25200 : stdgo.GoInt), ("PDT" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2172733199i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (7 : stdgo.GoInt), (1 : stdgo.GoInt), (59 : stdgo.GoInt), (59 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (-25200 : stdgo.GoInt), ("PDT" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2172733200i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (7 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (-28800 : stdgo.GoInt), ("PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((2172733201i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2038 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (7 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Weekday), (-28800 : stdgo.GoInt), ("PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.TimeTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>);
var _nanolocaltests : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>(2, 2, ...[(new stdgo._internal.time_test.Time_test.TimeTest((0i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((1969 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (31 : stdgo.GoInt), (16 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (100000000 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Weekday), (-28800 : stdgo.GoInt), ("PST" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest), (new stdgo._internal.time_test.Time_test.TimeTest((1221681866i64 : stdgo.GoInt64), (new stdgo._internal.time_test.Time_test.T_parsedTime((2008 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (17 : stdgo.GoInt), (13 : stdgo.GoInt), (4 : stdgo.GoInt), (26 : stdgo.GoInt), (300000000 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Weekday), (-25200 : stdgo.GoInt), ("PDT" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.T_parsedTime)) : stdgo._internal.time_test.Time_test.TimeTest)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.TimeTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.TimeTest>);
var _truncateRoundTests : stdgo.Slice<T__struct_10> = (new stdgo.Slice<T__struct_10>(5, 5, ...[({ _t : date((-1 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (500000000 : stdgo.GoInt), utc)?.__copy__(), _d : (3i64 : stdgo._internal.time.Time.Duration) } : T__struct_10), ({ _t : date((-1 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (15 : stdgo.GoInt), (31 : stdgo.GoInt), (500000000 : stdgo.GoInt), utc)?.__copy__(), _d : (3i64 : stdgo._internal.time.Time.Duration) } : T__struct_10), ({ _t : date((2012 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (500000000 : stdgo.GoInt), utc)?.__copy__(), _d : (1000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_10), ({ _t : date((2012 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (15 : stdgo.GoInt), (31 : stdgo.GoInt), (500000000 : stdgo.GoInt), utc)?.__copy__(), _d : (1000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_10), ({ _t : unix((-19012425939i64 : stdgo.GoInt64), (649146258i64 : stdgo.GoInt64))?.__copy__(), _d : (7435029458905025217i64 : stdgo._internal.time.Time.Duration) } : T__struct_10)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _t : ({} : stdgo._internal.time.Time.Time), _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_10)])) : stdgo.Slice<T__struct_10>);
var _isoWeekTests : stdgo.Slice<stdgo._internal.time_test.Time_test.ISOWeekTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.ISOWeekTest>(98, 98, ...[
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1981 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1981 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1982 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1981 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1983 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1982 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1984 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1983 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1985 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1985 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1986 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1986 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1987 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1987 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1988 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1987 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1989 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1988 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1990 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1990 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1991 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1991 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1992 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1992 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1993 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1992 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1994 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1993 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1995 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (1995 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1996 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1996 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1996 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (1996 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1996 : stdgo.GoInt), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (1996 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1997 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1997 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1998 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1998 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1999 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1998 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2000 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1999 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2001 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2001 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2002 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2002 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2003 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2003 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2004 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2004 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2005 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2004 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2006 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2005 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2007 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2007 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2008 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2008 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2009 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2009 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2010 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2009 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2010 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2009 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2010 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2010 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (6 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoInt), (2011 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt), (2011 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (1 : stdgo.GoInt), (11 : stdgo.GoInt), (2011 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (6 : stdgo.GoInt), (12 : stdgo.GoInt), (2011 : stdgo.GoInt), (23 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (6 : stdgo.GoInt), (13 : stdgo.GoInt), (2011 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (25 : stdgo.GoInt), (2011 : stdgo.GoInt), (51 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (26 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (27 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (28 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (29 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2011 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((1995 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1994 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2011 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (2012 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (1 : stdgo.GoInt), (8 : stdgo.GoInt), (2012 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (1 : stdgo.GoInt), (9 : stdgo.GoInt), (2012 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (12 : stdgo.GoInt), (23 : stdgo.GoInt), (2012 : stdgo.GoInt), (51 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (12 : stdgo.GoInt), (24 : stdgo.GoInt), (2012 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (2012 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2012 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (2013 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2013 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (1 : stdgo.GoInt), (6 : stdgo.GoInt), (2013 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (1 : stdgo.GoInt), (7 : stdgo.GoInt), (2013 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (12 : stdgo.GoInt), (22 : stdgo.GoInt), (2013 : stdgo.GoInt), (51 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (12 : stdgo.GoInt), (23 : stdgo.GoInt), (2013 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (12 : stdgo.GoInt), (29 : stdgo.GoInt), (2013 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2013 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (2014 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2014 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2014 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2014 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (2014 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2014 : stdgo.GoInt), (1 : stdgo.GoInt), (6 : stdgo.GoInt), (2014 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2015 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2015 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2016 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2015 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2017 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2016 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2018 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2018 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2019 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2019 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2020 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2020 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2021 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2020 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2022 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2021 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2023 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2022 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2024 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2024 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2025 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2025 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2026 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2026 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2027 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2026 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2028 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2027 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2029 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2029 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2030 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2030 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2031 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2031 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2032 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2032 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2033 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2032 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2034 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2033 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2035 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2035 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2036 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2036 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2037 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2037 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2038 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2037 : stdgo.GoInt), (53 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2039 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2038 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest),
(new stdgo._internal.time_test.Time_test.ISOWeekTest((2040 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (2039 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.ISOWeekTest)].concat([for (i in 98 ... (98 > 98 ? 98 : 98 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.ISOWeekTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.ISOWeekTest>);
var _yearDayTests : stdgo.Slice<stdgo._internal.time_test.Time_test.YearDayTest> = (new stdgo.Slice<stdgo._internal.time_test.Time_test.YearDayTest>(50, 50, ...[
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (3 : stdgo.GoInt), (15 : stdgo.GoInt), (74 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (91 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2007 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (365 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (61 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (3 : stdgo.GoInt), (15 : stdgo.GoInt), (75 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (92 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((2008 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (366 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (3 : stdgo.GoInt), (15 : stdgo.GoInt), (74 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (91 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1900 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (365 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (3 : stdgo.GoInt), (15 : stdgo.GoInt), (74 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (91 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (365 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (3 : stdgo.GoInt), (15 : stdgo.GoInt), (74 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (91 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-1 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (365 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (1 : stdgo.GoInt), (15 : stdgo.GoInt), (15 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt), (46 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (61 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (3 : stdgo.GoInt), (15 : stdgo.GoInt), (75 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (92 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((-400 : stdgo.GoInt), (12 : stdgo.GoInt), (31 : stdgo.GoInt), (366 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1582 : stdgo.GoInt), (10 : stdgo.GoInt), (4 : stdgo.GoInt), (277 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest),
(new stdgo._internal.time_test.Time_test.YearDayTest((1582 : stdgo.GoInt), (10 : stdgo.GoInt), (15 : stdgo.GoInt), (288 : stdgo.GoInt)) : stdgo._internal.time_test.Time_test.YearDayTest)].concat([for (i in 50 ... (50 > 50 ? 50 : 50 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time_test.Time_test.YearDayTest)])) : stdgo.Slice<stdgo._internal.time_test.Time_test.YearDayTest>);
var _yearDayLocations : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>> = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>(5, 5, ...[fixedZone(("UTC-8" : stdgo.GoString), (-28800 : stdgo.GoInt)), fixedZone(("UTC-4" : stdgo.GoString), (-14400 : stdgo.GoInt)), utc, fixedZone(("UTC+4" : stdgo.GoString), (14400 : stdgo.GoInt)), fixedZone(("UTC+8" : stdgo.GoString), (28800 : stdgo.GoInt))]) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>);
var _durationTests : stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(11, 11, ...[
({ _str : ("0s" : stdgo.GoString), _d : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("1ns" : stdgo.GoString), _d : (1i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("1.1µs" : stdgo.GoString), _d : (1100i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("2.2ms" : stdgo.GoString), _d : (2200000i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("3.3s" : stdgo.GoString), _d : (3300000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("4m5s" : stdgo.GoString), _d : (245000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("4m5.001s" : stdgo.GoString), _d : (245001000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("5h6m7.001s" : stdgo.GoString), _d : (18367001000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("8m0.000000001s" : stdgo.GoString), _d : (480000000001i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("2562047h47m16.854775807s" : stdgo.GoString), _d : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_11),
({ _str : ("-2562047h47m16.854775808s" : stdgo.GoString), _d : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_11)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _str : ("" : stdgo.GoString), _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_11)])) : stdgo.Slice<T__struct_11>);
var _dateTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(19, 19, ...[
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (6 : stdgo.GoInt), _hour : (1 : stdgo.GoInt), _min : (0 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1320566400i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (6 : stdgo.GoInt), _hour : (1 : stdgo.GoInt), _min : (59 : stdgo.GoInt), _sec : (59 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1320569999i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (6 : stdgo.GoInt), _hour : (2 : stdgo.GoInt), _min : (0 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1320573600i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (3 : stdgo.GoInt), _day : (13 : stdgo.GoInt), _hour : (1 : stdgo.GoInt), _min : (0 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1300006800i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (3 : stdgo.GoInt), _day : (13 : stdgo.GoInt), _hour : (1 : stdgo.GoInt), _min : (59 : stdgo.GoInt), _sec : (59 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1300010399i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (3 : stdgo.GoInt), _day : (13 : stdgo.GoInt), _hour : (3 : stdgo.GoInt), _min : (0 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1300010400i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (3 : stdgo.GoInt), _day : (13 : stdgo.GoInt), _hour : (2 : stdgo.GoInt), _min : (30 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1300008600i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2012 : stdgo.GoInt), _month : (12 : stdgo.GoInt), _day : (24 : stdgo.GoInt), _hour : (0 : stdgo.GoInt), _min : (0 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1356336000i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (18 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (19 : stdgo.GoInt), _hour : (-17 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (17 : stdgo.GoInt), _hour : (31 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (18 : stdgo.GoInt), _hour : (6 : stdgo.GoInt), _min : (116 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (10 : stdgo.GoInt), _day : (49 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (18 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (55 : stdgo.GoInt), _sec : (95 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (11 : stdgo.GoInt), _day : (18 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (34 : stdgo.GoInt), _nsec : (1000000000 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2011 : stdgo.GoInt), _month : (12 : stdgo.GoInt), _day : (-12 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2012 : stdgo.GoInt), _month : (1 : stdgo.GoInt), _day : (-43 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2012 : stdgo.GoInt), _month : ((-1 : stdgo._internal.time.Time.Month) : stdgo.GoInt), _day : (18 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12),
({ _year : (2010 : stdgo.GoInt), _month : ((23 : stdgo._internal.time.Time.Month) : stdgo.GoInt), _day : (18 : stdgo.GoInt), _hour : (7 : stdgo.GoInt), _min : (56 : stdgo.GoInt), _sec : (35 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : local, _unix : (1321631795i64 : stdgo.GoInt64) } : T__struct_12)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _year : (0 : stdgo.GoInt), _month : (0 : stdgo.GoInt), _day : (0 : stdgo.GoInt), _hour : (0 : stdgo.GoInt), _min : (0 : stdgo.GoInt), _sec : (0 : stdgo.GoInt), _nsec : (0 : stdgo.GoInt), _z : (null : stdgo.Ref<stdgo._internal.time.Time.Location>), _unix : (0 : stdgo.GoInt64) } : T__struct_12)])) : stdgo.Slice<T__struct_12>);
var _addDateTests : stdgo.Slice<T__struct_13> = (new stdgo.Slice<T__struct_13>(4, 4, ...[({ _years : (4 : stdgo.GoInt), _months : (4 : stdgo.GoInt), _days : (1 : stdgo.GoInt) } : T__struct_13), ({ _years : (3 : stdgo.GoInt), _months : (16 : stdgo.GoInt), _days : (1 : stdgo.GoInt) } : T__struct_13), ({ _years : (3 : stdgo.GoInt), _months : (15 : stdgo.GoInt), _days : (30 : stdgo.GoInt) } : T__struct_13), ({ _years : (5 : stdgo.GoInt), _months : (-6 : stdgo.GoInt), _days : (-60 : stdgo.GoInt) } : T__struct_13)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _years : (0 : stdgo.GoInt), _months : (0 : stdgo.GoInt), _days : (0 : stdgo.GoInt) } : T__struct_13)])) : stdgo.Slice<T__struct_13>);
var _daysInTests : stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(5, 5, ...[({ _year : (2011 : stdgo.GoInt), _month : (1 : stdgo.GoInt), _di : (31 : stdgo.GoInt) } : T__struct_14), ({ _year : (2011 : stdgo.GoInt), _month : (2 : stdgo.GoInt), _di : (28 : stdgo.GoInt) } : T__struct_14), ({ _year : (2012 : stdgo.GoInt), _month : (2 : stdgo.GoInt), _di : (29 : stdgo.GoInt) } : T__struct_14), ({ _year : (2011 : stdgo.GoInt), _month : (6 : stdgo.GoInt), _di : (30 : stdgo.GoInt) } : T__struct_14), ({ _year : (2011 : stdgo.GoInt), _month : (12 : stdgo.GoInt), _di : (31 : stdgo.GoInt) } : T__struct_14)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _year : (0 : stdgo.GoInt), _month : (0 : stdgo.GoInt), _di : (0 : stdgo.GoInt) } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
var _gobTests : stdgo.Slice<stdgo._internal.time.Time.Time> = (new stdgo.Slice<stdgo._internal.time.Time.Time>(6, 6, ...[date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), utc)?.__copy__(), date((7 : stdgo.GoInt), (8 : stdgo._internal.time.Time.Month), (9 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt)))?.__copy__(), unix((81985467080890095i64 : stdgo.GoInt64), (1985229328i64 : stdgo.GoInt64))?.__copy__(), (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), date((1 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (1966020 : stdgo.GoInt)))?.__copy__(), date((1 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (-1966080 : stdgo.GoInt)))?.__copy__()].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time.Time)])) : stdgo.Slice<stdgo._internal.time.Time.Time>);
var _invalidEncodingTests : stdgo.Slice<T__struct_15> = (new stdgo.Slice<T__struct_15>(3, 3, ...[({ _bytes : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _want : ("Time.UnmarshalBinary: no data" : stdgo.GoString) } : T__struct_15), ({ _bytes : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(0 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _want : ("Time.UnmarshalBinary: unsupported version" : stdgo.GoString) } : T__struct_15), ({ _bytes : (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _want : ("Time.UnmarshalBinary: invalid length" : stdgo.GoString) } : T__struct_15)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _bytes : (null : stdgo.Slice<stdgo.GoUInt8>), _want : ("" : stdgo.GoString) } : T__struct_15)])) : stdgo.Slice<T__struct_15>);
var _notEncodableTimes : stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(3, 3, ...[({ _time : date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (-60 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalBinary: unexpected zone offset" : stdgo.GoString) } : T__struct_16), ({ _time : date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (-1966140 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalBinary: unexpected zone offset" : stdgo.GoString) } : T__struct_16), ({ _time : date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (1966080 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalBinary: unexpected zone offset" : stdgo.GoString) } : T__struct_16)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _time : ({} : stdgo._internal.time.Time.Time), _want : ("" : stdgo.GoString) } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
var _jsonTests : stdgo.Slice<T__struct_17> = (new stdgo.Slice<T__struct_17>(4, 4, ...[({ _time : date((9999 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (12 : stdgo.GoInt), (23 : stdgo.GoInt), (20 : stdgo.GoInt), (50 : stdgo.GoInt), (520000000 : stdgo.GoInt), utc)?.__copy__(), _json : ("\"9999-04-12T23:20:50.52Z\"" : stdgo.GoString) } : T__struct_17), ({ _time : date((1996 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (19 : stdgo.GoInt), (16 : stdgo.GoInt), (39 : stdgo.GoInt), (57 : stdgo.GoInt), (0 : stdgo.GoInt), local)?.__copy__(), _json : ("\"1996-12-19T16:39:57-08:00\"" : stdgo.GoString) } : T__struct_17), ({ _time : date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (60 : stdgo.GoInt)))?.__copy__(), _json : ("\"0000-01-01T00:00:00.000000001+00:01\"" : stdgo.GoString) } : T__struct_17), ({ _time : date((2020 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (86340 : stdgo.GoInt)))?.__copy__(), _json : ("\"2020-01-01T00:00:00+23:59\"" : stdgo.GoString) } : T__struct_17)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _time : ({} : stdgo._internal.time.Time.Time), _json : ("" : stdgo.GoString) } : T__struct_17)])) : stdgo.Slice<T__struct_17>);
var _parseDurationTests : stdgo.Slice<T__struct_19> = (new stdgo.Slice<T__struct_19>(43, 43, ...[
({ _in : ("0" : stdgo.GoString), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("5s" : stdgo.GoString), _want : (5000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("30s" : stdgo.GoString), _want : (30000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("1478s" : stdgo.GoString), _want : (1478000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-5s" : stdgo.GoString), _want : (-5000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("+5s" : stdgo.GoString), _want : (5000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-0" : stdgo.GoString), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("+0" : stdgo.GoString), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("5.0s" : stdgo.GoString), _want : (5000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("5.6s" : stdgo.GoString), _want : (5600000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("5.s" : stdgo.GoString), _want : (5000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : (".5s" : stdgo.GoString), _want : (500000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("1.0s" : stdgo.GoString), _want : (1000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("1.00s" : stdgo.GoString), _want : (1000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("1.004s" : stdgo.GoString), _want : (1004000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("1.0040s" : stdgo.GoString), _want : (1004000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("100.00100s" : stdgo.GoString), _want : (100001000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("10ns" : stdgo.GoString), _want : (10i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("11us" : stdgo.GoString), _want : (11000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("12µs" : stdgo.GoString), _want : (12000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("12μs" : stdgo.GoString), _want : (12000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("13ms" : stdgo.GoString), _want : (13000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("14s" : stdgo.GoString), _want : (14000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("15m" : stdgo.GoString), _want : (900000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("16h" : stdgo.GoString), _want : (57600000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("3h30m" : stdgo.GoString), _want : (12600000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("10.5s4m" : stdgo.GoString), _want : (250500000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-2m3.4s" : stdgo.GoString), _want : (-123400000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("1h2m3s4ms5us6ns" : stdgo.GoString), _want : (3723004005006i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("39h9m14.425s" : stdgo.GoString), _want : (140954425000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("52763797000ns" : stdgo.GoString), _want : (52763797000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("0.3333333333333333333h" : stdgo.GoString), _want : (1200000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("9007199254740993ns" : stdgo.GoString), _want : (9007199254740993i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("9223372036854775807ns" : stdgo.GoString), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("9223372036854775.807us" : stdgo.GoString), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("9223372036s854ms775us807ns" : stdgo.GoString), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-9223372036854775808ns" : stdgo.GoString), _want : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-9223372036854775.808us" : stdgo.GoString), _want : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-9223372036s854ms775us808ns" : stdgo.GoString), _want : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-9223372036854775808ns" : stdgo.GoString), _want : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("-2562047h47m16.854775808s" : stdgo.GoString), _want : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("0.100000000000000000000h" : stdgo.GoString), _want : (360000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_19),
({ _in : ("0.830103483285477580700h" : stdgo.GoString), _want : (2988372539827i64 : stdgo._internal.time.Time.Duration) } : T__struct_19)].concat([for (i in 43 ... (43 > 43 ? 43 : 43 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_19)])) : stdgo.Slice<T__struct_19>);
var _parseDurationErrorTests : stdgo.Slice<T__struct_20> = (new stdgo.Slice<T__struct_20>(21, 21, ...[
({ _in : stdgo.Go.str()?.__copy__(), _expect : ("\"\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("3" : stdgo.GoString), _expect : ("\"3\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("-" : stdgo.GoString), _expect : ("\"-\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("s" : stdgo.GoString), _expect : ("\"s\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("." : stdgo.GoString), _expect : ("\".\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("-." : stdgo.GoString), _expect : ("\"-.\"" : stdgo.GoString) } : T__struct_20),
({ _in : (".s" : stdgo.GoString), _expect : ("\".s\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("+.s" : stdgo.GoString), _expect : ("\"+.s\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("1d" : stdgo.GoString), _expect : ("\"1d\"" : stdgo.GoString) } : T__struct_20),
({ _in : stdgo.Go.str(133, 133)?.__copy__(), _expect : ("\"\\x85\\x85\"" : stdgo.GoString) } : T__struct_20),
({ _in : stdgo.Go.str(255, "ff")?.__copy__(), _expect : ("\"\\xffff\"" : stdgo.GoString) } : T__struct_20),
({ _in : stdgo.Go.str("hello ", 255, "ff world")?.__copy__(), _expect : ("\"hello \\xffff world\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("�" : stdgo.GoString), _expect : ("\"\\xef\\xbf\\xbd\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("� hello � world" : stdgo.GoString), _expect : ("\"\\xef\\xbf\\xbd hello \\xef\\xbf\\xbd world\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("9223372036854775810ns" : stdgo.GoString), _expect : ("\"9223372036854775810ns\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("9223372036854775808ns" : stdgo.GoString), _expect : ("\"9223372036854775808ns\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("-9223372036854775809ns" : stdgo.GoString), _expect : ("\"-9223372036854775809ns\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("9223372036854776us" : stdgo.GoString), _expect : ("\"9223372036854776us\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("3000000h" : stdgo.GoString), _expect : ("\"3000000h\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("9223372036854775.808us" : stdgo.GoString), _expect : ("\"9223372036854775.808us\"" : stdgo.GoString) } : T__struct_20),
({ _in : ("9223372036854ms775us808ns" : stdgo.GoString), _expect : ("\"9223372036854ms775us808ns\"" : stdgo.GoString) } : T__struct_20)].concat([for (i in 21 ... (21 > 21 ? 21 : 21 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _expect : ("" : stdgo.GoString) } : T__struct_20)])) : stdgo.Slice<T__struct_20>);
var _mallocTest : stdgo.Slice<T__struct_21> = (new stdgo.Slice<T__struct_21>(4, 4, ...[({ _count : (0 : stdgo.GoInt), _desc : ("time.Now()" : stdgo.GoString), _fn : function():Void {
        _t = now()?.__copy__();
    } } : T__struct_21), ({ _count : (0 : stdgo.GoInt), _desc : ("time.Now().UnixNano()" : stdgo.GoString), _fn : function():Void {
        _u = now().unixNano();
    } } : T__struct_21), ({ _count : (0 : stdgo.GoInt), _desc : ("time.Now().UnixMilli()" : stdgo.GoString), _fn : function():Void {
        _u = now().unixMilli();
    } } : T__struct_21), ({ _count : (0 : stdgo.GoInt), _desc : ("time.Now().UnixMicro()" : stdgo.GoString), _fn : function():Void {
        _u = now().unixMicro();
    } } : T__struct_21)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _desc : ("" : stdgo.GoString), _fn : null } : T__struct_21)])) : stdgo.Slice<T__struct_21>);
var _subTests : stdgo.Slice<T__struct_22> = (new stdgo.Slice<T__struct_22>(16, 16, ...[
({ _t : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _u : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _d : ((0i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt), utc)?.__copy__(), _u : date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : ((1i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (24 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : (-86400000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (24 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : (86400000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : date((-2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (24 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((-2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : (86400000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _u : date((2109 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : ((-9223372036854775808i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((2109 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _d : ((9223372036854775807i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _u : date((-2109 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : ((9223372036854775807i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((-2109 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _d : ((-9223372036854775808i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((2290 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : (9151574400000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : date((2300 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : ((9223372036854775807i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((2290 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : (-9151574400000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _u : date((2300 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _d : ((-9223372036854775808i64 : stdgo._internal.time.Time.Duration) : Duration) } : T__struct_22),
({ _t : date((2311 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (26 : stdgo.GoInt), (2 : stdgo.GoInt), (16 : stdgo.GoInt), (47 : stdgo.GoInt), (63535996 : stdgo.GoInt), utc)?.__copy__(), _u : date((2019 : stdgo.GoInt), (8 : stdgo._internal.time.Time.Month), (16 : stdgo.GoInt), (2 : stdgo.GoInt), (29 : stdgo.GoInt), (30 : stdgo.GoInt), (268436582 : stdgo.GoInt), utc)?.__copy__(), _d : (9223372036795099414i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : minMonoTime?.__copy__(), _u : maxMonoTime?.__copy__(), _d : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_22),
({ _t : maxMonoTime?.__copy__(), _u : minMonoTime?.__copy__(), _d : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_22)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _t : ({} : stdgo._internal.time.Time.Time), _u : ({} : stdgo._internal.time.Time.Time), _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_22)])) : stdgo.Slice<T__struct_22>);
var _nsDurationTests : stdgo.Slice<T__struct_23> = (new stdgo.Slice<T__struct_23>(4, 4, ...[({ _d : ((-1000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1000i64 : stdgo.GoInt64) } : T__struct_23), ({ _d : ((-1i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1i64 : stdgo.GoInt64) } : T__struct_23), ({ _d : ((1i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1i64 : stdgo.GoInt64) } : T__struct_23), ({ _d : ((1000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1000i64 : stdgo.GoInt64) } : T__struct_23)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : (0 : stdgo.GoInt64) } : T__struct_23)])) : stdgo.Slice<T__struct_23>);
var _usDurationTests : stdgo.Slice<T__struct_23> = (new stdgo.Slice<T__struct_23>(2, 2, ...[({ _d : ((-1000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1i64 : stdgo.GoInt64) } : T__struct_23), ({ _d : ((1000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1i64 : stdgo.GoInt64) } : T__struct_23)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : (0 : stdgo.GoInt64) } : T__struct_23)])) : stdgo.Slice<T__struct_23>);
var _msDurationTests : stdgo.Slice<T__struct_23> = (new stdgo.Slice<T__struct_23>(2, 2, ...[({ _d : ((-1000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1i64 : stdgo.GoInt64) } : T__struct_23), ({ _d : ((1000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1i64 : stdgo.GoInt64) } : T__struct_23)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : (0 : stdgo.GoInt64) } : T__struct_23)])) : stdgo.Slice<T__struct_23>);
var _secDurationTests : stdgo.Slice<T__struct_24> = (new stdgo.Slice<T__struct_24>(1, 1, ...[({ _d : ((300000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (0.3 : stdgo.GoFloat64) } : T__struct_24)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : (0 : stdgo.GoFloat64) } : T__struct_24)])) : stdgo.Slice<T__struct_24>);
var _minDurationTests : stdgo.Slice<T__struct_24> = (new stdgo.Slice<T__struct_24>(5, 5, ...[({ _d : ((-60000000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((-1i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1.6666666666666667e-11 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((1i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1.6666666666666667e-11 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((60000000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((3000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (5e-08 : stdgo.GoFloat64) } : T__struct_24)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : (0 : stdgo.GoFloat64) } : T__struct_24)])) : stdgo.Slice<T__struct_24>);
var _hourDurationTests : stdgo.Slice<T__struct_24> = (new stdgo.Slice<T__struct_24>(5, 5, ...[({ _d : ((-3600000000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-1 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((-1i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (-2.777777777777778e-13 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((1i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (2.777777777777778e-13 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((3600000000000i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1 : stdgo.GoFloat64) } : T__struct_24), ({ _d : ((36i64 : stdgo._internal.time.Time.Duration) : Duration), _want : (1e-11 : stdgo.GoFloat64) } : T__struct_24)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : (0 : stdgo.GoFloat64) } : T__struct_24)])) : stdgo.Slice<T__struct_24>);
var _durationTruncateTests : stdgo.Slice<T__struct_25> = (new stdgo.Slice<T__struct_25>(12, 12, ...[
({ _d : (0i64 : stdgo._internal.time.Time.Duration), _m : (1000000000i64 : stdgo._internal.time.Time.Duration), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _m : (-7000000000i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _m : (0i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _m : (1i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (70000000000i64 : stdgo._internal.time.Time.Duration), _m : (10000000000i64 : stdgo._internal.time.Time.Duration), _want : (70000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (130000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (120000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (610000000000i64 : stdgo._internal.time.Time.Duration), _m : (180000000000i64 : stdgo._internal.time.Time.Duration), _want : (540000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (70000000000i64 : stdgo._internal.time.Time.Duration), _m : (70000000001i64 : stdgo._internal.time.Time.Duration), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (70000000000i64 : stdgo._internal.time.Time.Duration), _m : (3600000000000i64 : stdgo._internal.time.Time.Duration), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-60000000000i64 : stdgo._internal.time.Time.Duration), _m : (1000000000i64 : stdgo._internal.time.Time.Duration), _want : (-60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-600000000000i64 : stdgo._internal.time.Time.Duration), _m : (180000000000i64 : stdgo._internal.time.Time.Duration), _want : (-540000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-600000000000i64 : stdgo._internal.time.Time.Duration), _m : (3600000000000i64 : stdgo._internal.time.Time.Duration), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_25)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _m : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_25)])) : stdgo.Slice<T__struct_25>);
var _durationRoundTests : stdgo.Slice<T__struct_25> = (new stdgo.Slice<T__struct_25>(18, 18, ...[
({ _d : (0i64 : stdgo._internal.time.Time.Duration), _m : (1000000000i64 : stdgo._internal.time.Time.Duration), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _m : (-11000000000i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _m : (0i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _m : (1i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (120000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (120000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (130000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (120000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (150000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (180000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (170000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (180000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-60000000000i64 : stdgo._internal.time.Time.Duration), _m : (1i64 : stdgo._internal.time.Time.Duration), _want : (-60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-120000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (-120000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-130000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (-120000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-150000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (-180000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-170000000000i64 : stdgo._internal.time.Time.Duration), _m : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (-180000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (8000000000000000000i64 : stdgo._internal.time.Time.Duration), _m : (3000000000000000000i64 : stdgo._internal.time.Time.Duration), _want : (9000000000000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (9000000000000000000i64 : stdgo._internal.time.Time.Duration), _m : (5000000000000000000i64 : stdgo._internal.time.Time.Duration), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-8000000000000000000i64 : stdgo._internal.time.Time.Duration), _m : (3000000000000000000i64 : stdgo._internal.time.Time.Duration), _want : (-9000000000000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (-9000000000000000000i64 : stdgo._internal.time.Time.Duration), _m : (5000000000000000000i64 : stdgo._internal.time.Time.Duration), _want : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration) } : T__struct_25),
({ _d : (6917529027641081855i64 : stdgo._internal.time.Time.Duration), _m : (6917529027641081856i64 : stdgo._internal.time.Time.Duration), _want : (6917529027641081856i64 : stdgo._internal.time.Time.Duration) } : T__struct_25)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _m : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_25)])) : stdgo.Slice<T__struct_25>);
var _durationAbsTests : stdgo.Slice<T__struct_26> = (new stdgo.Slice<T__struct_26>(10, 10, ...[({ _d : (0i64 : stdgo._internal.time.Time.Duration), _want : (0i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (1i64 : stdgo._internal.time.Time.Duration), _want : (1i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (-1i64 : stdgo._internal.time.Time.Duration), _want : (1i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (60000000000i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (-60000000000i64 : stdgo._internal.time.Time.Duration), _want : (60000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (-9223372036854775808i64 : stdgo._internal.time.Time.Duration), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (-9223372036854775807i64 : stdgo._internal.time.Time.Duration), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (-9223372036854775806i64 : stdgo._internal.time.Time.Duration), _want : (9223372036854775806i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (9223372036854775807i64 : stdgo._internal.time.Time.Duration), _want : (9223372036854775807i64 : stdgo._internal.time.Time.Duration) } : T__struct_26), ({ _d : (9223372036854775806i64 : stdgo._internal.time.Time.Duration), _want : (9223372036854775806i64 : stdgo._internal.time.Time.Duration) } : T__struct_26)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _d : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _want : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_26)])) : stdgo.Slice<T__struct_26>);
var _defaultLocTests : stdgo.Slice<T__struct_27> = (new stdgo.Slice<T__struct_27>(36, 36, ...[
({ _name : ("After" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.after(_t2?.__copy__()) == (_t2.after(_t1?.__copy__()));
    } } : T__struct_27),
({ _name : ("Before" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.before(_t2?.__copy__()) == (_t2.before(_t1?.__copy__()));
    } } : T__struct_27),
({ _name : ("Equal" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.equal(_t2?.__copy__()) == (_t2.equal(_t1?.__copy__()));
    } } : T__struct_27),
({ _name : ("Compare" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.compare(_t2?.__copy__()) == (_t2.compare(_t1?.__copy__()));
    } } : T__struct_27),
({ _name : ("IsZero" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.isZero() == (_t2.isZero());
    } } : T__struct_27),
({ _name : ("Date" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.date(), _a1:stdgo.GoInt = __tmp__._0, _b1:stdgo._internal.time.Time.Month = __tmp__._1, _c1:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t2.date(), _a2:stdgo.GoInt = __tmp__._0, _b2:stdgo._internal.time.Time.Month = __tmp__._1, _c2:stdgo.GoInt = __tmp__._2;
        return ((_a1 == (_a2) && _b1 == (_b2) : Bool) && (_c1 == _c2) : Bool);
    } } : T__struct_27),
({ _name : ("Year" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.year() == (_t2.year());
    } } : T__struct_27),
({ _name : ("Month" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.month() == (_t2.month());
    } } : T__struct_27),
({ _name : ("Day" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.day() == (_t2.day());
    } } : T__struct_27),
({ _name : ("Weekday" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.weekday() == (_t2.weekday());
    } } : T__struct_27),
({ _name : ("ISOWeek" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.isoweek(), _a1:stdgo.GoInt = __tmp__._0, _b1:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _t2.isoweek(), _a2:stdgo.GoInt = __tmp__._0, _b2:stdgo.GoInt = __tmp__._1;
        return ((_a1 == _a2) && (_b1 == _b2) : Bool);
    } } : T__struct_27),
({ _name : ("Clock" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.clock(), _a1:stdgo.GoInt = __tmp__._0, _b1:stdgo.GoInt = __tmp__._1, _c1:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t2.clock(), _a2:stdgo.GoInt = __tmp__._0, _b2:stdgo.GoInt = __tmp__._1, _c2:stdgo.GoInt = __tmp__._2;
        return ((_a1 == (_a2) && _b1 == (_b2) : Bool) && (_c1 == _c2) : Bool);
    } } : T__struct_27),
({ _name : ("Hour" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.hour() == (_t2.hour());
    } } : T__struct_27),
({ _name : ("Minute" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.minute() == (_t2.minute());
    } } : T__struct_27),
({ _name : ("Second" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.second() == (_t2.second());
    } } : T__struct_27),
({ _name : ("Nanosecond" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.hour() == (_t2.hour());
    } } : T__struct_27),
({ _name : ("YearDay" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.yearDay() == (_t2.yearDay());
    } } : T__struct_27),
({ _name : ("Add" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.add((3600000000000i64 : stdgo._internal.time.Time.Duration)).equal(_t2.add((3600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__());
    } } : T__struct_27),
({ _name : ("Sub" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.sub(_t2?.__copy__()) == (_t2.sub(_t1?.__copy__()));
    } } : T__struct_27),
({ _name : ("AddDate" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return stdgo.Go.toInterface(_t1.addDate((1991 : stdgo.GoInt), (9 : stdgo.GoInt), (3 : stdgo.GoInt))) == stdgo.Go.toInterface(_t2.addDate((1991 : stdgo.GoInt), (9 : stdgo.GoInt), (3 : stdgo.GoInt)));
    } } : T__struct_27),
({ _name : ("UTC" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return stdgo.Go.toInterface(_t1.utc()) == stdgo.Go.toInterface(_t2.utc());
    } } : T__struct_27),
({ _name : ("Local" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return stdgo.Go.toInterface(_t1.local()) == stdgo.Go.toInterface(_t2.local());
    } } : T__struct_27),
({ _name : ("In" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return stdgo.Go.toInterface(_t1.in_(utc)) == stdgo.Go.toInterface(_t2.in_(utc));
    } } : T__struct_27),
({ _name : ("Local" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return stdgo.Go.toInterface(_t1.local()) == stdgo.Go.toInterface(_t2.local());
    } } : T__struct_27),
({ _name : ("Zone" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.zone(), _a1:stdgo.GoString = __tmp__._0, _b1:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _t2.zone(), _a2:stdgo.GoString = __tmp__._0, _b2:stdgo.GoInt = __tmp__._1;
        return ((_a1 == _a2) && (_b1 == _b2) : Bool);
    } } : T__struct_27),
({ _name : ("Unix" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.unix() == (_t2.unix());
    } } : T__struct_27),
({ _name : ("UnixNano" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.unixNano() == (_t2.unixNano());
    } } : T__struct_27),
({ _name : ("UnixMilli" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.unixMilli() == (_t2.unixMilli());
    } } : T__struct_27),
({ _name : ("UnixMicro" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.unixMicro() == (_t2.unixMicro());
    } } : T__struct_27),
({ _name : ("MarshalBinary" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.marshalBinary(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalBinary(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : T__struct_27),
({ _name : ("GobEncode" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.gobEncode(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.gobEncode(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : T__struct_27),
({ _name : ("MarshalJSON" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.marshalJSON(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalJSON(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : T__struct_27),
({ _name : ("MarshalText" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        var __tmp__ = _t1.marshalText(), _a1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
        var __tmp__ = _t2.marshalText(), _a2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
        return (stdgo._internal.bytes.Bytes.equal(_a1, _a2) && (stdgo.Go.toInterface(_b1) == stdgo.Go.toInterface(_b2)) : Bool);
    } } : T__struct_27),
({ _name : ("Truncate" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.truncate((3600000000000i64 : stdgo._internal.time.Time.Duration)).equal(_t2.truncate((3600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__());
    } } : T__struct_27),
({ _name : ("Round" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return _t1.round((3600000000000i64 : stdgo._internal.time.Time.Duration)).equal(_t2.round((3600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__());
    } } : T__struct_27),
({ _name : ("== Time{}" : stdgo.GoString), _f : function(_t1:Time, _t2:Time):Bool {
        return (stdgo.Go.toInterface(_t1) == stdgo.Go.toInterface((new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time))) == ((stdgo.Go.toInterface(_t2) == stdgo.Go.toInterface((new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time))));
    } } : T__struct_27)].concat([for (i in 36 ... (36 > 36 ? 36 : 36 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_27)])) : stdgo.Slice<T__struct_27>);
var _testdataRFC3339UTCBytes : stdgo.Slice<stdgo.GoUInt8> = (("2020-08-22T11:27:43.123456789Z" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _testdataRFC3339TZBytes : stdgo.Slice<stdgo.GoUInt8> = (("2020-08-22T11:27:43.123456789-02:00" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _zones : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Asia/Jerusalem" : stdgo.GoString), ("America/Los_Angeles" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _slimTests : stdgo.Slice<T__struct_32> = (new stdgo.Slice<T__struct_32>(4, 4, ...[({ _zoneName : ("Europe/Berlin" : stdgo.GoString), _fileName : ("2020b_Europe_Berlin" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time.Location>):stdgo._internal.time.Time.Time {
        return stdgo._internal.time.Time.date((2020 : stdgo.GoInt), (10 : stdgo._internal.time.Time.Month), (29 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("CET" : stdgo.GoString), _wantOffset : (3600 : stdgo.GoInt) } : T__struct_32), ({ _zoneName : ("America/Nuuk" : stdgo.GoString), _fileName : ("2021a_America_Nuuk" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time.Location>):stdgo._internal.time.Time.Time {
        return stdgo._internal.time.Time.date((2020 : stdgo.GoInt), (10 : stdgo._internal.time.Time.Month), (29 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("-03" : stdgo.GoString), _wantOffset : (-10800 : stdgo.GoInt) } : T__struct_32), ({ _zoneName : ("Asia/Gaza" : stdgo.GoString), _fileName : ("2021a_Asia_Gaza" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time.Location>):stdgo._internal.time.Time.Time {
        return stdgo._internal.time.Time.date((2020 : stdgo.GoInt), (10 : stdgo._internal.time.Time.Month), (29 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("EET" : stdgo.GoString), _wantOffset : (7200 : stdgo.GoInt) } : T__struct_32), ({ _zoneName : ("Europe/Dublin" : stdgo.GoString), _fileName : ("2021a_Europe_Dublin" : stdgo.GoString), _date : function(_loc:stdgo.Ref<stdgo._internal.time.Time.Location>):stdgo._internal.time.Time.Time {
        return stdgo._internal.time.Time.date((2021 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (2 : stdgo.GoInt), (11 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
    }, _wantName : ("IST" : stdgo.GoString), _wantOffset : (3600 : stdgo.GoInt) } : T__struct_32)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _zoneName : ("" : stdgo.GoString), _fileName : ("" : stdgo.GoString), _date : null, _wantName : ("" : stdgo.GoString), _wantOffset : (0 : stdgo.GoInt) } : T__struct_32)])) : stdgo.Slice<T__struct_32>);
@:structInit class TimeFormatTest {
    public var _time : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public var _formattedValue : stdgo.GoString = "";
    public function new(?_time:stdgo._internal.time.Time.Time, ?_formattedValue:stdgo.GoString) {
        if (_time != null) this._time = _time;
        if (_formattedValue != null) this._formattedValue = _formattedValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TimeFormatTest(_time, _formattedValue);
    }
}
@:structInit class FormatTest {
    public var _name : stdgo.GoString = "";
    public var _format : stdgo.GoString = "";
    public var _result : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_format:stdgo.GoString, ?_result:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_format != null) this._format = _format;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FormatTest(_name, _format, _result);
    }
}
@:structInit class ParseTest {
    public var _name : stdgo.GoString = "";
    public var _format : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public var _hasTZ : Bool = false;
    public var _hasWD : Bool = false;
    public var _yearSign : stdgo.GoInt = 0;
    public var _fracDigits : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_format:stdgo.GoString, ?_value:stdgo.GoString, ?_hasTZ:Bool, ?_hasWD:Bool, ?_yearSign:stdgo.GoInt, ?_fracDigits:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_hasTZ != null) this._hasTZ = _hasTZ;
        if (_hasWD != null) this._hasWD = _hasWD;
        if (_yearSign != null) this._yearSign = _yearSign;
        if (_fracDigits != null) this._fracDigits = _fracDigits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseTest(_name, _format, _value, _hasTZ, _hasWD, _yearSign, _fracDigits);
    }
}
@:structInit class ParseTimeZoneTest {
    public var _value : stdgo.GoString = "";
    public var _length : stdgo.GoInt = 0;
    public var _ok : Bool = false;
    public function new(?_value:stdgo.GoString, ?_length:stdgo.GoInt, ?_ok:Bool) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseTimeZoneTest(_value, _length, _ok);
    }
}
@:structInit class ParseErrorTest {
    public var _format : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public var _expect : stdgo.GoString = "";
    public function new(?_format:stdgo.GoString, ?_value:stdgo.GoString, ?_expect:stdgo.GoString) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_expect != null) this._expect = _expect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseErrorTest(_format, _value, _expect);
    }
}
@:structInit class SecondsTimeZoneOffsetTest {
    public var _format : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public var _expectedoffset : stdgo.GoInt = 0;
    public function new(?_format:stdgo.GoString, ?_value:stdgo.GoString, ?_expectedoffset:stdgo.GoInt) {
        if (_format != null) this._format = _format;
        if (_value != null) this._value = _value;
        if (_expectedoffset != null) this._expectedoffset = _expectedoffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SecondsTimeZoneOffsetTest(_format, _value, _expectedoffset);
    }
}
@:structInit @:private class T_afterResult {
    public var _slot : stdgo.GoInt = 0;
    public var _t : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public function new(?_slot:stdgo.GoInt, ?_t:stdgo._internal.time.Time.Time) {
        if (_slot != null) this._slot = _slot;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_afterResult(_slot, _t);
    }
}
@:structInit @:private class T_parsedTime {
    public var year : stdgo.GoInt = 0;
    public var month : stdgo._internal.time.Time.Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Month);
    public var day : stdgo.GoInt = 0;
    public var hour : stdgo.GoInt = 0;
    public var minute : stdgo.GoInt = 0;
    public var second : stdgo.GoInt = 0;
    public var nanosecond : stdgo.GoInt = 0;
    public var weekday : stdgo._internal.time.Time.Weekday = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Weekday);
    public var zoneOffset : stdgo.GoInt = 0;
    public var zone : stdgo.GoString = "";
    public function new(?year:stdgo.GoInt, ?month:stdgo._internal.time.Time.Month, ?day:stdgo.GoInt, ?hour:stdgo.GoInt, ?minute:stdgo.GoInt, ?second:stdgo.GoInt, ?nanosecond:stdgo.GoInt, ?weekday:stdgo._internal.time.Time.Weekday, ?zoneOffset:stdgo.GoInt, ?zone:stdgo.GoString) {
        if (year != null) this.year = year;
        if (month != null) this.month = month;
        if (day != null) this.day = day;
        if (hour != null) this.hour = hour;
        if (minute != null) this.minute = minute;
        if (second != null) this.second = second;
        if (nanosecond != null) this.nanosecond = nanosecond;
        if (weekday != null) this.weekday = weekday;
        if (zoneOffset != null) this.zoneOffset = zoneOffset;
        if (zone != null) this.zone = zone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parsedTime(year, month, day, hour, minute, second, nanosecond, weekday, zoneOffset, zone);
    }
}
@:structInit class TimeTest {
    public var _seconds : stdgo.GoInt64 = 0;
    public var _golden : stdgo._internal.time_test.Time_test.T_parsedTime = ({} : stdgo._internal.time_test.Time_test.T_parsedTime);
    public function new(?_seconds:stdgo.GoInt64, ?_golden:stdgo._internal.time_test.Time_test.T_parsedTime) {
        if (_seconds != null) this._seconds = _seconds;
        if (_golden != null) this._golden = _golden;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TimeTest(_seconds, _golden);
    }
}
@:structInit class ISOWeekTest {
    public var _year : stdgo.GoInt = 0;
    public var _month : stdgo.GoInt = 0;
    public var _day : stdgo.GoInt = 0;
    public var _yex : stdgo.GoInt = 0;
    public var _wex : stdgo.GoInt = 0;
    public function new(?_year:stdgo.GoInt, ?_month:stdgo.GoInt, ?_day:stdgo.GoInt, ?_yex:stdgo.GoInt, ?_wex:stdgo.GoInt) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_yex != null) this._yex = _yex;
        if (_wex != null) this._wex = _wex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ISOWeekTest(_year, _month, _day, _yex, _wex);
    }
}
@:structInit class YearDayTest {
    public var _year : stdgo.GoInt = 0;
    public var _month : stdgo.GoInt = 0;
    public var _day : stdgo.GoInt = 0;
    public var _yday : stdgo.GoInt = 0;
    public function new(?_year:stdgo.GoInt, ?_month:stdgo.GoInt, ?_day:stdgo.GoInt, ?_yday:stdgo.GoInt) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_yday != null) this._yday = _yday;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YearDayTest(_year, _month, _day, _yday);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _in : stdgo.GoInt;
    public var _width : stdgo.GoInt;
    public var _want : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _in : stdgo._internal.time.Time.Time;
    public var _want : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _date : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _format : stdgo.GoString;
    public var _value : stdgo.GoString;
    public var _valueElemPrefix : stdgo.GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _value : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _s : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _value : stdgo.GoString;
    public var _want : stdgo.GoInt;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _mono : stdgo.GoInt64;
    public var _want : stdgo.GoString;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _sum : stdgo.GoFloat64;
    public var _max : stdgo._internal.time.Time.Duration;
    public var _count : stdgo.GoInt64;
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoInt64>;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _count : stdgo.GoInt;
    public var _delta : stdgo._internal.time.Time.Duration;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _t : stdgo._internal.time.Time.Time;
    public var _d : stdgo._internal.time.Time.Duration;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _str : stdgo.GoString;
    public var _d : stdgo._internal.time.Time.Duration;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _year : stdgo.GoInt;
    public var _month : stdgo.GoInt;
    public var _day : stdgo.GoInt;
    public var _hour : stdgo.GoInt;
    public var _min : stdgo.GoInt;
    public var _sec : stdgo.GoInt;
    public var _nsec : stdgo.GoInt;
    public var _z : stdgo.Ref<stdgo._internal.time.Time.Location>;
    public var _unix : stdgo.GoInt64;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _years : stdgo.GoInt;
    public var _months : stdgo.GoInt;
    public var _days : stdgo.GoInt;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _year : stdgo.GoInt;
    public var _month : stdgo.GoInt;
    public var _di : stdgo.GoInt;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _bytes : stdgo.Slice<stdgo.GoUInt8>;
    public var _want : stdgo.GoString;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _time : stdgo._internal.time.Time.Time;
    public var _want : stdgo.GoString;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_17>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _time : stdgo._internal.time.Time.Time;
    public var _json : stdgo.GoString;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_18>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_18_static_extension) typedef T__struct_18 = {
    public var _in : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_19>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_19_static_extension) typedef T__struct_19 = {
    public var _in : stdgo.GoString;
    public var _want : stdgo._internal.time.Time.Duration;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_20>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_20_static_extension) typedef T__struct_20 = {
    public var _in : stdgo.GoString;
    public var _expect : stdgo.GoString;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_21>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_21_static_extension) typedef T__struct_21 = {
    public var _count : stdgo.GoInt;
    public var _desc : stdgo.GoString;
    public var _fn : () -> Void;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_22>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_22_static_extension) typedef T__struct_22 = {
    public var _t : stdgo._internal.time.Time.Time;
    public var _u : stdgo._internal.time.Time.Time;
    public var _d : stdgo._internal.time.Time.Duration;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_23>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_23_static_extension) typedef T__struct_23 = {
    public var _d : stdgo._internal.time.Time.Duration;
    public var _want : stdgo.GoInt64;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_24>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_24_static_extension) typedef T__struct_24 = {
    public var _d : stdgo._internal.time.Time.Duration;
    public var _want : stdgo.GoFloat64;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_25>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_25_static_extension) typedef T__struct_25 = {
    public var _d : stdgo._internal.time.Time.Duration;
    public var _m : stdgo._internal.time.Time.Duration;
    public var _want : stdgo._internal.time.Time.Duration;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_26>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_26_static_extension) typedef T__struct_26 = {
    public var _d : stdgo._internal.time.Time.Duration;
    public var _want : stdgo._internal.time.Time.Duration;
};
class T__struct_27_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_27>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_27_static_extension) typedef T__struct_27 = {
    public var _name : stdgo.GoString;
    public var _f : (stdgo._internal.time.Time.Time, stdgo._internal.time.Time.Time) -> Bool;
};
class T__struct_28_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_28>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_28_asInterface) class T__struct_28_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_28_static_extension) typedef T__struct_28 = {
    public var _time : stdgo._internal.time.Time.Time;
    public var _want : Bool;
};
class T__struct_29_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_29>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_29_asInterface) class T__struct_29_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_29_static_extension) typedef T__struct_29 = {
    public var _give : stdgo._internal.time.Time.Time;
    public var _want : stdgo._internal.time.Time.Time;
};
class T__struct_30_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_30>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_30_asInterface) class T__struct_30_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_30_static_extension) typedef T__struct_30 = {
    public var _giveTime : stdgo._internal.time.Time.Time;
    public var _wantStart : stdgo._internal.time.Time.Time;
    public var _wantEnd : stdgo._internal.time.Time.Time;
};
class T__struct_31_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_31>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_31_asInterface) class T__struct_31_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_31_static_extension) typedef T__struct_31 = {
    public var _zone : stdgo.GoString;
    public var _unix : stdgo.GoInt64;
    public var _want1 : stdgo.GoString;
    public var _want2 : stdgo.GoString;
};
class T__struct_32_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_32_asInterface) class T__struct_32_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_32_static_extension) typedef T__struct_32 = {
    public var _zoneName : stdgo.GoString;
    public var _fileName : stdgo.GoString;
    public var _date : stdgo.Ref<stdgo._internal.time.Time.Location> -> stdgo._internal.time.Time.Time;
    public var _wantName : stdgo.GoString;
    public var _wantOffset : stdgo.GoInt;
};
class T__struct_33_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_33>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_33_asInterface) class T__struct_33_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_33_static_extension) typedef T__struct_33 = {
    public var _inStr : stdgo.GoString;
    public var _inEnd : stdgo.GoInt64;
    public var _inSec : stdgo.GoInt64;
    public var _name : stdgo.GoString;
    public var _off : stdgo.GoInt;
    public var _start : stdgo.GoInt64;
    public var _end : stdgo.GoInt64;
    public var _isDST : Bool;
    public var _ok : Bool;
};
class T__struct_34_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_34>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_34_asInterface) class T__struct_34_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_34_static_extension) typedef T__struct_34 = {
    public var _in : stdgo.GoString;
    public var _name : stdgo.GoString;
    public var _out : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_35_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_35>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_35_asInterface) class T__struct_35_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_35_static_extension) typedef T__struct_35 = {
    public var _in : stdgo.GoString;
    public var _off : stdgo.GoInt;
    public var _out : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_36_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_36>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.time_test.Time_test.T__struct_36_asInterface) class T__struct_36_static_extension {

}
@:local @:using(stdgo._internal.time_test.Time_test.T__struct_36_static_extension) typedef T__struct_36 = {
    public var _in : stdgo.GoString;
    public var _r : stdgo._internal.time.Time.Rule;
    public var _out : stdgo.GoString;
    public var _ok : Bool;
};
function _expensiveCall():Void {}
function exampleDuration():Void {
        var _t0 = stdgo._internal.time.Time.now()?.__copy__();
        _expensiveCall();
        var _t1 = stdgo._internal.time.Time.now()?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("The call took %v to run.\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1.sub(_t0?.__copy__()))));
    }
function exampleDuration_Round():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1h15m30.918273645s" : stdgo.GoString)), _d:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _round = (new stdgo.Slice<stdgo._internal.time.Time.Duration>(8, 8, ...[(1i64 : stdgo._internal.time.Time.Duration), (1000i64 : stdgo._internal.time.Time.Duration), (1000000i64 : stdgo._internal.time.Time.Duration), (1000000000i64 : stdgo._internal.time.Time.Duration), (2000000000i64 : stdgo._internal.time.Time.Duration), (60000000000i64 : stdgo._internal.time.Time.Duration), (600000000000i64 : stdgo._internal.time.Time.Duration), (3600000000000i64 : stdgo._internal.time.Time.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time.Duration>);
        for (__2 => _r in _round) {
            stdgo._internal.fmt.Fmt.printf(("d.Round(%6s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface((_d.round(_r).string() : stdgo.GoString)));
        };
    }
function exampleDuration_String():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface((3720300000000i64 : stdgo._internal.time.Time.Duration))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface((300000000i64 : stdgo._internal.time.Time.Duration))));
    }
function exampleDuration_Truncate():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1h15m30.918273645s" : stdgo.GoString)), _d:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _trunc = (new stdgo.Slice<stdgo._internal.time.Time.Duration>(8, 8, ...[(1i64 : stdgo._internal.time.Time.Duration), (1000i64 : stdgo._internal.time.Time.Duration), (1000000i64 : stdgo._internal.time.Time.Duration), (1000000000i64 : stdgo._internal.time.Time.Duration), (2000000000i64 : stdgo._internal.time.Time.Duration), (60000000000i64 : stdgo._internal.time.Time.Duration), (600000000000i64 : stdgo._internal.time.Time.Duration), (3600000000000i64 : stdgo._internal.time.Time.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time.Duration>);
        for (__2 => _t in _trunc) {
            stdgo._internal.fmt.Fmt.printf(("d.Truncate(%6s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface((_d.truncate(_t).string() : stdgo.GoString)));
        };
    }
function exampleParseDuration():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("10h" : stdgo.GoString)), _hours:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1h10m10s" : stdgo.GoString)), _complex:stdgo._internal.time.Time.Duration = __tmp__._0, __3:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1µs" : stdgo.GoString)), _micro:stdgo._internal.time.Time.Duration = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1us" : stdgo.GoString)), _micro2:stdgo._internal.time.Time.Duration = __tmp__._0, __5:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_hours)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_complex)));
        stdgo._internal.fmt.Fmt.printf(("There are %.0f seconds in %v.\n" : stdgo.GoString), stdgo.Go.toInterface(_complex.seconds()), stdgo.Go.toInterface(stdgo.Go.asInterface(_complex)));
        stdgo._internal.fmt.Fmt.printf(("There are %d nanoseconds in %v.\n" : stdgo.GoString), stdgo.Go.toInterface(_micro.nanoseconds()), stdgo.Go.toInterface(stdgo.Go.asInterface(_micro)));
        stdgo._internal.fmt.Fmt.printf(("There are %6.2e seconds in %v.\n" : stdgo.GoString), stdgo.Go.toInterface(_micro2.seconds()), stdgo.Go.toInterface(stdgo.Go.asInterface(_micro)));
    }
function exampleDuration_Hours():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("4h30m" : stdgo.GoString)), _h:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("I\'ve got %.1f hours of work left." : stdgo.GoString), stdgo.Go.toInterface(_h.hours()));
    }
function exampleDuration_Microseconds():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1s" : stdgo.GoString)), _u:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("One second is %d microseconds.\n" : stdgo.GoString), stdgo.Go.toInterface(_u.microseconds()));
    }
function exampleDuration_Milliseconds():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1s" : stdgo.GoString)), _u:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("One second is %d milliseconds.\n" : stdgo.GoString), stdgo.Go.toInterface(_u.milliseconds()));
    }
function exampleDuration_Minutes():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1h30m" : stdgo.GoString)), _m:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("The movie is %.0f minutes long." : stdgo.GoString), stdgo.Go.toInterface(_m.minutes()));
    }
function exampleDuration_Nanoseconds():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1µs" : stdgo.GoString)), _u:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("One microsecond is %d nanoseconds.\n" : stdgo.GoString), stdgo.Go.toInterface(_u.nanoseconds()));
    }
function exampleDuration_Seconds():Void {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(("1m30s" : stdgo.GoString)), _m:stdgo._internal.time.Time.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("Take off in t-%.0f seconds." : stdgo.GoString), stdgo.Go.toInterface(_m.seconds()));
    }
function _handle(_0:stdgo.GoInt):Void {}
function exampleAfter():Void {
        {
            var __select__ = true;
            while (__select__) {
                if (_c != null && _c.__isGet__()) {
                    __select__ = false;
                    {
                        var _m = _c.__get__();
                        {
                            _handle(_m);
                        };
                    };
                } else if (stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)) != null && stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("timed out" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
function exampleSleep():Void {
        stdgo._internal.time.Time.sleep((100000000i64 : stdgo._internal.time.Time.Duration));
    }
function _statusUpdate():stdgo.GoString {
        return stdgo.Go.str()?.__copy__();
    }
function exampleTick():Void {
        var _c = stdgo._internal.time.Time.tick((5000000000i64 : stdgo._internal.time.Time.Duration));
        for (_next => _ in _c) {
            stdgo._internal.fmt.Fmt.printf(("%v %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_next)), stdgo.Go.toInterface(_statusUpdate()));
        };
    }
function exampleMonth():Void {
        var __tmp__ = stdgo._internal.time.Time.now().date(), __2:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        if (((_month == (11 : stdgo._internal.time.Time.Month)) && (_day == (10 : stdgo.GoInt)) : Bool)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Happy Go day!" : stdgo.GoString)));
        };
    }
function exampleDate():Void {
        var _t = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("Go launched at %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t.local())));
    }
function exampleNewTicker():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ticker = stdgo._internal.time.Time.newTicker((1000000000i64 : stdgo._internal.time.Time.Duration));
            __deferstack__.unshift(() -> _ticker.stop());
            var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    stdgo._internal.time.Time.sleep((10000000000i64 : stdgo._internal.time.Time.Duration));
                    _done.__send__(true);
                };
                a();
            });
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_done != null && _done.__isGet__()) {
                            __select__ = false;
                            {
                                _done.__get__();
                                {
                                    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Done!" : stdgo.GoString)));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                        } else if (_ticker.c != null && _ticker.c.__isGet__()) {
                            __select__ = false;
                            {
                                var _t = _ticker.c.__get__();
                                {
                                    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Current time: " : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function exampleTime_Format():Void {
        var __tmp__ = stdgo._internal.time.Time.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39 PST 2015" : stdgo.GoString)), _t:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var __tmp__ = stdgo._internal.time.Time.loadLocation(("Asia/Shanghai" : stdgo.GoString)), _tz:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("default format:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Unix format:" : stdgo.GoString)), stdgo.Go.toInterface(_t.format(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Same, in UTC:" : stdgo.GoString)), stdgo.Go.toInterface(_t.utc().format(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("in Shanghai with seconds:" : stdgo.GoString)), stdgo.Go.toInterface(_t.in_(_tz).format(("2006-01-02T15:04:05 -070000" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("in Shanghai with colon seconds:" : stdgo.GoString)), stdgo.Go.toInterface(_t.in_(_tz).format(("2006-01-02T15:04:05 -07:00:00" : stdgo.GoString))));
        var _do = function(_name:stdgo.GoString, _layout:stdgo.GoString, _want:stdgo.GoString):Void {
            var _got = _t.format(_layout?.__copy__())?.__copy__();
            if (_want != (_got)) {
                stdgo._internal.fmt.Fmt.printf(("error: for %q got %q; expected %q\n" : stdgo.GoString), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                return;
            };
            stdgo._internal.fmt.Fmt.printf(("%-16s %q gives %q\n" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got));
        };
        stdgo._internal.fmt.Fmt.printf(("\nFormats:\n\n" : stdgo.GoString));
        _do(("Basic full date" : stdgo.GoString), ("Mon Jan 2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39 PST 2015" : stdgo.GoString));
        _do(("Basic short date" : stdgo.GoString), ("2006/01/02" : stdgo.GoString), ("2015/02/25" : stdgo.GoString));
        _do(("AM/PM" : stdgo.GoString), ("3PM==3pm==15h" : stdgo.GoString), ("11AM==11am==11h" : stdgo.GoString));
        {
            var __tmp__ = stdgo._internal.time.Time.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39.1234 PST 2015" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        _do(("No fraction" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39 PST 2015" : stdgo.GoString));
        _do(("0s for fraction" : stdgo.GoString), ("15:04:05.00000" : stdgo.GoString), ("11:06:39.12340" : stdgo.GoString));
        _do(("9s for fraction" : stdgo.GoString), ("15:04:05.99999999" : stdgo.GoString), ("11:06:39.1234" : stdgo.GoString));
    }
function exampleTime_Format_pad():Void {
        var __tmp__ = stdgo._internal.time.Time.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Sat Mar 7 11:06:39 PST 2015" : stdgo.GoString)), _t:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _do = function(_name:stdgo.GoString, _layout:stdgo.GoString, _want:stdgo.GoString):Void {
            var _got = _t.format(_layout?.__copy__())?.__copy__();
            if (_want != (_got)) {
                stdgo._internal.fmt.Fmt.printf(("error: for %q got %q; expected %q\n" : stdgo.GoString), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                return;
            };
            stdgo._internal.fmt.Fmt.printf(("%-16s %q gives %q\n" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got));
        };
        _do(("Unix" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Sat Mar  7 11:06:39 PST 2015" : stdgo.GoString));
        _do(("No pad" : stdgo.GoString), ("<2>" : stdgo.GoString), ("<7>" : stdgo.GoString));
        _do(("Spaces" : stdgo.GoString), ("<_2>" : stdgo.GoString), ("< 7>" : stdgo.GoString));
        _do(("Zeros" : stdgo.GoString), ("<02>" : stdgo.GoString), ("<07>" : stdgo.GoString));
        _do(("Suppressed pad" : stdgo.GoString), ("04:05" : stdgo.GoString), ("06:39" : stdgo.GoString));
    }
function exampleTime_GoString():Void {
        var _t = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_t.goString()));
        _t = _t.add((60000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_t.goString()));
        _t = _t.addDate((0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_t.goString()));
        {
            var __tmp__ = stdgo._internal.time.Time.parse(("Jan 2, 2006 at 3:04pm (MST)" : stdgo.GoString), ("Feb 3, 2013 at 7:54pm (UTC)" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_t.goString()));
    }
function exampleParse():Void {
        {};
        var __tmp__ = stdgo._internal.time.Time.parse(("Jan 2, 2006 at 3:04pm (MST)" : stdgo.GoString), ("Feb 3, 2013 at 7:54pm (PST)" : stdgo.GoString)), _t:stdgo._internal.time.Time.Time = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {};
        {
            var __tmp__ = stdgo._internal.time.Time.parse(("2006-Jan-02" : stdgo.GoString), ("2013-Feb-03" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {
            var __tmp__ = stdgo._internal.time.Time.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {
            var __tmp__ = stdgo._internal.time.Time.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05+07:00" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        var __tmp__ = stdgo._internal.time.Time.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)), __3:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error" : stdgo.GoString)), stdgo.Go.toInterface(_err));
    }
function exampleParseInLocation():Void {
        var __tmp__ = stdgo._internal.time.Time.loadLocation(("Europe/Berlin" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        {};
        var __tmp__ = stdgo._internal.time.Time.parseInLocation(("Jan 2, 2006 at 3:04pm (MST)" : stdgo.GoString), ("Jul 9, 2012 at 5:02am (CEST)" : stdgo.GoString), _loc), _t:stdgo._internal.time.Time.Time = __tmp__._0, __3:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {};
        {
            var __tmp__ = stdgo._internal.time.Time.parseInLocation(("2006-Jan-02" : stdgo.GoString), ("2012-Jul-09" : stdgo.GoString), _loc);
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
    }
function exampleUnix():Void {
        var _unixTime = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_unixTime.unix()));
        var _t = stdgo._internal.time.Time.unix(_unixTime.unix(), (0i64 : stdgo.GoInt64)).utc()?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
    }
function exampleUnixMicro():Void {
        var _umt = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_umt.unixMicro()));
        var _t = stdgo._internal.time.Time.unixMicro(_umt.unixMicro()).utc()?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
    }
function exampleUnixMilli():Void {
        var _umt = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_umt.unixMilli()));
        var _t = stdgo._internal.time.Time.unixMilli(_umt.unixMilli()).utc()?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
    }
function exampleTime_Unix():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time.unix((1000000000i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)).utc())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time.unix((0i64 : stdgo.GoInt64), (1000000000000000000i64 : stdgo.GoInt64)).utc())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time.unix((2000000000i64 : stdgo.GoInt64), (-1000000000000000000i64 : stdgo.GoInt64)).utc())));
        var _t = stdgo._internal.time.Time.date((2001 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (9 : stdgo.GoInt), (1 : stdgo.GoInt), (46 : stdgo.GoInt), (40 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_t.unix()));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_t.unixNano()));
    }
function exampleTime_Round():Void {
        var _t = stdgo._internal.time.Time.date((0 : stdgo.GoInt), (0 : stdgo._internal.time.Time.Month), (0 : stdgo.GoInt), (12 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (918273645 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _round = (new stdgo.Slice<stdgo._internal.time.Time.Duration>(8, 8, ...[(1i64 : stdgo._internal.time.Time.Duration), (1000i64 : stdgo._internal.time.Time.Duration), (1000000i64 : stdgo._internal.time.Time.Duration), (1000000000i64 : stdgo._internal.time.Time.Duration), (2000000000i64 : stdgo._internal.time.Time.Duration), (60000000000i64 : stdgo._internal.time.Time.Duration), (600000000000i64 : stdgo._internal.time.Time.Duration), (3600000000000i64 : stdgo._internal.time.Time.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time.Duration>);
        for (__2 => _d in _round) {
            stdgo._internal.fmt.Fmt.printf(("t.Round(%6s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_t.round(_d).format(("15:04:05.999999999" : stdgo.GoString))));
        };
    }
function exampleTime_Truncate():Void {
        var __tmp__ = stdgo._internal.time.Time.parse(("2006 Jan 02 15:04:05" : stdgo.GoString), ("2012 Dec 07 12:15:30.918273645" : stdgo.GoString)), _t:stdgo._internal.time.Time.Time = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _trunc = (new stdgo.Slice<stdgo._internal.time.Time.Duration>(7, 7, ...[(1i64 : stdgo._internal.time.Time.Duration), (1000i64 : stdgo._internal.time.Time.Duration), (1000000i64 : stdgo._internal.time.Time.Duration), (1000000000i64 : stdgo._internal.time.Time.Duration), (2000000000i64 : stdgo._internal.time.Time.Duration), (60000000000i64 : stdgo._internal.time.Time.Duration), (600000000000i64 : stdgo._internal.time.Time.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time.Duration>);
        for (__3 => _d in _trunc) {
            stdgo._internal.fmt.Fmt.printf(("t.Truncate(%5s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_t.truncate(_d).format(("15:04:05.999999999" : stdgo.GoString))));
        };
        var _midnight = stdgo._internal.time.Time.date(_t.year(), _t.month(), _t.day(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.local)?.__copy__();
        var __blank__ = _midnight;
    }
function exampleLoadLocation():Void {
        var __tmp__ = stdgo._internal.time.Time.loadLocation(("America/Los_Angeles" : stdgo.GoString)), _location:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _timeInUTC = stdgo._internal.time.Time.date((2018 : stdgo.GoInt), (8 : stdgo._internal.time.Time.Month), (30 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_timeInUTC.in_(_location))));
    }
function exampleLocation():Void {
        var _secondsEastOfUTC = ((28800000000000i64 : stdgo._internal.time.Time.Duration).seconds() : stdgo.GoInt);
        var _beijing = stdgo._internal.time.Time.fixedZone(("Beijing Time" : stdgo.GoString), _secondsEastOfUTC);
        var _timeInUTC = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _sameTimeInBeijing = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (20 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _beijing)?.__copy__();
        var _timesAreEqual = _timeInUTC.equal(_sameTimeInBeijing?.__copy__());
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_timesAreEqual));
    }
function exampleTime_Add():Void {
        var _start = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _afterTenSeconds = _start.add((10000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        var _afterTenMinutes = _start.add((600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        var _afterTenHours = _start.add((36000000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        var _afterTenDays = _start.add((864000000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("start = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)));
        stdgo._internal.fmt.Fmt.printf(("start.Add(time.Second * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenSeconds)));
        stdgo._internal.fmt.Fmt.printf(("start.Add(time.Minute * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenMinutes)));
        stdgo._internal.fmt.Fmt.printf(("start.Add(time.Hour * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenHours)));
        stdgo._internal.fmt.Fmt.printf(("start.Add(time.Hour * 24 * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenDays)));
    }
function exampleTime_AddDate():Void {
        var _start = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _oneDayLater = _start.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__();
        var _oneMonthLater = _start.addDate((0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        var _oneYearLater = _start.addDate((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("oneDayLater: start.AddDate(0, 0, 1) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oneDayLater)));
        stdgo._internal.fmt.Fmt.printf(("oneMonthLater: start.AddDate(0, 1, 0) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oneMonthLater)));
        stdgo._internal.fmt.Fmt.printf(("oneYearLater: start.AddDate(1, 0, 0) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oneYearLater)));
    }
function exampleTime_After():Void {
        var _year2000 = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _year3000 = stdgo._internal.time.Time.date((3000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _isYear3000AfterYear2000 = _year3000.after(_year2000?.__copy__());
        var _isYear2000AfterYear3000 = _year2000.after(_year3000?.__copy__());
        stdgo._internal.fmt.Fmt.printf(("year3000.After(year2000) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_isYear3000AfterYear2000));
        stdgo._internal.fmt.Fmt.printf(("year2000.After(year3000) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_isYear2000AfterYear3000));
    }
function exampleTime_Before():Void {
        var _year2000 = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _year3000 = stdgo._internal.time.Time.date((3000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _isYear2000BeforeYear3000 = _year2000.before(_year3000?.__copy__());
        var _isYear3000BeforeYear2000 = _year3000.before(_year2000?.__copy__());
        stdgo._internal.fmt.Fmt.printf(("year2000.Before(year3000) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_isYear2000BeforeYear3000));
        stdgo._internal.fmt.Fmt.printf(("year3000.Before(year2000) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_isYear3000BeforeYear2000));
    }
function exampleTime_Date():Void {
        var _d = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var __tmp__ = _d.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        stdgo._internal.fmt.Fmt.printf(("year = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_year));
        stdgo._internal.fmt.Fmt.printf(("month = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_month)));
        stdgo._internal.fmt.Fmt.printf(("day = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_day));
    }
function exampleTime_Day():Void {
        var _d = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _day = _d.day();
        stdgo._internal.fmt.Fmt.printf(("day = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_day));
    }
function exampleTime_Equal():Void {
        var _secondsEastOfUTC = ((28800000000000i64 : stdgo._internal.time.Time.Duration).seconds() : stdgo.GoInt);
        var _beijing = stdgo._internal.time.Time.fixedZone(("Beijing Time" : stdgo.GoString), _secondsEastOfUTC);
        var _d1 = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _d2 = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _beijing)?.__copy__();
        var _datesEqualUsingEqualOperator = stdgo.Go.toInterface(_d1) == stdgo.Go.toInterface(_d2);
        var _datesEqualUsingFunction = _d1.equal(_d2?.__copy__());
        stdgo._internal.fmt.Fmt.printf(("datesEqualUsingEqualOperator = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_datesEqualUsingEqualOperator));
        stdgo._internal.fmt.Fmt.printf(("datesEqualUsingFunction = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_datesEqualUsingFunction));
    }
function exampleTime_String():Void {
        var _timeWithNanoseconds = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), (14 : stdgo.GoInt), (15 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _withNanoseconds = (_timeWithNanoseconds.string() : stdgo.GoString)?.__copy__();
        var _timeWithoutNanoseconds = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), (14 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _withoutNanoseconds = (_timeWithoutNanoseconds.string() : stdgo.GoString)?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("withNanoseconds = %v\n" : stdgo.GoString), stdgo.Go.toInterface((_withNanoseconds : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.printf(("withoutNanoseconds = %v\n" : stdgo.GoString), stdgo.Go.toInterface((_withoutNanoseconds : stdgo.GoString)));
    }
function exampleTime_Sub():Void {
        var _start = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _end = stdgo._internal.time.Time.date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _difference = _end.sub(_start?.__copy__());
        stdgo._internal.fmt.Fmt.printf(("difference = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_difference)));
    }
function exampleTime_AppendFormat():Void {
        var _t = stdgo._internal.time.Time.date((2017 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (4 : stdgo.GoInt), (11 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _text = (("Time: " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _text = _t.appendFormat(_text, ("3:04PM" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_text : stdgo.GoString)));
    }
function exampleFixedZone():Void {
        var _loc = stdgo._internal.time.Time.fixedZone(("UTC-8" : stdgo.GoString), (-28800 : stdgo.GoInt));
        var _t = stdgo._internal.time.Time.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("The time is:" : stdgo.GoString)), stdgo.Go.toInterface(_t.format(("02 Jan 06 15:04 MST" : stdgo.GoString))));
    }
function testNextStdChunk(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _markChunks = function(_format:stdgo.GoString):stdgo.GoString {
            var _out = stdgo.Go.str()?.__copy__();
            {
                var _s = _format?.__copy__();
                while (_s != (stdgo.Go.str())) {
                    var __tmp__ = nextStdChunk(_s?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
                    _out = (_out + (_prefix)?.__copy__() : stdgo.GoString);
                    if ((_std > (0 : stdgo.GoInt) : Bool)) {
                        _out = (_out + (((("(" : stdgo.GoString) + (stdChunkNames[_std] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _s = _suffix?.__copy__();
                };
            };
            return _out?.__copy__();
        };
        var _noParens = function(_r:stdgo.GoRune):stdgo.GoRune {
            if (((_r == (40 : stdgo.GoInt32)) || (_r == (41 : stdgo.GoInt32)) : Bool)) {
                return (-1 : stdgo.GoInt32);
            };
            return _r;
        };
        for (__2 => _marked in _nextStdChunkTests) {
            var _format = stdgo._internal.strings.Strings.map_(_noParens, _marked?.__copy__())?.__copy__();
            var _out = _markChunks(_format?.__copy__())?.__copy__();
            if (_out != (_marked)) {
                _t.errorf(("nextStdChunk parses %q as %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_marked));
            };
        };
    }
function testRFC3339Conversion(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _f in _rfc3339Formats) {
            if (_f._time.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) != (_f._formattedValue)) {
                _t.error(stdgo.Go.toInterface(("RFC3339:" : stdgo.GoString)));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface(_f._formattedValue));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_f._time.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))));
            };
        };
    }
function testAppendInt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_0>(29, 29, ...[
({ _in : (0 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (1 : stdgo.GoInt), _want : ("0" : stdgo.GoString) } : T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("00" : stdgo.GoString) } : T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (3 : stdgo.GoInt), _want : ("000" : stdgo.GoString) } : T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (1 : stdgo.GoInt), _want : ("1" : stdgo.GoString) } : T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("01" : stdgo.GoString) } : T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (3 : stdgo.GoInt), _want : ("001" : stdgo.GoString) } : T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (1 : stdgo.GoInt), _want : ("-1" : stdgo.GoString) } : T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("-01" : stdgo.GoString) } : T__struct_0),
({ _in : (-1 : stdgo.GoInt), _width : (3 : stdgo.GoInt), _want : ("-001" : stdgo.GoString) } : T__struct_0),
({ _in : (99 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("99" : stdgo.GoString) } : T__struct_0),
({ _in : (100 : stdgo.GoInt), _width : (2 : stdgo.GoInt), _want : ("100" : stdgo.GoString) } : T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("0001" : stdgo.GoString) } : T__struct_0),
({ _in : (12 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("0012" : stdgo.GoString) } : T__struct_0),
({ _in : (123 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("0123" : stdgo.GoString) } : T__struct_0),
({ _in : (1234 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("1234" : stdgo.GoString) } : T__struct_0),
({ _in : (12345 : stdgo.GoInt), _width : (4 : stdgo.GoInt), _want : ("12345" : stdgo.GoString) } : T__struct_0),
({ _in : (1 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("00001" : stdgo.GoString) } : T__struct_0),
({ _in : (12 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("00012" : stdgo.GoString) } : T__struct_0),
({ _in : (123 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("00123" : stdgo.GoString) } : T__struct_0),
({ _in : (1234 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("01234" : stdgo.GoString) } : T__struct_0),
({ _in : (12345 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("12345" : stdgo.GoString) } : T__struct_0),
({ _in : (123456 : stdgo.GoInt), _width : (5 : stdgo.GoInt), _want : ("123456" : stdgo.GoString) } : T__struct_0),
({ _in : (0 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("000000000" : stdgo.GoString) } : T__struct_0),
({ _in : (123 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("000000123" : stdgo.GoString) } : T__struct_0),
({ _in : (123456 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("000123456" : stdgo.GoString) } : T__struct_0),
({ _in : (123456789 : stdgo.GoInt), _width : (9 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString) } : T__struct_0)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({ _in : (0 : stdgo.GoInt), _width : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
        var _got:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (__2 => _tt in _tests) {
            _got = appendInt((_got.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _tt._in, _tt._width);
            if ((_got : stdgo.GoString) != (_tt._want)) {
                _t.errorf(("appendInt(%d, %d) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._width), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _time = unix((0i64 : stdgo.GoInt64), (1233810057012345600i64 : stdgo.GoInt64))?.__copy__();
        for (__2 => _test in _formatTests) {
            var _result = _time.format(_test._format?.__copy__())?.__copy__();
            if (_result != (_test._result)) {
                _t.errorf(("%s expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_result));
            };
        };
    }
function testGoString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _goStringTests) {
            if (_tt._in.goString() != (_tt._want)) {
                _t.errorf(("GoString (%q): got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._in)), stdgo.Go.toInterface(_tt._in.goString()), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testFormatSingleDigits(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _time = date((2001 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (700000000 : stdgo.GoInt), utc)?.__copy__();
        var _test = (new stdgo._internal.time_test.Time_test.FormatTest(("single digit format" : stdgo.GoString), ("3:4:5" : stdgo.GoString), ("4:5:6" : stdgo.GoString)) : stdgo._internal.time_test.Time_test.FormatTest);
        var _result = _time.format(_test._format?.__copy__())?.__copy__();
        if (_result != (_test._result)) {
            _t.errorf(("%s expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_result));
        };
    }
function testFormatShortYear(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _years = (new stdgo.Slice<stdgo.GoInt>(33, 33, ...[
(-100001 : stdgo.GoInt),
(-100000 : stdgo.GoInt),
(-99999 : stdgo.GoInt),
(-10001 : stdgo.GoInt),
(-10000 : stdgo.GoInt),
(-9999 : stdgo.GoInt),
(-1001 : stdgo.GoInt),
(-1000 : stdgo.GoInt),
(-999 : stdgo.GoInt),
(-101 : stdgo.GoInt),
(-100 : stdgo.GoInt),
(-99 : stdgo.GoInt),
(-11 : stdgo.GoInt),
(-10 : stdgo.GoInt),
(-9 : stdgo.GoInt),
(-1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(9 : stdgo.GoInt),
(10 : stdgo.GoInt),
(11 : stdgo.GoInt),
(99 : stdgo.GoInt),
(100 : stdgo.GoInt),
(101 : stdgo.GoInt),
(999 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(1001 : stdgo.GoInt),
(9999 : stdgo.GoInt),
(10000 : stdgo.GoInt),
(10001 : stdgo.GoInt),
(99999 : stdgo.GoInt),
(100000 : stdgo.GoInt),
(100001 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__2 => _y in _years) {
            var _time = date(_y, (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__();
            var _result = _time.format(("2006.01.02" : stdgo.GoString))?.__copy__();
            var _want:stdgo.GoString = ("" : stdgo.GoString);
            if ((_y < (0 : stdgo.GoInt) : Bool)) {
                _want = stdgo._internal.fmt.Fmt.sprintf(("-%04d.%02d.%02d" : stdgo.GoString), stdgo.Go.toInterface(-_y), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__();
            } else {
                _want = stdgo._internal.fmt.Fmt.sprintf(("%04d.%02d.%02d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)))?.__copy__();
            };
            if (_result != (_want)) {
                _t.errorf(("(jan 1 %d).Format(\"2006.01.02\") = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_want));
            };
        };
    }
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _parseTests) {
            var __tmp__ = parse(_test._format?.__copy__(), _test._value?.__copy__()), _time:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            } else {
                _checkTime(_time?.__copy__(), (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.time_test.Time_test.ParseTest>), _t);
            };
        };
    }
function testParseDayOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _dayOutOfRangeTests) {
            var __tmp__ = parse(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), _test._date?.__copy__()), __3:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_test._ok && (_err == null) : Bool)) {} else if ((!_test._ok && (_err != null) : Bool)) {
                if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("day out of range" : stdgo.GoString))) {
                    _t.errorf(("%q: expected \'day\' error, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._date), stdgo.Go.toInterface(_err));
                };
            } else if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._date), stdgo.Go.toInterface(_err));
            } else if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%q: expected \'day\' error, got none" : stdgo.GoString), stdgo.Go.toInterface(_test._date));
            };
        };
    }
function testParseInLocation(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = loadLocation(("Asia/Baghdad" : stdgo.GoString)), _baghdad:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __0:Time = ({} : stdgo._internal.time.Time.Time), __1:Time = ({} : stdgo._internal.time.Time.Time);
var _t2 = __1, _t1 = __0;
        {
            var __tmp__ = parseInLocation(("Jan 02 2006 MST" : stdgo.GoString), ("Feb 01 2013 AST" : stdgo.GoString), _baghdad);
            _t1 = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _t1.zone(), __18:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if (_offset != ((0 : stdgo.GoInt))) {
            _t2 = date((2013 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _baghdad)?.__copy__();
            if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t2)) {
                _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Baghdad) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
            };
            if (_offset != ((10800 : stdgo.GoInt))) {
                _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Baghdad).Zone = _, %d, want _, %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((10800 : stdgo.GoInt)));
            };
        };
        var __tmp__ = loadLocation(("America/Blanc-Sablon" : stdgo.GoString)), _blancSablon:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = parseInLocation(("Jan 02 2006 MST" : stdgo.GoString), ("Feb 01 2013 AST" : stdgo.GoString), _blancSablon);
            _t1 = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _t2 = date((2013 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _blancSablon)?.__copy__();
        if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t2)) {
            _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        {
            var __tmp__ = _t1.zone();
            _offset = __tmp__._1;
        };
        if (_offset != ((-14400 : stdgo.GoInt))) {
            _t.fatalf(("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon).Zone = _, %d, want _, %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((-14400 : stdgo.GoInt)));
        };
    }
function testLoadLocationZipFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = loadLocation(("Australia/Sydney" : stdgo.GoString)), __2:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testRubyParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _rubyTests) {
            var __tmp__ = parse(_test._format?.__copy__(), _test._value?.__copy__()), _time:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            } else {
                _checkTime(_time?.__copy__(), (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.time_test.Time_test.ParseTest>), _t);
            };
        };
    }
function _checkTime(_time:Time, _test:stdgo.Ref<ParseTest>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (((_test._yearSign >= (0 : stdgo.GoInt) : Bool) && ((_test._yearSign * _time.year() : stdgo.GoInt) != (2010 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("%s: bad year: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.year()), stdgo.Go.toInterface((2010 : stdgo.GoInt)));
        };
        if (_time.month() != ((2 : stdgo._internal.time.Time.Month))) {
            _t.errorf(("%s: bad month: %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_time.month())), stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.time.Time.Month))));
        };
        if (_time.day() != ((4 : stdgo.GoInt))) {
            _t.errorf(("%s: bad day: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.day()), stdgo.Go.toInterface((4 : stdgo.GoInt)));
        };
        if (_time.hour() != ((21 : stdgo.GoInt))) {
            _t.errorf(("%s: bad hour: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.hour()), stdgo.Go.toInterface((21 : stdgo.GoInt)));
        };
        if (_time.minute() != ((0 : stdgo.GoInt))) {
            _t.errorf(("%s: bad minute: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.minute()), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        };
        if (_time.second() != ((57 : stdgo.GoInt))) {
            _t.errorf(("%s: bad second: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.second()), stdgo.Go.toInterface((57 : stdgo.GoInt)));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv.parseUint(((("012345678" : stdgo.GoString).__slice__(0, _test._fracDigits) : stdgo.GoString) + (("000000000" : stdgo.GoString).__slice__(0, ((9 : stdgo.GoInt) - _test._fracDigits : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _nanosec:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        if (_time.nanosecond() != ((_nanosec : stdgo.GoInt))) {
            _t.errorf(("%s: bad nanosecond: %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_time.nanosecond()), stdgo.Go.toInterface(_nanosec));
        };
        var __tmp__ = _time.zone(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((_test._hasTZ && (_offset != (-28800 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("%s: bad tz offset: %s %d not %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((-28800 : stdgo.GoInt)));
        };
        if ((_test._hasWD && (_time.weekday() != (4 : stdgo._internal.time.Time.Weekday)) : Bool)) {
            _t.errorf(("%s: bad weekday: %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(stdgo.Go.asInterface(_time.weekday())), stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.time.Time.Weekday))));
        };
    }
function testFormatAndParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _f = function(_sec:stdgo.GoInt64):Bool {
            var _t1 = unix((_sec / (2i64 : stdgo.GoInt64) : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
            if ((((_t1.year() < (1000 : stdgo.GoInt) : Bool) || (_t1.year() > (9999 : stdgo.GoInt) : Bool) : Bool) || (_t1.unix() != _sec) : Bool)) {
                return true;
            };
            var __tmp__ = parse(("Mon MST 2006-01-02T15:04:05Z07:00" : stdgo.GoString), _t1.format(("Mon MST 2006-01-02T15:04:05Z07:00" : stdgo.GoString))?.__copy__()), _t2:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return false;
            };
            if (((_t1.unix() != _t2.unix()) || (_t1.nanosecond() != _t2.nanosecond()) : Bool)) {
                _t.errorf(("FormatAndParse %d: %q(%d) %q(%d)" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(_t1.unix()), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)), stdgo.Go.toInterface(_t2.unix()));
                return false;
            };
            return true;
        };
        var _f32 = function(_sec:stdgo.GoInt32):Bool {
            return _f((_sec : stdgo.GoInt64));
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f32), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testParseTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _parseTimeZoneTests) {
            var __tmp__ = parseTimeZone(_test._value?.__copy__()), _length:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok != (_test._ok)) {
                _t.errorf(("expected %t for %q got %t" : stdgo.GoString), stdgo.Go.toInterface(_test._ok), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_ok));
            } else if (_length != (_test._length)) {
                _t.errorf(("expected %d for %q got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._length), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_length));
            };
        };
    }
function testParseErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _parseErrorTests) {
            var __tmp__ = parse(_test._format?.__copy__(), _test._value?.__copy__()), __3:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("expected error for %q %q" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._value));
            } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _test._expect?.__copy__())) {
                _t.errorf(("expected error with %q for %q %q; got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expect), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_err));
            };
        };
    }
function testNoonIs12PM(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _noon = date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__();
        {};
        var _got = _noon.format(("3:04PM" : stdgo.GoString))?.__copy__();
        if (_got != (("12:00PM" : stdgo.GoString))) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("12:00PM" : stdgo.GoString)));
        };
        _got = _noon.format(("03:04PM" : stdgo.GoString))?.__copy__();
        if (_got != (("12:00PM" : stdgo.GoString))) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("12:00PM" : stdgo.GoString)));
        };
    }
function testMidnightIs12AM(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _midnight = date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__();
        var _expect = ("12:00AM" : stdgo.GoString);
        var _got = _midnight.format(("3:04PM" : stdgo.GoString))?.__copy__();
        if (_got != (_expect)) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
        _got = _midnight.format(("03:04PM" : stdgo.GoString))?.__copy__();
        if (_got != (_expect)) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
    }
function test12PMIsNoon(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parse(("3:04PM" : stdgo.GoString), ("12:00PM" : stdgo.GoString)), _noon:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_noon.hour() != ((12 : stdgo.GoInt))) {
            _t.errorf(("got %d; expect 12" : stdgo.GoString), stdgo.Go.toInterface(_noon.hour()));
        };
        {
            var __tmp__ = parse(("03:04PM" : stdgo.GoString), ("12:00PM" : stdgo.GoString));
            _noon = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_noon.hour() != ((12 : stdgo.GoInt))) {
            _t.errorf(("got %d; expect 12" : stdgo.GoString), stdgo.Go.toInterface(_noon.hour()));
        };
    }
function test12AMIsMidnight(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parse(("3:04PM" : stdgo.GoString), ("12:00AM" : stdgo.GoString)), _midnight:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_midnight.hour() != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %d; expect 0" : stdgo.GoString), stdgo.Go.toInterface(_midnight.hour()));
        };
        {
            var __tmp__ = parse(("03:04PM" : stdgo.GoString), ("12:00AM" : stdgo.GoString));
            _midnight = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_midnight.hour() != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %d; expect 0" : stdgo.GoString), stdgo.Go.toInterface(_midnight.hour()));
        };
    }
function testMissingZone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parse(("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 02 16:10:03 -0500 2006" : stdgo.GoString)), _time:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _expect = ("Thu Feb  2 16:10:03 -0500 2006" : stdgo.GoString);
        var _str = _time.format(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString))?.__copy__();
        if (_str != (_expect)) {
            _t.errorf(("got %s; expect %s" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expect));
        };
    }
function testMinutesInTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parse(("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Mon Jan 02 15:04:05 +0123 2006" : stdgo.GoString)), _time:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _expected = (4980 : stdgo.GoInt);
        var __tmp__ = _time.zone(), __10:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if (_offset != (_expected)) {
            _t.errorf(("ZoneOffset = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_expected));
        };
    }
function testParseSecondsInTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _secondsTimeZoneOffsetTests) {
            var __tmp__ = parse(_test._format?.__copy__(), _test._value?.__copy__()), _time:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = _time.zone(), __11:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
            if (_offset != (_test._expectedoffset)) {
                _t.errorf(("ZoneOffset = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_test._expectedoffset));
            };
        };
    }
function testFormatSecondsInTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _secondsTimeZoneOffsetTests) {
            var _d = date((1871 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (33 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), fixedZone(("LMT" : stdgo.GoString), _test._expectedoffset))?.__copy__();
            var _timestr = _d.format(_test._format?.__copy__())?.__copy__();
            if (_timestr != (_test._value)) {
                _t.errorf(("Format = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_timestr), stdgo.Go.toInterface(_test._value));
            };
        };
    }
function testUnderscoreTwoThousand(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _format = ("15:04_20060102" : stdgo.GoString);
        var _input = ("14:38_20150618" : stdgo.GoString);
        var __tmp__ = parse(_format?.__copy__(), _input?.__copy__()), _time:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _time.date(), _y:stdgo.GoInt = __tmp__._0, _m:stdgo._internal.time.Time.Month = __tmp__._1, _d:stdgo.GoInt = __tmp__._2;
            if (((_y != ((2015 : stdgo.GoInt)) || _m != ((6 : stdgo._internal.time.Time.Month)) : Bool) || (_d != (18 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Incorrect y/m/d, got %d/%d/%d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), stdgo.Go.toInterface(_d));
            };
        };
        {
            var _h = _time.hour();
            if (_h != ((14 : stdgo.GoInt))) {
                _t.errorf(("Incorrect hour, got %d" : stdgo.GoString), stdgo.Go.toInterface(_h));
            };
        };
        {
            var _m = _time.minute();
            if (_m != ((38 : stdgo.GoInt))) {
                _t.errorf(("Incorrect minute, got %d" : stdgo.GoString), stdgo.Go.toInterface(_m));
            };
        };
    }
function testStd0xParseError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_3>(3, 3, ...[({ _format : ("01 MST" : stdgo.GoString), _value : ("0 MST" : stdgo.GoString), _valueElemPrefix : ("0" : stdgo.GoString) } : T__struct_3), ({ _format : ("01 MST" : stdgo.GoString), _value : ("1 MST" : stdgo.GoString), _valueElemPrefix : ("1" : stdgo.GoString) } : T__struct_3), ({ _format : ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString), _value : ("Thursday, 04-Feb-1 21:00:57 PST" : stdgo.GoString), _valueElemPrefix : ("1" : stdgo.GoString) } : T__struct_3)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _format : ("" : stdgo.GoString), _value : ("" : stdgo.GoString), _valueElemPrefix : ("" : stdgo.GoString) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
        for (__2 => _tt in _tests) {
            var __tmp__ = parse(_tt._format?.__copy__(), _tt._value?.__copy__()), __3:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("Parse(%q, %q) did not fail as expected" : stdgo.GoString), stdgo.Go.toInterface(_tt._format), stdgo.Go.toInterface(_tt._value));
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<ParseError>)) : stdgo.Ref<ParseError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.time.Time.ParseError>), _1 : false };
                }, _perr = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("Parse(%q, %q) returned error type %T, expected ParseError" : stdgo.GoString), stdgo.Go.toInterface(_tt._format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
                } else if ((!stdgo._internal.strings.Strings.contains(_perr.error()?.__copy__(), ("cannot parse" : stdgo.GoString)) || !stdgo._internal.strings.Strings.hasPrefix(_perr.valueElem?.__copy__(), _tt._valueElemPrefix?.__copy__()) : Bool)) {
                    _t.errorf(("Parse(%q, %q) returned wrong parsing error message: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
                };
            };
        };
    }
function testParseMonthOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _monthOutOfRangeTests) {
            var __tmp__ = parse(("01-02" : stdgo.GoString), _test._value?.__copy__()), __3:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((!_test._ok && (_err != null) : Bool)) {
                if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("month out of range" : stdgo.GoString))) {
                    _t.errorf(("%q: expected \'month\' error, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_err));
                };
            } else if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_err));
            } else if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%q: expected \'month\' error, got none" : stdgo.GoString), stdgo.Go.toInterface(_test._value));
            };
        };
    }
function testParseYday(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (365 : stdgo.GoInt) : Bool), _i++, {
                var _d = stdgo._internal.fmt.Fmt.sprintf(("2020-%03d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                var __tmp__ = parse(("2006-002" : stdgo.GoString), _d?.__copy__()), _tm:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("unexpected error for %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                } else if (((_tm.year() != (2020 : stdgo.GoInt)) || (_tm.yearDay() != _i) : Bool)) {
                    _t.errorf(("got year %d yearday %d, want %d %d" : stdgo.GoString), stdgo.Go.toInterface(_tm.year()), stdgo.Go.toInterface(_tm.yearDay()), stdgo.Go.toInterface((2020 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
function testQuote(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_5>(7, 7, ...[({ _s : ("\"" : stdgo.GoString), _want : ("\"\\\"\"" : stdgo.GoString) } : T__struct_5), ({ _s : ("abc\"xyz\"" : stdgo.GoString), _want : ("\"abc\\\"xyz\\\"\"" : stdgo.GoString) } : T__struct_5), ({ _s : stdgo.Go.str()?.__copy__(), _want : ("\"\"" : stdgo.GoString) } : T__struct_5), ({ _s : ("abc" : stdgo.GoString), _want : ("\"abc\"" : stdgo.GoString) } : T__struct_5), ({ _s : ("☺" : stdgo.GoString), _want : ("\"\\xe2\\x98\\xba\"" : stdgo.GoString) } : T__struct_5), ({ _s : ("☺ hello ☺ hello" : stdgo.GoString), _want : ("\"\\xe2\\x98\\xba hello \\xe2\\x98\\xba hello\"" : stdgo.GoString) } : T__struct_5), ({ _s : stdgo.Go.str(4)?.__copy__(), _want : ("\"\\x04\"" : stdgo.GoString) } : T__struct_5)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
        for (__2 => _tt in _tests) {
            {
                var _q = quote(_tt._s?.__copy__())?.__copy__();
                if (_q != (_tt._want)) {
                    _t.errorf(("Quote(%q) = got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testFormatFractionalSecondSeparators(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_5>(4, 4, ...[({ _s : ("15:04:05.000" : stdgo.GoString), _want : ("21:00:57.012" : stdgo.GoString) } : T__struct_5), ({ _s : ("15:04:05.999" : stdgo.GoString), _want : ("21:00:57.012" : stdgo.GoString) } : T__struct_5), ({ _s : ("15:04:05,000" : stdgo.GoString), _want : ("21:00:57,012" : stdgo.GoString) } : T__struct_5), ({ _s : ("15:04:05,999" : stdgo.GoString), _want : ("21:00:57,012" : stdgo.GoString) } : T__struct_5)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
        var _time = unix((0i64 : stdgo.GoInt64), (1233810057012345600i64 : stdgo.GoInt64))?.__copy__();
        for (__2 => _tt in _tests) {
            {
                var _q = _time.format(_tt._s?.__copy__())?.__copy__();
                if (_q != (_tt._want)) {
                    _t.errorf(("Format(%q) = got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testParseFractionalSecondsLongerThanNineDigits(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _longFractionalDigitsTests) {
            for (__3 => _format in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var __tmp__ = parse(_format?.__copy__(), _tt._value?.__copy__()), _tm:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%q, %q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(_err));
                    continue;
                };
                {
                    var _got = _tm.nanosecond();
                    if (_got != (_tt._want)) {
                        _t.errorf(("Parse(%q, %q) = got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                    };
                };
            };
        };
    }
function fuzzFormatRFC3339(_f:stdgo.Ref<stdgo._internal.testing.Testing.F>):Void {
        for (__2 => _ts in (new stdgo.Slice<stdgo.GoArray<stdgo.GoInt64>>(5, 5, ...[(new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(-9223372036854775808i64 : stdgo.GoInt64), (-9223372036854775808i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(-62167219200i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(1661201140i64 : stdgo.GoInt64), (676836973i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(253402300799i64 : stdgo.GoInt64), (999999999i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[(9223372036854775807i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__()].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoInt64>>)) {
            _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(true), stdgo.Go.toInterface(false), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(false), stdgo.Go.toInterface(true), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            for (__19 => _offset in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (60 : stdgo.GoInt), (3600 : stdgo.GoInt), (362340 : stdgo.GoInt), (123456789 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(false), stdgo.Go.toInterface(false), stdgo.Go.toInterface(-_offset));
                _f.add(stdgo.Go.toInterface(_ts[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_ts[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(false), stdgo.Go.toInterface(false), stdgo.Go.toInterface(_offset));
            };
        };
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _sec:stdgo.GoInt64, _nsec:stdgo.GoInt64, _useUTC:Bool, _useLocal:Bool, _tzOffset:stdgo.GoInt):Void {
            var _loc:stdgo.Ref<Location> = (null : stdgo.Ref<stdgo._internal.time.Time.Location>);
            if (_useUTC) {
                _loc = utc;
            } else if (_useLocal) {
                _loc = local;
            } else {
                _loc = fixedZone(stdgo.Go.str()?.__copy__(), _tzOffset);
            };
            var _ts = unix(_sec, _nsec).in_(_loc)?.__copy__();
            var _got = appendFormatRFC3339(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), false);
            var _want = appendFormatAny(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString));
            if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
                _t.errorf(("Format(%s, RFC3339) mismatch:\n\tgot:  %s\n\twant: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            var _gotNanos = appendFormatRFC3339(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), true);
            var _wantNanos = appendFormatAny(_ts?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString));
            if (!stdgo._internal.bytes.Bytes.equal(_got, _want)) {
                _t.errorf(("Format(%s, RFC3339Nano) mismatch:\n\tgot:  %s\n\twant: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ts)), stdgo.Go.toInterface(_gotNanos), stdgo.Go.toInterface(_wantNanos));
            };
        }));
    }
function fuzzParseRFC3339(_f:stdgo.Ref<stdgo._internal.testing.Testing.F>):Void {
        for (__2 => _tt in _formatTests) {
            _f.add(stdgo.Go.toInterface(_tt._result));
        };
        for (__11 => _tt in _parseTests) {
            _f.add(stdgo.Go.toInterface(_tt._value));
        };
        for (__20 => _tt in _parseErrorTests) {
            _f.add(stdgo.Go.toInterface(_tt._value));
        };
        for (__29 => _tt in _longFractionalDigitsTests) {
            _f.add(stdgo.Go.toInterface(_tt._value));
        };
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.GoString):Void {
            var _equalTime = function(_t1:Time, _t2:Time):Bool {
                var __tmp__ = _t1.zone(), _name1:stdgo.GoString = __tmp__._0, _offset1:stdgo.GoInt = __tmp__._1;
                var __tmp__ = _t2.zone(), _name2:stdgo.GoString = __tmp__._0, _offset2:stdgo.GoInt = __tmp__._1;
                return ((_t1.equal(_t2?.__copy__()) && _name1 == (_name2) : Bool) && (_offset1 == _offset2) : Bool);
            };
            for (__46 => _tz in (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>(2, 2, ...[utc, local]) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Location>>)) {
                var __tmp__ = parseAny(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), _s?.__copy__(), utc, _tz), _t1:stdgo._internal.time.Time.Time = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                var __tmp__ = parseAny(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString), _s?.__copy__(), utc, _tz), _t2:stdgo._internal.time.Time.Time = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if ((_err1 == null) != ((_err2 == null))) {
                    _t.fatalf(("ParseAny(%q) error mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err1), stdgo.Go.toInterface(_err2));
                } else if (!_equalTime(_t1?.__copy__(), _t2?.__copy__())) {
                    _t.fatalf(("ParseAny(%q) value mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
                };
                if (_err1 == null) {
                    var _num2 = function(_s:stdgo.GoString):stdgo.GoByte {
                        return (((10 : stdgo.GoUInt8) * ((_s[(0 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) + ((_s[(1 : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    };
                    if ((((_s.length) > (12 : stdgo.GoInt) : Bool) && (_s[(12 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
                        _t.skipf(("ParseAny(%q) incorrectly allows single-digit hour fields" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    } else if ((((_s.length) > (19 : stdgo.GoInt) : Bool) && (_s[(19 : stdgo.GoInt)] == (44 : stdgo.GoUInt8)) : Bool)) {
                        _t.skipf(("ParseAny(%q) incorrectly allows comma as sub-second separator" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    } else if (((!stdgo._internal.strings.Strings.hasSuffix(_s?.__copy__(), ("Z" : stdgo.GoString)) && ((_s.length) > (4 : stdgo.GoInt) : Bool) : Bool) && (((_num2((_s.__slice__(((_s.length) - (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) >= (24 : stdgo.GoUInt8) : Bool) || (_num2((_s.__slice__(((_s.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) >= (60 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _t.skipf(("ParseAny(%q) incorrectly allows out-of-range zone offset" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                };
                {
                    var __tmp__ = parseRFC3339(_s?.__copy__(), _tz), _got:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok != ((_err1 == null))) {
                        _t.fatalf(("ParseRFC3339(%q) error mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_err1 == null));
                    } else if (!_equalTime(_got?.__copy__(), _t1?.__copy__())) {
                        _t.fatalf(("ParseRFC3339(%q) value mismatch:\n\tgot:  %v\n\twant: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
                    };
                };
            };
        }));
    }
function testHasMonotonicClock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _yes = function(_expr:stdgo.GoString, _tt:Time):Void {
            if (getMono((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.time.Time.Time>)) == ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("%s: missing monotonic clock reading" : stdgo.GoString), stdgo.Go.toInterface(_expr));
            };
        };
        var _no = function(_expr:stdgo.GoString, _tt:Time):Void {
            if (getMono((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
                _t.errorf(("%s: unexpected monotonic clock reading" : stdgo.GoString), stdgo.Go.toInterface(_expr));
            };
        };
        _yes(("<-After(1)" : stdgo.GoString), after((1i64 : stdgo._internal.time.Time.Duration)).__get__()?.__copy__());
        var _ticker = newTicker((1i64 : stdgo._internal.time.Time.Duration));
        _yes(("<-Tick(1)" : stdgo.GoString), _ticker.c.__get__()?.__copy__());
        _ticker.stop();
        _no(("Date(2009, 11, 23, 0, 0, 0, 0, UTC)" : stdgo.GoString), date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__());
        var __tmp__ = parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Sat Mar  7 11:06:39 PST 2015" : stdgo.GoString)), _tp:stdgo._internal.time.Time.Time = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        _no(("Parse(UnixDate, \"Sat Mar  7 11:06:39 PST 2015\")" : stdgo.GoString), _tp?.__copy__());
        _no(("Unix(1486057371, 0)" : stdgo.GoString), unix((1486057371i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__());
        _yes(("Now()" : stdgo.GoString), now()?.__copy__());
        var _tu = unix((1486057371i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
        var _tm = _tu?.__copy__();
        setMono((stdgo.Go.setRef(_tm) : stdgo.Ref<stdgo._internal.time.Time.Time>), (123456i64 : stdgo.GoInt64));
        _no(("tu" : stdgo.GoString), _tu?.__copy__());
        _yes(("tm" : stdgo.GoString), _tm?.__copy__());
        _no(("tu.Add(1)" : stdgo.GoString), _tu.add((1i64 : stdgo._internal.time.Time.Duration))?.__copy__());
        _no(("tu.In(UTC)" : stdgo.GoString), _tu.in_(utc)?.__copy__());
        _no(("tu.AddDate(1, 1, 1)" : stdgo.GoString), _tu.addDate((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
        _no(("tu.AddDate(0, 0, 0)" : stdgo.GoString), _tu.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        _no(("tu.Local()" : stdgo.GoString), _tu.local()?.__copy__());
        _no(("tu.UTC()" : stdgo.GoString), _tu.utc()?.__copy__());
        _no(("tu.Round(2)" : stdgo.GoString), _tu.round((2i64 : stdgo._internal.time.Time.Duration))?.__copy__());
        _no(("tu.Truncate(2)" : stdgo.GoString), _tu.truncate((2i64 : stdgo._internal.time.Time.Duration))?.__copy__());
        _yes(("tm.Add(1)" : stdgo.GoString), _tm.add((1i64 : stdgo._internal.time.Time.Duration))?.__copy__());
        _no(("tm.AddDate(1, 1, 1)" : stdgo.GoString), _tm.addDate((1 : stdgo.GoInt), (1 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__());
        _no(("tm.AddDate(0, 0, 0)" : stdgo.GoString), _tm.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        _no(("tm.In(UTC)" : stdgo.GoString), _tm.in_(utc)?.__copy__());
        _no(("tm.Local()" : stdgo.GoString), _tm.local()?.__copy__());
        _no(("tm.UTC()" : stdgo.GoString), _tm.utc()?.__copy__());
        _no(("tm.Round(2)" : stdgo.GoString), _tm.round((2i64 : stdgo._internal.time.Time.Duration))?.__copy__());
        _no(("tm.Truncate(2)" : stdgo.GoString), _tm.truncate((2i64 : stdgo._internal.time.Time.Duration))?.__copy__());
    }
function testMonotonicAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tm = unix((1486057371i64 : stdgo.GoInt64), (123456i64 : stdgo.GoInt64))?.__copy__();
        setMono((stdgo.Go.setRef(_tm) : stdgo.Ref<stdgo._internal.time.Time.Time>), (123456789012345i64 : stdgo.GoInt64));
        var _t2 = _tm.add((100000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        if (_t2.nanosecond() != ((100123456 : stdgo.GoInt))) {
            _t.errorf(("t2.Nanosecond() = %d, want 100123456" : stdgo.GoString), stdgo.Go.toInterface(_t2.nanosecond()));
        };
        if (getMono((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((123456889012345i64 : stdgo.GoInt64))) {
            _t.errorf(("t2.mono = %d, want 123456889012345" : stdgo.GoString), stdgo.Go.toInterface(getMono((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
        };
        var _t3 = _tm.add((-9000000000000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        if (_t3.nanosecond() != ((123456 : stdgo.GoInt))) {
            _t.errorf(("t3.Nanosecond() = %d, want 123456" : stdgo.GoString), stdgo.Go.toInterface(_t3.nanosecond()));
        };
        if (getMono((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.errorf(("t3.mono = %d, want 0 (wall time out of range for monotonic reading)" : stdgo.GoString), stdgo.Go.toInterface(getMono((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
        };
        var _t4 = _tm.add((9000000000000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        if (_t4.nanosecond() != ((123456 : stdgo.GoInt))) {
            _t.errorf(("t4.Nanosecond() = %d, want 123456" : stdgo.GoString), stdgo.Go.toInterface(_t4.nanosecond()));
        };
        if (getMono((stdgo.Go.setRef(_t4) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.errorf(("t4.mono = %d, want 0 (wall time out of range for monotonic reading)" : stdgo.GoString), stdgo.Go.toInterface(getMono((stdgo.Go.setRef(_t4) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
        };
        var _tn = now()?.__copy__();
        var _tn1 = _tn.add((3600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        sleep((100000000i64 : stdgo._internal.time.Time.Duration));
        var _d = until(_tn1?.__copy__());
        if ((_d < (3540000000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
            _t.errorf(("Until(Now().Add(1*Hour)) = %v, wanted at least 59m" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        var _now = now()?.__copy__();
        if (_now.after(_tn1?.__copy__())) {
            _t.errorf(("Now().After(Now().Add(1*Hour)) = true, want false" : stdgo.GoString));
        };
        if (!_tn1.after(_now?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).After(now) = false, want true" : stdgo.GoString));
        };
        if (_tn1.before(_now?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).Before(Now()) = true, want false" : stdgo.GoString));
        };
        if (!_now.before(_tn1?.__copy__())) {
            _t.errorf(("Now().Before(Now().Add(1*Hour)) = false, want true" : stdgo.GoString));
        };
        {
            var __0 = _now.compare(_tn1?.__copy__()), __1 = (-1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Compare(Now().Add(1*Hour)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = _tn1.compare(_now?.__copy__()), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Add(1*Hour).Compare(Now()) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testMonotonicSub(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = unix((1483228799i64 : stdgo.GoInt64), (995000000i64 : stdgo.GoInt64))?.__copy__();
        setMono((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.time.Time.Time>), (123456789012345i64 : stdgo.GoInt64));
        var _t2 = unix((1483228799i64 : stdgo.GoInt64), (5000000i64 : stdgo.GoInt64))?.__copy__();
        setMono((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.time.Time.Time>), (123456799012345i64 : stdgo.GoInt64));
        var _t3 = unix((1483228799i64 : stdgo.GoInt64), (995000000i64 : stdgo.GoInt64))?.__copy__();
        setMono((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.time.Time.Time>), (123457789012345i64 : stdgo.GoInt64));
        var _t1w = _t1.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        if (getMono((stdgo.Go.setRef(_t1w) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("AddDate didn\'t strip monotonic clock reading" : stdgo.GoString));
        };
        var _t2w = _t2.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        if (getMono((stdgo.Go.setRef(_t2w) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("AddDate didn\'t strip monotonic clock reading" : stdgo.GoString));
        };
        var _t3w = _t3.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        if (getMono((stdgo.Go.setRef(_t3w) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("AddDate didn\'t strip monotonic clock reading" : stdgo.GoString));
        };
        var _sub = function(_txs:stdgo.GoString, _tys:stdgo.GoString, _tx:Time, _txw:Time, _ty:Time, _tyw:Time, _d:Duration, _dw:Duration):Void {
            var _check = function(_expr:stdgo.GoString, _d:Duration, _want:Duration):Void {
                if (_d != (_want)) {
                    _t.errorf(("%s = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_expr), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
            _check((((_txs + (".Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _tx.sub(_ty?.__copy__()), _d);
            _check((((_txs + ("w.Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _txw.sub(_ty?.__copy__()), _dw);
            _check((((_txs + (".Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _tx.sub(_tyw?.__copy__()), _dw);
            _check((((_txs + ("w.Sub(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _txw.sub(_tyw?.__copy__()), _dw);
        };
        _sub(("t1" : stdgo.GoString), ("t1" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (0i64 : stdgo._internal.time.Time.Duration), (0i64 : stdgo._internal.time.Time.Duration));
        _sub(("t1" : stdgo.GoString), ("t2" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (-10000000i64 : stdgo._internal.time.Time.Duration), (990000000i64 : stdgo._internal.time.Time.Duration));
        _sub(("t1" : stdgo.GoString), ("t3" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-1000000000i64 : stdgo._internal.time.Time.Duration), (0i64 : stdgo._internal.time.Time.Duration));
        _sub(("t2" : stdgo.GoString), ("t1" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (10000000i64 : stdgo._internal.time.Time.Duration), (-990000000i64 : stdgo._internal.time.Time.Duration));
        _sub(("t2" : stdgo.GoString), ("t2" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (0i64 : stdgo._internal.time.Time.Duration), (0i64 : stdgo._internal.time.Time.Duration));
        _sub(("t2" : stdgo.GoString), ("t3" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-990000000i64 : stdgo._internal.time.Time.Duration), (-990000000i64 : stdgo._internal.time.Time.Duration));
        _sub(("t3" : stdgo.GoString), ("t1" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (1000000000i64 : stdgo._internal.time.Time.Duration), (0i64 : stdgo._internal.time.Time.Duration));
        _sub(("t3" : stdgo.GoString), ("t2" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (990000000i64 : stdgo._internal.time.Time.Duration), (990000000i64 : stdgo._internal.time.Time.Duration));
        _sub(("t3" : stdgo.GoString), ("t3" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (0i64 : stdgo._internal.time.Time.Duration), (0i64 : stdgo._internal.time.Time.Duration));
        var _cmp = function(_txs:stdgo.GoString, _tys:stdgo.GoString, _tx:Time, _txw:Time, _ty:Time, _tyw:Time, _c:stdgo.GoInt, _cw:stdgo.GoInt):Void {
            var _check = function(_expr:stdgo.GoString, _b:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void {
                if (_b != (_want)) {
                    _t.errorf(("%s = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_expr), _b, _want);
                };
            };
            _check((((_txs + (".After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.after(_ty?.__copy__())), stdgo.Go.toInterface((_c > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.after(_ty?.__copy__())), stdgo.Go.toInterface((_cw > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.after(_tyw?.__copy__())), stdgo.Go.toInterface((_cw > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.After(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.after(_tyw?.__copy__())), stdgo.Go.toInterface((_cw > (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.before(_ty?.__copy__())), stdgo.Go.toInterface((_c < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.before(_ty?.__copy__())), stdgo.Go.toInterface((_cw < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.before(_tyw?.__copy__())), stdgo.Go.toInterface((_cw < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + ("w.Before(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.before(_tyw?.__copy__())), stdgo.Go.toInterface((_cw < (0 : stdgo.GoInt) : Bool)));
            _check((((_txs + (".Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.equal(_ty?.__copy__())), stdgo.Go.toInterface(_c == ((0 : stdgo.GoInt))));
            _check((((_txs + ("w.Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.equal(_ty?.__copy__())), stdgo.Go.toInterface(_cw == ((0 : stdgo.GoInt))));
            _check((((_txs + (".Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.equal(_tyw?.__copy__())), stdgo.Go.toInterface(_cw == ((0 : stdgo.GoInt))));
            _check((((_txs + ("w.Equal(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.equal(_tyw?.__copy__())), stdgo.Go.toInterface(_cw == ((0 : stdgo.GoInt))));
            _check((((_txs + (".Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.compare(_ty?.__copy__())), stdgo.Go.toInterface(_c));
            _check((((_txs + ("w.Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.compare(_ty?.__copy__())), stdgo.Go.toInterface(_cw));
            _check((((_txs + (".Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tx.compare(_tyw?.__copy__())), stdgo.Go.toInterface(_cw));
            _check((((_txs + ("w.Compare(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tys?.__copy__() : stdgo.GoString) + ("w)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_txw.compare(_tyw?.__copy__())), stdgo.Go.toInterface(_cw));
        };
        _cmp(("t1" : stdgo.GoString), ("t1" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t1" : stdgo.GoString), ("t2" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (-1 : stdgo.GoInt), (1 : stdgo.GoInt));
        _cmp(("t1" : stdgo.GoString), ("t3" : stdgo.GoString), _t1?.__copy__(), _t1w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-1 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t2" : stdgo.GoString), ("t1" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (1 : stdgo.GoInt), (-1 : stdgo.GoInt));
        _cmp(("t2" : stdgo.GoString), ("t2" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t2" : stdgo.GoString), ("t3" : stdgo.GoString), _t2?.__copy__(), _t2w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt));
        _cmp(("t3" : stdgo.GoString), ("t1" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t1?.__copy__(), _t1w?.__copy__(), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        _cmp(("t3" : stdgo.GoString), ("t2" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t2?.__copy__(), _t2w?.__copy__(), (1 : stdgo.GoInt), (1 : stdgo.GoInt));
        _cmp(("t3" : stdgo.GoString), ("t3" : stdgo.GoString), _t3?.__copy__(), _t3w?.__copy__(), _t3?.__copy__(), _t3w?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
function testMonotonicOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = now().add((-30000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        var _d = until(_t1?.__copy__());
        if (((_d < (-35000000000i64 : stdgo._internal.time.Time.Duration) : Bool) || ((-30000000000i64 : stdgo._internal.time.Time.Duration) < _d : Bool) : Bool)) {
            _t.errorf(("Until(Now().Add(-30s)) = %v, want roughly -30s (-35s to -30s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        _t1 = now().add((30000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        _d = until(_t1?.__copy__());
        if (((_d < (25000000000i64 : stdgo._internal.time.Time.Duration) : Bool) || ((30000000000i64 : stdgo._internal.time.Time.Duration) < _d : Bool) : Bool)) {
            _t.errorf(("Until(Now().Add(-30s)) = %v, want roughly 30s (25s to 30s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        var _t0 = now()?.__copy__();
        _t1 = _t0.add(((9223372036854775807i64 : stdgo._internal.time.Time.Duration) : Duration))?.__copy__();
        if (getMono((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.time.Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.errorf(("Now().Add(maxDuration) has monotonic clock reading (%v => %v %d %d)" : stdgo.GoString), stdgo.Go.toInterface((_t0.string() : stdgo.GoString)), stdgo.Go.toInterface((_t1.string() : stdgo.GoString)), stdgo.Go.toInterface(_t0.unix()), stdgo.Go.toInterface(_t1.unix()));
        };
        var _t2 = _t1.add((-9223372036854775807i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        _d = since(_t2?.__copy__());
        if (((_d < (-10000000000i64 : stdgo._internal.time.Time.Duration) : Bool) || ((10000000000i64 : stdgo._internal.time.Time.Duration) < _d : Bool) : Bool)) {
            _t.errorf(("Since(Now().Add(max).Add(-max)) = %v, want [-10s, 10s]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        _t0 = now()?.__copy__();
        _t1 = _t0.add((3600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        sleep((100000000i64 : stdgo._internal.time.Time.Duration));
        _t2 = now().add((-5000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
        if (!_t1.after(_t2?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).After(Now().Add(-5*Second)) = false, want true\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        if (_t2.after(_t1?.__copy__())) {
            _t.errorf(("Now().Add(-5*Second).After(Now().Add(1*Hour)) = true, want false\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        if (_t1.before(_t2?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).Before(Now().Add(-5*Second)) = true, want false\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        if (!_t2.before(_t1?.__copy__())) {
            _t.errorf(("Now().Add(-5*Second).Before(Now().Add(1*Hour)) = false, want true\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        {
            var __0 = _t1.compare(_t2?.__copy__()), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Add(1*Hour).Compare(Now().Add(-5*Second)) = %d, want %d\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
            };
        };
        {
            var __0 = _t2.compare(_t1?.__copy__()), __1 = (-1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Add(-5*Second).Before(Now().Add(1*Hour)) = %d, want %d\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
            };
        };
    }
function testMonotonicString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = now()?.__copy__();
        _t.logf(("Now() = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
        for (__10 => _tt in _monotonicStringTests) {
            var _t1 = now()?.__copy__();
            setMono((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.time.Time.Time>), _tt._mono);
            var _s = (_t1.string() : stdgo.GoString)?.__copy__();
            var _got = (_s.__slice__((stdgo._internal.strings.Strings.lastIndex(_s?.__copy__(), (" " : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (_got != (_tt._want)) {
                _t.errorf(("with mono=%d: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._mono), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testSleep(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        stdgo.Go.routine(() -> {
            var a = function():Void {
                sleep((50000000i64 : stdgo._internal.time.Time.Duration));
                interrupt();
            };
            a();
        });
        var _start = now()?.__copy__();
        sleep((100000000i64 : stdgo._internal.time.Time.Duration));
        var _delayadj = (100000000i64 : stdgo._internal.time.Time.Duration);
        if (false) {
            _delayadj = (_delayadj - ((17000000i64 : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration);
        };
        var _duration = now().sub(_start?.__copy__());
        if ((_duration < _delayadj : Bool)) {
            _t.fatalf(("Sleep(%s) slept for only %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((100000000i64 : stdgo._internal.time.Time.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_duration)));
        };
    }
function testAfterFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _i = (10 : stdgo.GoInt);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _f:() -> Void = null;
        _f = function():Void {
            _i--;
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                afterFunc((0i64 : stdgo._internal.time.Time.Duration), _f);
                sleep((1000000000i64 : stdgo._internal.time.Time.Duration));
            } else {
                _c.__send__(true);
            };
        };
        afterFunc((0i64 : stdgo._internal.time.Time.Duration), _f);
        _c.__get__();
    }
function testAfterStress(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _stop:stdgo._internal.sync.atomic_.Atomic_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic_.Bool_);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                while (!_stop.load()) {
                    stdgo._internal.runtime.Runtime.gc();
                    sleep((1i64 : stdgo._internal.time.Time.Duration));
                };
            };
            a();
        });
        var _ticker = newTicker((1i64 : stdgo._internal.time.Time.Duration));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _ticker.c.__get__();
            });
        };
        _ticker.stop();
        _stop.store(true);
    }
function _benchmark(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _bench:(_n:stdgo.GoInt) -> Void):Void {
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var _garbageAll = (new stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>>((stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>>);
        for (_i => _ in _garbageAll) {
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> {
                var a = function(_i:stdgo.GoInt):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        var _garbage = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>((32768 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>);
                        for (_j => _ in _garbage) {
                            _garbage[(_j : stdgo.GoInt)] = afterFunc((3600000000000i64 : stdgo._internal.time.Time.Duration), null);
                        };
                        _garbageAll[(_i : stdgo.GoInt)] = _garbage;
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a(_i);
            });
        };
        _wg.wait_();
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _bench((1000 : stdgo.GoInt));
            };
        });
        _b.stopTimer();
        for (__34 => _garbage in _garbageAll) {
            for (__35 => _t in _garbage) {
                _t.stop();
            };
        };
    }
function benchmarkAfterFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            var _f:() -> Void = null;
            _f = function():Void {
                _n--;
                if ((_n >= (0 : stdgo.GoInt) : Bool)) {
                    afterFunc((0i64 : stdgo._internal.time.Time.Duration), _f);
                } else {
                    _c.__send__(true);
                };
            };
            afterFunc((0i64 : stdgo._internal.time.Time.Duration), _f);
            _c.__get__();
        });
    }
function benchmarkAfter(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    after((1i64 : stdgo._internal.time.Time.Duration)).__get__();
                });
            };
        });
    }
function benchmarkStop(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    newTimer((1000000000i64 : stdgo._internal.time.Time.Duration)).stop();
                });
            };
        });
    }
function benchmarkSimultaneousAfterFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            _wg.add(_n);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    afterFunc((0i64 : stdgo._internal.time.Time.Duration), _wg.done);
                });
            };
            _wg.wait_();
        });
    }
function benchmarkStartStop(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _timers = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _timers[(_i : stdgo.GoInt)] = afterFunc((3600000000000i64 : stdgo._internal.time.Time.Duration), null);
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _timers[(_i : stdgo.GoInt)].stop();
                });
            };
        });
    }
function benchmarkReset(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _t = newTimer((3600000000000i64 : stdgo._internal.time.Time.Duration));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _t.reset((3600000000000i64 : stdgo._internal.time.Time.Duration));
                });
            };
            _t.stop();
        });
    }
function benchmarkSleep(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            _wg.add(_n);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            sleep((1i64 : stdgo._internal.time.Time.Duration));
                            _wg.done();
                        };
                        a();
                    });
                });
            };
            _wg.wait_();
        });
    }
function testAfter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _start = now()?.__copy__();
        var _end = after((100000000i64 : stdgo._internal.time.Time.Duration)).__get__()?.__copy__();
        var _delayadj = (100000000i64 : stdgo._internal.time.Time.Duration);
        if (false) {
            _delayadj = (_delayadj - ((17000000i64 : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration);
        };
        {
            var _duration = now().sub(_start?.__copy__());
            if ((_duration < _delayadj : Bool)) {
                _t.fatalf(("After(%s) slept for only %d ns" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((100000000i64 : stdgo._internal.time.Time.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_duration)));
            };
        };
        {
            var _min = _start.add(_delayadj)?.__copy__();
            if (_end.before(_min?.__copy__())) {
                _t.fatalf(("After(%s) expect >= %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((100000000i64 : stdgo._internal.time.Time.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_min)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
            };
        };
    }
function testAfterTick(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var delta = (100000000i64 : stdgo._internal.time.Time.Duration);
        if (stdgo._internal.testing.Testing.short()) {
            delta = (10000000i64 : stdgo._internal.time.Time.Duration);
        };
        var _t0 = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                after(delta).__get__();
            });
        };
        var _t1 = now()?.__copy__();
        var _d = _t1.sub(_t0?.__copy__());
        var _target = (delta * (10i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
        if ((_d < ((_target * (9i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) / (10i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : Bool)) {
            _t.fatalf(("%d ticks of %s too fast: took %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(delta)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_target)));
        };
        if ((!stdgo._internal.testing.Testing.short() && (_d > ((_target * (30i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) / (10i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : Bool) : Bool)) {
            _t.fatalf(("%d ticks of %s too slow: took %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(delta)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_target)));
        };
    }
function testAfterStop(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _errs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _logErrs = function():Void {
            for (__2 => _e in _errs) {
                _t.log(stdgo.Go.toInterface(_e));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                afterFunc((100000000i64 : stdgo._internal.time.Time.Duration), function():Void {});
                var _t0 = newTimer((50000000i64 : stdgo._internal.time.Time.Duration));
                var _c1 = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                var _t1 = afterFunc((150000000i64 : stdgo._internal.time.Time.Duration), function():Void {
                    _c1.__send__(true);
                });
                var _c2 = after((200000000i64 : stdgo._internal.time.Time.Duration));
                if (!_t0.stop()) {
                    _errs = (_errs.__append__(("failed to stop event 0" : stdgo.GoString)));
                    continue;
                };
                if (!_t1.stop()) {
                    _errs = (_errs.__append__(("failed to stop event 1" : stdgo.GoString)));
                    continue;
                };
                _c2.__get__();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_t0.c != null && _t0.c.__isGet__()) {
                            __select__ = false;
                            {
                                _t0.c.__get__();
                                {
                                    _errs = (_errs.__append__(("event 0 was not stopped" : stdgo.GoString)));
                                    continue;
                                };
                            };
                        } else if (_c1 != null && _c1.__isGet__()) {
                            __select__ = false;
                            {
                                _c1.__get__();
                                {
                                    _errs = (_errs.__append__(("event 1 was not stopped" : stdgo.GoString)));
                                    continue;
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
                if (_t1.stop()) {
                    _errs = (_errs.__append__(("Stop returned true twice" : stdgo.GoString)));
                    continue;
                };
                if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                    _t.logf(("saw %d errors, ignoring to avoid flakiness" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
                    _logErrs();
                };
                return;
            });
        };
        _t.errorf(("saw %d errors" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
        _logErrs();
    }
function testAfterQueuing(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _err = stdgo._internal.errors.Errors.new_(("!=nil" : stdgo.GoString));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (5 : stdgo.GoInt) : Bool) && (_err != null) : Bool), _i++, {
                var _delta = ((((20 : stdgo.GoInt) + (_i * (50 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : Duration) * (1000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
                {
                    _err = _testAfterQueuing(_delta);
                    if (_err != null) {
                        _t.logf(("attempt %v failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function _await(_slot:stdgo.GoInt, _result:stdgo.Chan<T_afterResult>, _ac:stdgo.Chan<Time>):Void {
        _result.__send__((new stdgo._internal.time_test.Time_test.T_afterResult(_slot, _ac.__get__()?.__copy__()) : stdgo._internal.time_test.Time_test.T_afterResult));
    }
function _testAfterQueuing(_delta:Duration):stdgo.Error {
        var _result = (new stdgo.Chan<stdgo._internal.time_test.Time_test.T_afterResult>((_slots.length : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.time_test.Time_test.T_afterResult)) : stdgo.Chan<stdgo._internal.time_test.Time_test.T_afterResult>);
        var _t0 = now()?.__copy__();
        for (__2 => _slot in _slots) {
            stdgo.Go.routine(() -> _await(_slot, _result, after(((_slot : Duration) * _delta : stdgo._internal.time.Time.Duration))));
        };
        var _order:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _times:stdgo.Slice<Time> = (null : stdgo.Slice<stdgo._internal.time.Time.Time>);
        for (_ => _ in _slots) {
            var _r = _result.__get__()?.__copy__();
            _order = (_order.__append__(_r._slot));
            _times = (_times.__append__(_r._t?.__copy__()));
        };
        for (_i => _ in _order) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_order[(_i : stdgo.GoInt)] < _order[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt.errorf(("After calls returned out of order: %v" : stdgo.GoString), stdgo.Go.toInterface(_order));
            };
        };
        for (_i => _t in _times) {
            var _dt = _t.sub(_t0?.__copy__());
            var _target = ((_order[(_i : stdgo.GoInt)] : Duration) * _delta : stdgo._internal.time.Time.Duration);
            if (((_dt < (_target - (_delta / (2i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : Bool) || (_dt > (_target + (_delta * (10i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt.errorf(("After(%s) arrived at %s, expected [%s,%s]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_target)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)), stdgo.Go.toInterface(stdgo.Go.asInterface((_target - (_delta / (2i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface((_target + (_delta * (10i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration))));
            };
        };
        return (null : stdgo.Error);
    }
function testTimerStopStress(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            return;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var _timer = afterFunc((2000000000i64 : stdgo._internal.time.Time.Duration), function():Void {
                            _t.errorf(("timer %d was not stopped" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        });
                        sleep((1000000000i64 : stdgo._internal.time.Time.Duration));
                        _timer.stop();
                    };
                    a(_i);
                });
            });
        };
        sleep((3000000000i64 : stdgo._internal.time.Time.Duration));
    }
function testSleepZeroDeadlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                            stdgo._internal.runtime.Runtime.gc();
                        });
                    };
                    _c.__send__(true);
                };
                a();
            });
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                    sleep((0i64 : stdgo._internal.time.Time.Duration));
                    var _tmp = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                    _tmp.__send__(true);
                    _tmp.__get__();
                });
            };
            _c.__get__();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _testReset(_d:Duration):stdgo.Error {
        var _t0 = newTimer(((2i64 : stdgo._internal.time.Time.Duration) * _d : stdgo._internal.time.Time.Duration));
        sleep(_d);
        if (!_t0.reset(((3i64 : stdgo._internal.time.Time.Duration) * _d : stdgo._internal.time.Time.Duration))) {
            return stdgo._internal.errors.Errors.new_(("resetting unfired timer returned false" : stdgo.GoString));
        };
        sleep(((2i64 : stdgo._internal.time.Time.Duration) * _d : stdgo._internal.time.Time.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (_t0.c != null && _t0.c.__isGet__()) {
                    __select__ = false;
                    {
                        _t0.c.__get__();
                        {
                            return stdgo._internal.errors.Errors.new_(("timer fired early" : stdgo.GoString));
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        sleep(((2i64 : stdgo._internal.time.Time.Duration) * _d : stdgo._internal.time.Time.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (_t0.c != null && _t0.c.__isGet__()) {
                    __select__ = false;
                    {
                        _t0.c.__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        return stdgo._internal.errors.Errors.new_(("reset timer did not fire" : stdgo.GoString));
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        if (_t0.reset((50000000i64 : stdgo._internal.time.Time.Duration))) {
            return stdgo._internal.errors.Errors.new_(("resetting expired timer returned true" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
function testReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _d = (1000000i64 : stdgo._internal.time.Time.Duration);
        {};
        while (true) {
            var _err = _testReset(_d);
            if (_err == null) {
                break;
            };
            _d = (_d * ((2i64 : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration);
            if ((_d > (10000000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                _t.error(stdgo.Go.toInterface(_err));
            };
            _t.logf(("%v; trying duration %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
    }
function testOverflowSleep(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        stdgo.Go.routine(() -> {
            var a = function():Void {
                sleep((9223372036854775807i64 : stdgo._internal.time.Time.Duration));
                throw stdgo.Go.toInterface(("big sleep returned" : stdgo.GoString));
            };
            a();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (after((9223372036854775807i64 : stdgo._internal.time.Time.Duration)) != null && after((9223372036854775807i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        after((9223372036854775807i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            _t.fatalf(("big timeout fired" : stdgo.GoString));
                        };
                    };
                } else if (after((25000000i64 : stdgo._internal.time.Time.Duration)) != null && after((25000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        after((25000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {};
        sleep((-9223372036854775808i64 : stdgo._internal.time.Time.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (after((-9223372036854775808i64 : stdgo._internal.time.Time.Duration)) != null && after((-9223372036854775808i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        after((-9223372036854775808i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {};
                    };
                } else if (after((1000000000i64 : stdgo._internal.time.Time.Duration)) != null && after((1000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        after((1000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            _t.fatalf(("negative timeout didn\'t fire" : stdgo.GoString));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
function testIssue5745(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ticker = newTicker((3600000000000i64 : stdgo._internal.time.Time.Duration));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _ticker.stop();
                    {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r == null) {
                            _t.error(stdgo.Go.toInterface(("Expected panic, but none happened." : stdgo.GoString)));
                        };
                    };
                };
                a();
            });
            var _timer:stdgo.Ref<Timer> = (null : stdgo.Ref<stdgo._internal.time.Time.Timer>);
            _timer.stop();
            _t.error(stdgo.Go.toInterface(("Should be unreachable." : stdgo.GoString)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testOverflowPeriodRuntimeTimer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        checkRuntimeTimerPeriodOverflow();
    }
function _checkZeroPanicString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _e = ({
            final r = stdgo.Go.recover_exception;
            stdgo.Go.recover_exception = null;
            r;
        });
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_e : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _s = __tmp__._0, __2 = __tmp__._1;
        {
            var _want = ("called on uninitialized Timer" : stdgo.GoString);
            if (!stdgo._internal.strings.Strings.contains(_s?.__copy__(), _want?.__copy__())) {
                _t.errorf(("panic = %v; want substring %q" : stdgo.GoString), _e, stdgo.Go.toInterface(_want));
            };
        };
    }
function testZeroTimerResetPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _checkZeroPanicString(_a0));
            };
            var _tr:Timer = ({} : stdgo._internal.time.Time.Timer);
            _tr.reset((1i64 : stdgo._internal.time.Time.Duration));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testZeroTimerStopPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _checkZeroPanicString(_a0));
            };
            var _tr:Timer = ({} : stdgo._internal.time.Time.Timer);
            _tr.stop();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testZeroTimer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("-short" : stdgo.GoString)));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000000 : stdgo.GoInt) : Bool), _i++, {
                var _s = now()?.__copy__();
                var _ti = newTimer((0i64 : stdgo._internal.time.Time.Duration));
                _ti.c.__get__();
                {
                    var _diff = since(_s?.__copy__());
                    if ((_diff > (2000000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                        _t.errorf(("Expected time to get value from Timer channel in less than 2 sec, took %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_diff)));
                    };
                };
            });
        };
    }
function testTimerModifiedEarlier(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                stdgo._internal.internal.testenv.Testenv.skipFlaky(stdgo.Go.asInterface(_t), (50470 : stdgo.GoInt));
            };
            var _past = until(unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__());
            var _count = (1000 : stdgo.GoInt);
            var _fail = (0 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    var _timer = newTimer((3600000000000i64 : stdgo._internal.time.Time.Duration));
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (10 : stdgo.GoInt) : Bool), _j++, {
                            if (!_timer.stop()) {
                                _timer.c.__get__();
                            };
                            _timer.reset(_past);
                        });
                    };
                    var _deadline = newTimer((10000000000i64 : stdgo._internal.time.Time.Duration));
                    __deferstack__.unshift(() -> _deadline.stop());
                    var _now = now()?.__copy__();
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_timer.c != null && _timer.c.__isGet__()) {
                                __select__ = false;
                                {
                                    _timer.c.__get__();
                                    {
                                        {
                                            var _since = since(_now?.__copy__());
                                            if ((_since > (8000000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                                                _t.errorf(("timer took too long (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_since)));
                                                _fail++;
                                            };
                                        };
                                    };
                                };
                            } else if (_deadline.c != null && _deadline.c.__isGet__()) {
                                __select__ = false;
                                {
                                    _deadline.c.__get__();
                                    {
                                        _t.error(stdgo.Go.toInterface(("deadline expired" : stdgo.GoString)));
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                });
            };
            if ((_fail > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("%d failures" : stdgo.GoString), stdgo.Go.toInterface(_fail));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testAdjustTimers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand> = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource(now().unixNano()));
        var _timers = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time.Timer>>);
        var _states = (new stdgo.Slice<stdgo.GoInt>((_timers.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _indices = _rnd.perm((_timers.length));
        while ((_indices.length) != ((0 : stdgo.GoInt))) {
            var _ii:stdgo.GoInt = _rnd.intn((_indices.length));
            var _i:stdgo.GoInt = _indices[(_ii : stdgo.GoInt)];
            var _timer:stdgo.Ref<stdgo._internal.time.Time.Timer> = _timers[(_i : stdgo.GoInt)];
            var _state:stdgo.GoInt = _states[(_i : stdgo.GoInt)];
            _states[(_i : stdgo.GoInt)]++;
            {
                final __value__ = _state;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    _timers[(_i : stdgo.GoInt)] = newTimer((0i64 : stdgo._internal.time.Time.Duration));
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    _timer.c.__get__();
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    if (_timer.reset((60000000000i64 : stdgo._internal.time.Time.Duration))) {
                        throw stdgo.Go.toInterface(("shouldn\'t be active (1)" : stdgo.GoString));
                    };
                } else if (__value__ == ((4 : stdgo.GoInt))) {
                    if (_timer.reset((180000000000i64 : stdgo._internal.time.Time.Duration))) {
                        throw stdgo.Go.toInterface(("shouldn\'t be active (3)" : stdgo.GoString));
                    };
                } else if (__value__ == ((6 : stdgo.GoInt))) {
                    if (_timer.reset((120000000000i64 : stdgo._internal.time.Time.Duration))) {
                        throw stdgo.Go.toInterface(("shouldn\'t be active (2)" : stdgo.GoString));
                    };
                } else if (__value__ == ((3 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                    if (!_timer.stop()) {
                        _t.logf(("timer %d state %d Stop returned false" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_state));
                        _timer.c.__get__();
                    };
                } else if (__value__ == ((8 : stdgo.GoInt))) {
                    if (_timer.reset((0i64 : stdgo._internal.time.Time.Duration))) {
                        _t.fatal(stdgo.Go.toInterface(("timer.Reset returned true" : stdgo.GoString)));
                    };
                } else if (__value__ == ((9 : stdgo.GoInt))) {
                    var _now = now()?.__copy__();
                    _timer.c.__get__();
                    var _dur = since(_now?.__copy__());
                    if ((_dur > (750000000i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                        _t.errorf(("timer %d took %v to complete" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_dur)));
                    };
                } else if (__value__ == ((10 : stdgo.GoInt))) {
                    _indices[(_ii : stdgo.GoInt)] = _indices[((_indices.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    _indices = (_indices.__slice__(0, ((_indices.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                };
            };
        };
    }
function benchmarkParallelTimerLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _gmp = stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt));
        if (((_gmp < (2 : stdgo.GoInt) : Bool) || (stdgo._internal.runtime.Runtime.numCPU() < _gmp : Bool) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS" : stdgo.GoString)));
        };
        var _timerCount = (_gmp - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _stats = (new stdgo.Slice<T__struct_8>((_timerCount : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_timerCount : stdgo.GoInt).toBasic() > 0 ? (_timerCount : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _sum : (0 : stdgo.GoFloat64), _max : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _count : (0 : stdgo.GoInt64) } : T__struct_8)]) : stdgo.Slice<T__struct_8>);
        _warmupScheduler(_gmp);
        _doWork((30000000i64 : stdgo._internal.time.Time.Duration));
        _b.resetTimer();
        {};
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var _count:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _wg.add(_timerCount);
                stdgo._internal.sync.atomic_.Atomic_.storeInt32(stdgo.Go.pointer(_count), (0 : stdgo.GoInt32));
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _timerCount : Bool), _j++, {
                        var _j = _j;
                        var _expectedWakeup = now().add((1000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
                        afterFunc((1000000i64 : stdgo._internal.time.Time.Duration), function():Void {
                            var _late = since(_expectedWakeup?.__copy__());
                            if ((_late < (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                                _late = (0i64 : stdgo._internal.time.Time.Duration);
                            };
                            _stats[(_j : stdgo.GoInt)]._count++;
                            _stats[(_j : stdgo.GoInt)]._sum = (_stats[(_j : stdgo.GoInt)]._sum + ((_late.nanoseconds() : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            if ((_late > _stats[(_j : stdgo.GoInt)]._max : Bool)) {
                                _stats[(_j : stdgo.GoInt)]._max = _late;
                            };
                            stdgo._internal.sync.atomic_.Atomic_.addInt32(stdgo.Go.pointer(_count), (1 : stdgo.GoInt32));
                            while ((stdgo._internal.sync.atomic_.Atomic_.loadInt32(stdgo.Go.pointer(_count)) < (_timerCount : stdgo.GoInt32) : Bool)) {};
                            _wg.done();
                        });
                    });
                };
                while ((stdgo._internal.sync.atomic_.Atomic_.loadInt32(stdgo.Go.pointer(_count)) < (_timerCount : stdgo.GoInt32) : Bool)) {};
                _wg.wait_();
                _doWork((1000000i64 : stdgo._internal.time.Time.Duration));
            });
        };
        var _total:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _samples:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _max = ((0i64 : stdgo._internal.time.Time.Duration) : Duration);
        for (__38 => _s in _stats) {
            if ((_s._max > _max : Bool)) {
                _max = _s._max;
            };
            _total = (_total + (_s._sum) : stdgo.GoFloat64);
            _samples = (_samples + ((_s._count : stdgo.GoFloat64)) : stdgo.GoFloat64);
        };
        _b.reportMetric((0 : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
        _b.reportMetric((_total / _samples : stdgo.GoFloat64), ("avg-late-ns" : stdgo.GoString));
        _b.reportMetric((_max.nanoseconds() : stdgo.GoFloat64), ("max-late-ns" : stdgo.GoString));
    }
function benchmarkStaggeredTickerLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _gmp = stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt));
        if (((_gmp < (2 : stdgo.GoInt) : Bool) || (stdgo._internal.runtime.Runtime.numCPU() < _gmp : Bool) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS" : stdgo.GoString)));
        };
        {};
        for (__10 => _dur in (new stdgo.Slice<stdgo._internal.time.Time.Duration>(2, 2, ...[(300000i64 : stdgo._internal.time.Time.Duration), (2000000i64 : stdgo._internal.time.Time.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time.Duration>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("work-dur=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dur)))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _tickersPerP = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_tickersPerP < ((((3000000i64 : stdgo._internal.time.Time.Duration) / _dur : stdgo._internal.time.Time.Duration) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _tickersPerP++, {
                        var _tickerCount = (_gmp * _tickersPerP : stdgo.GoInt);
                        _b.run(stdgo._internal.fmt.Fmt.sprintf(("tickers-per-P=%d" : stdgo.GoString), stdgo.Go.toInterface(_tickersPerP))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                            var _stats = (new stdgo.Slice<T__struct_8>((_tickerCount : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_tickerCount : stdgo.GoInt).toBasic() > 0 ? (_tickerCount : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({ _sum : (0 : stdgo.GoFloat64), _max : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration), _count : (0 : stdgo.GoInt64) } : T__struct_8)]) : stdgo.Slice<T__struct_8>);
                            _warmupScheduler(_gmp);
                            _b.resetTimer();
                            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
                            _wg.add(_tickerCount);
                            {
                                var _j = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < _tickerCount : Bool), _j++, {
                                    var _j = _j;
                                    _doWork(((3000000i64 : stdgo._internal.time.Time.Duration) / (_gmp : Duration) : stdgo._internal.time.Time.Duration));
                                    var _expectedWakeup = now().add((3000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
                                    var _ticker = newTicker((3000000i64 : stdgo._internal.time.Time.Duration));
                                    stdgo.Go.routine(() -> {
                                        var a = function(_c:stdgo.GoInt, _ticker:stdgo.Ref<Ticker>, _firstWake:Time):Void {
                                            var __deferstack__:Array<Void -> Void> = [];
                                            try {
                                                __deferstack__.unshift(() -> _ticker.stop());
                                                stdgo.Go.cfor((_c > (0 : stdgo.GoInt) : Bool), _c--, {
                                                    _ticker.c.__get__();
                                                    var _late = since(_expectedWakeup?.__copy__());
                                                    if ((_late < (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                                                        _late = (0i64 : stdgo._internal.time.Time.Duration);
                                                    };
                                                    _stats[(_j : stdgo.GoInt)]._count++;
                                                    _stats[(_j : stdgo.GoInt)]._sum = (_stats[(_j : stdgo.GoInt)]._sum + ((_late.nanoseconds() : stdgo.GoFloat64)) : stdgo.GoFloat64);
                                                    if ((_late > _stats[(_j : stdgo.GoInt)]._max : Bool)) {
                                                        _stats[(_j : stdgo.GoInt)]._max = _late;
                                                    };
                                                    _expectedWakeup = _expectedWakeup.add((3000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
                                                    _doWork(_dur);
                                                });
                                                _wg.done();
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                    return;
                                                };
                                            } catch(__exception__) {
                                                var exe:Dynamic = __exception__.native;
                                                if ((exe is haxe.ValueException)) exe = exe.value;
                                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                                    exe = stdgo.Go.toInterface(__exception__.message);
                                                };
                                                stdgo.Go.recover_exception = exe;
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                                return;
                                            };
                                        };
                                        a(_b.n, _ticker, _expectedWakeup?.__copy__());
                                    });
                                });
                            };
                            _wg.wait_();
                            var _total:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                            var _samples:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                            var _max = ((0i64 : stdgo._internal.time.Time.Duration) : Duration);
                            for (__55 => _s in _stats) {
                                if ((_s._max > _max : Bool)) {
                                    _max = _s._max;
                                };
                                _total = (_total + (_s._sum) : stdgo.GoFloat64);
                                _samples = (_samples + ((_s._count : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            };
                            _b.reportMetric((0 : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
                            _b.reportMetric((_total / _samples : stdgo.GoFloat64), ("avg-late-ns" : stdgo.GoString));
                            _b.reportMetric((_max.nanoseconds() : stdgo.GoFloat64), ("max-late-ns" : stdgo.GoString));
                        });
                    });
                };
            });
        };
    }
function _warmupScheduler(_targetThreadCount:stdgo.GoInt):Void {
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var _count:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _targetThreadCount : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo._internal.sync.atomic_.Atomic_.addInt32(stdgo.Go.pointer(_count), (1 : stdgo.GoInt32));
                        while ((stdgo._internal.sync.atomic_.Atomic_.loadInt32(stdgo.Go.pointer(_count)) < (_targetThreadCount : stdgo.GoInt32) : Bool)) {};
                        _doWork((1000000i64 : stdgo._internal.time.Time.Duration));
                        _wg.done();
                    };
                    a();
                });
            });
        };
        _wg.wait_();
    }
function _doWork(_dur:Duration):Void {
        var _start = now()?.__copy__();
        while ((since(_start?.__copy__()) < _dur : Bool)) {};
    }
function testTicker(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _baseCount = (10 : stdgo.GoInt);
        var _baseDelta = (20000000i64 : stdgo._internal.time.Time.Duration);
        if (false) {
            _baseCount = (6 : stdgo.GoInt);
            _baseDelta = (100000000i64 : stdgo._internal.time.Time.Duration);
        };
        var _errs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _logErrs = function():Void {
            for (__2 => _e in _errs) {
                _t.log(stdgo.Go.toInterface(_e));
            };
        };
        for (__2 => _test in (new stdgo.Slice<T__struct_9>(2, 2, ...[({ _count : _baseCount, _delta : _baseDelta } : T__struct_9), ({ _count : (8 : stdgo.GoInt), _delta : (1000000000i64 : stdgo._internal.time.Time.Duration) } : T__struct_9)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _delta : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration) } : T__struct_9)])) : stdgo.Slice<T__struct_9>)) {
            var __0 = _test._count, __1 = _test._delta;
var _delta = __1, _count = __0;
            var _ticker = newTicker(_delta);
            var _t0 = now()?.__copy__();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_count / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.reset((_delta * (2i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration));
            {
                var _i = (_count / (2 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.stop();
            var _t1 = now()?.__copy__();
            var _dt = _t1.sub(_t0?.__copy__());
            var _target = (((3i64 : stdgo._internal.time.Time.Duration) * _delta : stdgo._internal.time.Time.Duration) * ((_count / (2 : stdgo.GoInt) : stdgo.GoInt) : Duration) : stdgo._internal.time.Time.Duration);
            var _slop = ((_target * (3i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration) / (10i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
            if (((_dt < (_target - _slop : stdgo._internal.time.Time.Duration) : Bool) || (_dt > (_target + _slop : stdgo._internal.time.Time.Duration) : Bool) : Bool)) {
                _errs = (_errs.__append__(stdgo._internal.fmt.Fmt.sprintf(("%d %s ticks then %d %s ticks took %s, expected [%s,%s]" : stdgo.GoString), stdgo.Go.toInterface((_count / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface((_count / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface((_delta * (2i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)), stdgo.Go.toInterface(stdgo.Go.asInterface((_target - _slop : stdgo._internal.time.Time.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface((_target + _slop : stdgo._internal.time.Time.Duration))))?.__copy__()));
                if ((_dt > (_target + _slop : stdgo._internal.time.Time.Duration) : Bool)) {
                    sleep((500000000i64 : stdgo._internal.time.Time.Duration));
                };
                continue;
            };
            sleep(((2i64 : stdgo._internal.time.Time.Duration) * _delta : stdgo._internal.time.Time.Duration));
            {
                var __select__ = true;
                while (__select__) {
                    if (_ticker.c != null && _ticker.c.__isGet__()) {
                        __select__ = false;
                        {
                            _ticker.c.__get__();
                            {
                                _errs = (_errs.__append__(("Ticker did not shut down" : stdgo.GoString)));
                                continue;
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                _t.logf(("saw %d errors, ignoring to avoid flakiness" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
                _logErrs();
            };
            return;
        };
        _t.errorf(("saw %d errors" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
        _logErrs();
    }
function testTickerStopWithDirectInitialization(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = (new stdgo.Chan<stdgo._internal.time.Time.Time>(0, () -> ({} : stdgo._internal.time.Time.Time)) : stdgo.Chan<stdgo._internal.time.Time.Time>);
        var _tk = (stdgo.Go.setRef(({ c : _c } : stdgo._internal.time.Time.Ticker)) : stdgo.Ref<stdgo._internal.time.Time.Ticker>);
        _tk.stop();
    }
function testTeardown(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var delta = (100000000i64 : stdgo._internal.time.Time.Duration);
        if (stdgo._internal.testing.Testing.short()) {
            delta = (20000000i64 : stdgo._internal.time.Time.Duration);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                var _ticker = newTicker(delta);
                _ticker.c.__get__();
                _ticker.stop();
            });
        };
    }
function testTick(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _got = tick((-1i64 : stdgo._internal.time.Time.Duration));
            if (_got != null) {
                _t.errorf(("Tick(-1) = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
function testNewTickerLtZeroDuration(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.errorf(("NewTicker(-1) should have panicked" : stdgo.GoString));
                        };
                    };
                };
                a();
            });
            newTicker((-1i64 : stdgo._internal.time.Time.Duration));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testTickerResetLtZeroDuration(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.errorf(("Ticker.Reset(0) should have panicked" : stdgo.GoString));
                        };
                    };
                };
                a();
            });
            var _tk = newTicker((1000000000i64 : stdgo._internal.time.Time.Duration));
            _tk.reset((0i64 : stdgo._internal.time.Time.Duration));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function benchmarkTicker(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _ticker = newTicker((1i64 : stdgo._internal.time.Time.Duration));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.stop();
        });
    }
function benchmarkTickerReset(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _ticker = newTicker((1i64 : stdgo._internal.time.Time.Duration));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _ticker.reset((2i64 : stdgo._internal.time.Time.Duration));
                });
            };
            _ticker.stop();
        });
    }
function benchmarkTickerResetNaive(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _ticker = newTicker((1i64 : stdgo._internal.time.Time.Duration));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _ticker.stop();
                    _ticker = newTicker((2i64 : stdgo._internal.time.Time.Duration));
                });
            };
            _ticker.stop();
        });
    }
function testZoneData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _lt = now()?.__copy__();
        {
            var __tmp__ = _lt.zone(), _name:stdgo.GoString = __tmp__._0, _off:stdgo.GoInt = __tmp__._1;
            if (((_off != (-28800 : stdgo.GoInt)) && (_off != (-25200 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Unable to find US Pacific time zone data for testing; time zone is %q offset %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_off));
                _t.error(stdgo.Go.toInterface(("Likely problem: the time zone files have not been installed." : stdgo.GoString)));
            };
        };
    }
function _same(_t:Time, _u:stdgo.Ref<T_parsedTime>):Bool {
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.zone(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((((((((_year != (_u.year) || _month != (_u.month) : Bool) || _day != (_u.day) : Bool) || _hour != (_u.hour) : Bool) || _min != (_u.minute) : Bool) || _sec != (_u.second) : Bool) || _name != (_u.zone) : Bool) || (_offset != _u.zoneOffset) : Bool)) {
            return false;
        };
        return (((((((_t.year() == (_u.year) && _t.month() == (_u.month) : Bool) && _t.day() == (_u.day) : Bool) && _t.hour() == (_u.hour) : Bool) && _t.minute() == (_u.minute) : Bool) && _t.second() == (_u.second) : Bool) && _t.nanosecond() == (_u.nanosecond) : Bool) && (_t.weekday() == _u.weekday) : Bool);
    }
function testSecondsToUTC(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _utctests) {
            var _sec = _test._seconds;
            var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<stdgo._internal.time_test.Time_test.T_parsedTime>);
            var _tm = unix(_sec, (0i64 : stdgo.GoInt64)).utc()?.__copy__();
            var _newsec = _tm.unix();
            if (_newsec != (_sec)) {
                _t.errorf(("SecondsToUTC(%d).Seconds() = %d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_newsec));
            };
            if (!_same(_tm?.__copy__(), _golden)) {
                _t.errorf(("SecondsToUTC(%d):  // %#v" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(stdgo.Go.asInterface(_tm)));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface((_golden : stdgo._internal.time_test.Time_test.T_parsedTime)));
                _t.errorf(("  have=%v" : stdgo.GoString), stdgo.Go.toInterface(_tm.format(("2006-01-02T15:04:05Z07:00 MST" : stdgo.GoString))));
            };
        };
    }
function testNanosecondsToUTC(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _nanoutctests) {
            var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<stdgo._internal.time_test.Time_test.T_parsedTime>);
            var _nsec = ((_test._seconds * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_golden.nanosecond : stdgo.GoInt64) : stdgo.GoInt64);
            var _tm = unix((0i64 : stdgo.GoInt64), _nsec).utc()?.__copy__();
            var _newnsec = ((_tm.unix() * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_tm.nanosecond() : stdgo.GoInt64) : stdgo.GoInt64);
            if (_newnsec != (_nsec)) {
                _t.errorf(("NanosecondsToUTC(%d).Nanoseconds() = %d" : stdgo.GoString), stdgo.Go.toInterface(_nsec), stdgo.Go.toInterface(_newnsec));
            };
            if (!_same(_tm?.__copy__(), _golden)) {
                _t.errorf(("NanosecondsToUTC(%d):" : stdgo.GoString), stdgo.Go.toInterface(_nsec));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface((_golden : stdgo._internal.time_test.Time_test.T_parsedTime)));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_tm.format(("2006-01-02T15:04:05Z07:00 MST" : stdgo.GoString))));
            };
        };
    }
function testSecondsToLocalTime(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _localtests) {
            var _sec = _test._seconds;
            var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<stdgo._internal.time_test.Time_test.T_parsedTime>);
            var _tm = unix(_sec, (0i64 : stdgo.GoInt64))?.__copy__();
            var _newsec = _tm.unix();
            if (_newsec != (_sec)) {
                _t.errorf(("SecondsToLocalTime(%d).Seconds() = %d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_newsec));
            };
            if (!_same(_tm?.__copy__(), _golden)) {
                _t.errorf(("SecondsToLocalTime(%d):" : stdgo.GoString), stdgo.Go.toInterface(_sec));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface((_golden : stdgo._internal.time_test.Time_test.T_parsedTime)));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_tm.format(("2006-01-02T15:04:05Z07:00 MST" : stdgo.GoString))));
            };
        };
    }
function testNanosecondsToLocalTime(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _nanolocaltests) {
            var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<stdgo._internal.time_test.Time_test.T_parsedTime>);
            var _nsec = ((_test._seconds * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_golden.nanosecond : stdgo.GoInt64) : stdgo.GoInt64);
            var _tm = unix((0i64 : stdgo.GoInt64), _nsec)?.__copy__();
            var _newnsec = ((_tm.unix() * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_tm.nanosecond() : stdgo.GoInt64) : stdgo.GoInt64);
            if (_newnsec != (_nsec)) {
                _t.errorf(("NanosecondsToLocalTime(%d).Seconds() = %d" : stdgo.GoString), stdgo.Go.toInterface(_nsec), stdgo.Go.toInterface(_newnsec));
            };
            if (!_same(_tm?.__copy__(), _golden)) {
                _t.errorf(("NanosecondsToLocalTime(%d):" : stdgo.GoString), stdgo.Go.toInterface(_nsec));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface((_golden : stdgo._internal.time_test.Time_test.T_parsedTime)));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_tm.format(("2006-01-02T15:04:05Z07:00 MST" : stdgo.GoString))));
            };
        };
    }
function testSecondsToUTCAndBack(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_sec:stdgo.GoInt64):Bool {
            return unix(_sec, (0i64 : stdgo.GoInt64)).utc().unix() == (_sec);
        };
        var _f32 = function(_sec:stdgo.GoInt32):Bool {
            return _f((_sec : stdgo.GoInt64));
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f32), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testNanosecondsToUTCAndBack(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_nsec:stdgo.GoInt64):Bool {
            var _t = unix((0i64 : stdgo.GoInt64), _nsec).utc()?.__copy__();
            var _ns = ((_t.unix() * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_t.nanosecond() : stdgo.GoInt64) : stdgo.GoInt64);
            return _ns == (_nsec);
        };
        var _f32 = function(_nsec:stdgo.GoInt32):Bool {
            return _f((_nsec : stdgo.GoInt64));
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f32), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testUnixMilli(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_msec:stdgo.GoInt64):Bool {
            var _t = unixMilli(_msec)?.__copy__();
            return _t.unixMilli() == (_msec);
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testUnixMicro(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_usec:stdgo.GoInt64):Bool {
            var _t = unixMicro(_usec)?.__copy__();
            return _t.unixMicro() == (_usec);
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        {
            var _err = stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f), _cfg);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function _abs(_t:Time):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        var _sec = (0 : stdgo.GoInt64), _nsec = (0 : stdgo.GoInt64);
        var _unix = _t.unix();
        var _nano = _t.nanosecond();
        return { _0 : (_unix + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64), _1 : (_nano : stdgo.GoInt64) };
    }
function _absString(_t:Time):stdgo.GoString {
        var __tmp__ = _abs(_t?.__copy__()), _sec:stdgo.GoInt64 = __tmp__._0, _nsec:stdgo.GoInt64 = __tmp__._1;
        if ((_sec < (0i64 : stdgo.GoInt64) : Bool)) {
            _sec = -_sec;
            _nsec = -_nsec;
            if ((_nsec < (0i64 : stdgo.GoInt64) : Bool)) {
                _nsec = (_nsec + ((1000000000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _sec--;
            };
            return stdgo._internal.fmt.Fmt.sprintf(("-%d%09d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_nsec))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt.sprintf(("%d%09d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_nsec))?.__copy__();
    }
function testTruncateRound(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __1:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __2:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __3:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __4:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __5:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>), __6:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
var _b1e9 = __6, _bq = __5, _br = __4, _bt = __3, _bd = __2, _bnsec = __1, _bsec = __0;
        _b1e9.setInt64((1000000000i64 : stdgo.GoInt64));
        var _testOne = function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt64, _di:stdgo.GoInt64):Bool {
            _t.helper();
            var _t0 = unix(_ti, (_tns : stdgo.GoInt64)).utc()?.__copy__();
            var _d = (_di : Duration);
            if ((_d < (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                _d = -_d;
            };
            if ((_d <= (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                _d = (1i64 : stdgo._internal.time.Time.Duration);
            };
            var __tmp__ = _abs(_t0?.__copy__()), _sec:stdgo.GoInt64 = __tmp__._0, _nsec:stdgo.GoInt64 = __tmp__._1;
            _bsec.setInt64(_sec);
            _bnsec.setInt64(_nsec);
            _bt.mul(_bsec, _b1e9);
            _bt.add(_bt, _bnsec);
            _bd.setInt64((_d : stdgo.GoInt64));
            _bq.divMod(_bt, _bd, _br);
            var _r = _br.int64();
            var _t1 = _t0.add(-(_r : Duration))?.__copy__();
            {
                var _trunc = _t0.truncate(_d)?.__copy__();
                if (stdgo.Go.toInterface(_trunc) != stdgo.Go.toInterface(_t1)) {
                    _t.errorf(("Time.Truncate(%s, %s) = %s, want %s\n%v trunc %v =\n%v want\n%v" : stdgo.GoString), stdgo.Go.toInterface(_t0.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_trunc)), stdgo.Go.toInterface(_t1.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_absString(_t0?.__copy__())), stdgo.Go.toInterface((_d : stdgo.GoInt64)), stdgo.Go.toInterface(_absString(_trunc?.__copy__())), stdgo.Go.toInterface(_absString(_t1?.__copy__())));
                    return false;
                };
            };
            if (((_r > ((_d : stdgo.GoInt64) / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) || ((_r + _r : stdgo.GoInt64) == (_d : stdgo.GoInt64)) : Bool)) {
                _t1 = _t1.add((_d : Duration))?.__copy__();
            };
            {
                var _rnd = _t0.round(_d)?.__copy__();
                if (stdgo.Go.toInterface(_rnd) != stdgo.Go.toInterface(_t1)) {
                    _t.errorf(("Time.Round(%s, %s) = %s, want %s\n%v round %v =\n%v want\n%v" : stdgo.GoString), stdgo.Go.toInterface(_t0.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rnd)), stdgo.Go.toInterface(_t1.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_absString(_t0?.__copy__())), stdgo.Go.toInterface((_d : stdgo.GoInt64)), stdgo.Go.toInterface(_absString(_rnd?.__copy__())), stdgo.Go.toInterface(_absString(_t1?.__copy__())));
                    return false;
                };
            };
            return true;
        };
        for (__2 => _tt in _truncateRoundTests) {
            _testOne(_tt._t.unix(), (_tt._t.nanosecond() : stdgo.GoInt64), (_tt._d : stdgo.GoInt64));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (100 : stdgo.GoInt) : Bool), _j++, {
                        _testOne((62135596800i64 : stdgo.GoInt64), (_i : stdgo.GoInt64), (_j : stdgo.GoInt64));
                        _testOne((62135596800i64 : stdgo.GoInt64), -(_i : stdgo.GoInt64), (_j : stdgo.GoInt64));
                        if (_t.failed()) {
                            return;
                        };
                    });
                };
            });
        };
        if (_t.failed()) {
            return;
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (100000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        if (stdgo._internal.testing.Testing.short()) {
            _cfg.maxCount = (1000 : stdgo.GoInt);
        };
        var _f1 = function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt32, _logdi:stdgo.GoInt32):Bool {
            var _d = ((1i64 : stdgo._internal.time.Time.Duration) : Duration);
            var __0 = ((_logdi % (9 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt), __1 = (((_logdi >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt32)) % (9 : stdgo.GoInt32) : stdgo.GoInt32);
var _b = __1, _a = __0;
            _d = (_d << (_a) : stdgo._internal.time.Time.Duration);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_b : stdgo.GoInt) : Bool), _i++, {
                    _d = (_d * ((5i64 : stdgo._internal.time.Time.Duration)) : stdgo._internal.time.Time.Duration);
                });
            };
            _ti = (_ti >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            return _testOne(_ti, (_tns : stdgo.GoInt64), (_d : stdgo.GoInt64));
        };
        stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f1), _cfg);
        var _f2 = function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt32, _di:stdgo.GoInt32):Bool {
            var _d = ((_di : Duration) * (1000000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
            if ((_d < (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                _d = -_d;
            };
            _ti = (_ti >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            return _testOne(_ti, (_tns : stdgo.GoInt64), (_d : stdgo.GoInt64));
        };
        stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f2), _cfg);
        var _f3 = function(_tns:stdgo.GoInt64, _di:stdgo.GoInt64):Bool {
            _di = (_di & ((4294967294i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_di == ((0i64 : stdgo.GoInt64))) {
                _di = (2i64 : stdgo.GoInt64);
            };
            _tns = (_tns - ((_tns % _di : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((_tns < (0i64 : stdgo.GoInt64) : Bool)) {
                _tns = (_tns + ((_di / (2i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            } else {
                _tns = (_tns - ((_di / (2i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            return _testOne((0i64 : stdgo.GoInt64), _tns, _di);
        };
        stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f3), _cfg);
        var _f4 = function(_ti:stdgo.GoInt64, _tns:stdgo.GoInt32, _di:stdgo.GoInt64):Bool {
            _ti = (_ti >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            return _testOne(_ti, (_tns : stdgo.GoInt64), _di);
        };
        stdgo._internal.testing.quick.Quick.check(stdgo.Go.toInterface(_f4), _cfg);
    }
function testISOWeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _wt in _isoWeekTests) {
            var _dt = date(_wt._year, (_wt._month : Month), _wt._day, (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__();
            var __tmp__ = _dt.isoweek(), _y:stdgo.GoInt = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            if (((_w != _wt._wex) || (_y != _wt._yex) : Bool)) {
                _t.errorf(("got %d/%d; expected %d/%d for %d-%02d-%02d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_wt._yex), stdgo.Go.toInterface(_wt._wex), stdgo.Go.toInterface(_wt._year), stdgo.Go.toInterface(_wt._month), stdgo.Go.toInterface(_wt._day));
            };
        };
        {
            var _year = (1950 : stdgo.GoInt);
            stdgo.Go.cfor((_year < (2100 : stdgo.GoInt) : Bool), _year++, {
                {
                    var __tmp__ = date(_year, (1 : stdgo._internal.time.Time.Month), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc).isoweek(), _y:stdgo.GoInt = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
                    if (((_y != _year) || (_w != (1 : stdgo.GoInt)) : Bool)) {
                        _t.errorf(("got %d/%d; expected %d/1 for Jan 04" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_year));
                    };
                };
            });
        };
    }
function testYearDay(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _loc in _yearDayLocations) {
            for (__2 => _ydt in _yearDayTests) {
                var _dt = date(_ydt._year, (_ydt._month : Month), _ydt._day, (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
                var _yday = _dt.yearDay();
                if (_yday != (_ydt._yday)) {
                    _t.errorf(("Date(%d-%02d-%02d in %v).YearDay() = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_ydt._year), stdgo.Go.toInterface(_ydt._month), stdgo.Go.toInterface(_ydt._day), stdgo.Go.toInterface(stdgo.Go.asInterface(_loc)), stdgo.Go.toInterface(_yday), stdgo.Go.toInterface(_ydt._yday));
                    continue;
                };
                if (((_ydt._year < (0 : stdgo.GoInt) : Bool) || (_ydt._year > (9999 : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                };
                var _f = stdgo._internal.fmt.Fmt.sprintf(("%04d-%02d-%02d %03d %+.2d00" : stdgo.GoString), stdgo.Go.toInterface(_ydt._year), stdgo.Go.toInterface(_ydt._month), stdgo.Go.toInterface(_ydt._day), stdgo.Go.toInterface(_ydt._yday), stdgo.Go.toInterface((((_i - (2 : stdgo.GoInt) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__();
                var __tmp__ = parse(("2006-01-02 002 -0700" : stdgo.GoString), _f?.__copy__()), _dt1:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(\"2006-01-02 002 -0700\", %q): %v" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_err));
                    continue;
                };
                if (!_dt1.equal(_dt?.__copy__())) {
                    _t.errorf(("Parse(\"2006-01-02 002 -0700\", %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)));
                };
            };
        };
    }
function testDurationString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _durationTests) {
            {
                var _str = (_tt._d.string() : stdgo.GoString)?.__copy__();
                if (_str != (_tt._str)) {
                    _t.errorf(("Duration(%d).String() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface((_tt._d : stdgo.GoInt64)), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_tt._str));
                };
            };
            if ((_tt._d > (0i64 : stdgo._internal.time.Time.Duration) : Bool)) {
                {
                    var _str = (-_tt._d.string() : stdgo.GoString)?.__copy__();
                    if (_str != ((("-" : stdgo.GoString) + _tt._str?.__copy__() : stdgo.GoString))) {
                        _t.errorf(("Duration(%d).String() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface((-_tt._d : stdgo.GoInt64)), stdgo.Go.toInterface(_str), stdgo.Go.toInterface((("-" : stdgo.GoString) + _tt._str?.__copy__() : stdgo.GoString)));
                    };
                };
            };
        };
    }
function testDate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _dateTests) {
            var _time = date(_tt._year, (_tt._month : Month), _tt._day, _tt._hour, _tt._min, _tt._sec, _tt._nsec, _tt._z)?.__copy__();
            var _want = unix(_tt._unix, (0i64 : stdgo.GoInt64))?.__copy__();
            if (!_time.equal(_want?.__copy__())) {
                _t.errorf(("Date(%d, %d, %d, %d, %d, %d, %d, %s) = %v, want %v" : stdgo.GoString),
stdgo.Go.toInterface(_tt._year),
stdgo.Go.toInterface(_tt._month),
stdgo.Go.toInterface(_tt._day),
stdgo.Go.toInterface(_tt._hour),
stdgo.Go.toInterface(_tt._min),
stdgo.Go.toInterface(_tt._sec),
stdgo.Go.toInterface(_tt._nsec),
stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._z)),
stdgo.Go.toInterface(stdgo.Go.asInterface(_time)),
stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
function testAddDate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t0 = date((2011 : stdgo.GoInt), (11 : stdgo._internal.time.Time.Month), (18 : stdgo.GoInt), (7 : stdgo.GoInt), (56 : stdgo.GoInt), (35 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__();
        var _t1 = date((2016 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Month), (19 : stdgo.GoInt), (7 : stdgo.GoInt), (56 : stdgo.GoInt), (35 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__();
        for (__2 => _at in _addDateTests) {
            var _time = _t0.addDate(_at._years, _at._months, _at._days)?.__copy__();
            if (!_time.equal(_t1?.__copy__())) {
                _t.errorf(("AddDate(%d, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_at._years), stdgo.Go.toInterface(_at._months), stdgo.Go.toInterface(_at._days), stdgo.Go.toInterface(stdgo.Go.asInterface(_time)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
            };
        };
    }
function testDaysIn(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _daysInTests) {
            var _di = daysIn((_tt._month : Month), _tt._year);
            if (_di != (_tt._di)) {
                _t.errorf(("got %d; expected %d for %d-%02d" : stdgo.GoString), stdgo.Go.toInterface(_di), stdgo.Go.toInterface(_tt._di), stdgo.Go.toInterface(_tt._year), stdgo.Go.toInterface(_tt._month));
            };
        };
    }
function testAddToExactSecond(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t1 = now()?.__copy__();
        var _t2 = _t1.add(((1000000000i64 : stdgo._internal.time.Time.Duration) - (_t1.nanosecond() : Duration) : stdgo._internal.time.Time.Duration))?.__copy__();
        var _sec = (((_t1.second() + (1 : stdgo.GoInt) : stdgo.GoInt)) % (60 : stdgo.GoInt) : stdgo.GoInt);
        if (((_t2.second() != _sec) || (_t2.nanosecond() != (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("sec = %d, nsec = %d, want sec = %d, nsec = 0" : stdgo.GoString), stdgo.Go.toInterface(_t2.second()), stdgo.Go.toInterface(_t2.nanosecond()), stdgo.Go.toInterface(_sec));
        };
    }
function _equalTimeAndZone(_a:Time, _b:Time):Bool {
        var __tmp__ = _a.zone(), _aname:stdgo.GoString = __tmp__._0, _aoffset:stdgo.GoInt = __tmp__._1;
        var __tmp__ = _b.zone(), _bname:stdgo.GoString = __tmp__._0, _boffset:stdgo.GoInt = __tmp__._1;
        return ((_a.equal(_b?.__copy__()) && _aoffset == (_boffset) : Bool) && (_aname == _bname) : Bool);
    }
function testTimeGob(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        for (__2 => _tt in _gobTests) {
            var _gobtt:Time = ({} : stdgo._internal.time.Time.Time);
            {
                var _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
                if (_err != null) {
                    _t.errorf(("%v gob Encode error = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)), stdgo.Go.toInterface(_err));
                } else {
                    var _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_gobtt) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
                    if (_err != null) {
                        _t.errorf(("%v gob Decode error = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)), stdgo.Go.toInterface(_err));
                    } else if (!_equalTimeAndZone(_gobtt?.__copy__(), _tt?.__copy__())) {
                        _t.errorf(("Decoded time = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gobtt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)));
                    };
                };
            };
            _b.reset();
        };
    }
function testInvalidTimeGob(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _invalidEncodingTests) {
            var _ignored:Time = ({} : stdgo._internal.time.Time.Time);
            var _err = _ignored.gobDecode(_tt._bytes);
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("time.GobDecode(%#v) error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._bytes), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
            _err = _ignored.unmarshalBinary(_tt._bytes);
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("time.UnmarshalBinary(%#v) error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._bytes), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testNotGobEncodableTime(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _notEncodableTimes) {
            var __tmp__ = _tt._time.gobEncode(), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("%v GobEncode error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
            {
                var __tmp__ = _tt._time.marshalBinary();
                _err = __tmp__._1;
            };
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("%v MarshalBinary error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
function testTimeJSON(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _jsonTests) {
            var _jsonTime:Time = ({} : stdgo._internal.time.Time.Time);
            {
                var __tmp__ = stdgo._internal.encoding.json.Json.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time))), _jsonBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%v json.Marshal error = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err));
                } else if ((_jsonBytes : stdgo.GoString) != (_tt._json)) {
                    _t.errorf(("%v JSON = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface((_jsonBytes : stdgo.GoString)), stdgo.Go.toInterface(_tt._json));
                } else {
                    _err = stdgo._internal.encoding.json.Json.unmarshal(_jsonBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_jsonTime) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
                    if (_err != null) {
                        _t.errorf(("%v json.Unmarshal error = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err));
                    } else if (!_equalTimeAndZone(_jsonTime?.__copy__(), _tt._time?.__copy__())) {
                        _t.errorf(("Unmarshaled time = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_jsonTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)));
                    };
                };
            };
        };
    }
function testUnmarshalInvalidTimes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_18>(7, 7, ...[({ _in : ("{}" : stdgo.GoString), _want : ("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString) } : T__struct_18), ({ _in : ("[]" : stdgo.GoString), _want : ("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString) } : T__struct_18), ({ _in : ("\"2000-01-01T1:12:34Z\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : T__struct_18), ({ _in : ("\"2000-01-01T00:00:00,000Z\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : T__struct_18), ({ _in : ("\"2000-01-01T00:00:00+24:00\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : T__struct_18), ({ _in : ("\"2000-01-01T00:00:00+00:60\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : T__struct_18), ({ _in : ("\"2000-01-01T00:00:00+123:45\"" : stdgo.GoString), _want : ("parsing time \"2000-01-01T00:00:00+123:45\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"+123:45\" as \"Z07:00\"" : stdgo.GoString) } : T__struct_18)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : T__struct_18)])) : stdgo.Slice<T__struct_18>);
        for (__2 => _tt in _tests) {
            var _ts:Time = ({} : stdgo._internal.time.Time.Time);
            var _want = _tt._want?.__copy__();
            var _err = stdgo._internal.encoding.json.Json.unmarshal((_tt._in : stdgo.Slice<stdgo.GoByte>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ts) : stdgo.Ref<stdgo._internal.time.Time.Time>))));
            if (stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_err)) != (_want)) {
                _t.errorf(("Time.UnmarshalJSON(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
            if ((stdgo._internal.strings.Strings.hasPrefix(_tt._in?.__copy__(), ("\"" : stdgo.GoString)) && stdgo._internal.strings.Strings.hasSuffix(_tt._in?.__copy__(), ("\"" : stdgo.GoString)) : Bool)) {
                _err = _ts.unmarshalText((stdgo._internal.strings.Strings.trim(_tt._in?.__copy__(), ("\"" : stdgo.GoString)) : stdgo.Slice<stdgo.GoByte>));
                if (stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_err)) != (_want)) {
                    _t.errorf(("Time.UnmarshalText(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
function testMarshalInvalidTimes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_16>(5, 5, ...[({ _time : date((10000 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _want : ("Time.MarshalJSON: year outside of range [0,9999]" : stdgo.GoString) } : T__struct_16), ({ _time : date((-998 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc).add((-1000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _want : ("Time.MarshalJSON: year outside of range [0,9999]" : stdgo.GoString) } : T__struct_16), ({ _time : date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc).add((-1i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _want : ("Time.MarshalJSON: year outside of range [0,9999]" : stdgo.GoString) } : T__struct_16), ({ _time : date((2020 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (86400 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalJSON: timezone hour outside of range [0,23]" : stdgo.GoString) } : T__struct_16), ({ _time : date((2020 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), fixedZone(stdgo.Go.str()?.__copy__(), (442800 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalJSON: timezone hour outside of range [0,23]" : stdgo.GoString) } : T__struct_16)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _time : ({} : stdgo._internal.time.Time.Time), _want : ("" : stdgo.GoString) } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
        for (__2 => _tt in _tests) {
            var _want = _tt._want?.__copy__();
            var __tmp__ = _tt._time.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_b != null) {
                _t.errorf(("(%v).MarshalText() = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_b));
            } else if (((_err == null) || (_err.error() != _want) : Bool)) {
                _t.errorf(("(%v).MarshalJSON() error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
            _want = stdgo._internal.strings.Strings.replaceAll(_tt._want?.__copy__(), ("JSON" : stdgo.GoString), ("Text" : stdgo.GoString))?.__copy__();
            {
                var __tmp__ = _tt._time.marshalText();
                _b = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_b != null) {
                _t.errorf(("(%v).MarshalText() = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_b));
            } else if (((_err == null) || (_err.error() != _want) : Bool)) {
                _t.errorf(("(%v).MarshalText() error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
function testParseDuration(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tc in _parseDurationTests) {
            var __tmp__ = parseDuration(_tc._in?.__copy__()), _d:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_d != _tc._want) : Bool)) {
                _t.errorf(("ParseDuration(%q) = %v, %v, want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tc._want)));
            };
        };
    }
function testParseDurationErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tc in _parseDurationErrorTests) {
            var __tmp__ = parseDuration(_tc._in?.__copy__()), __3:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("ParseDuration(%q) = _, nil, want _, non-nil" : stdgo.GoString), stdgo.Go.toInterface(_tc._in));
            } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _tc._expect?.__copy__())) {
                _t.errorf(("ParseDuration(%q) = _, %q, error does not contain %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tc._expect));
            };
        };
    }
function testParseDurationRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _max0 = ((9223372036854775807i64 : stdgo._internal.time.Time.Duration) : Duration);
        var __tmp__ = parseDuration((_max0.string() : stdgo.GoString)?.__copy__()), _max1:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_max0 != _max1) : Bool)) {
            _t.errorf(("round-trip failed: %d => %q => %d, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_max0)), stdgo.Go.toInterface((_max0.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_max1)), stdgo.Go.toInterface(_err));
        };
        var _min0 = ((-9223372036854775808i64 : stdgo._internal.time.Time.Duration) : Duration);
        var __tmp__ = parseDuration((_min0.string() : stdgo.GoString)?.__copy__()), _min1:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_min0 != _min1) : Bool)) {
            _t.errorf(("round-trip failed: %d => %q => %d, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_min0)), stdgo.Go.toInterface((_min0.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_min1)), stdgo.Go.toInterface(_err));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _d0 = ((stdgo._internal.math.rand.Rand.int31() : Duration) * (1000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration);
                var _s = (_d0.string() : stdgo.GoString)?.__copy__();
                var __tmp__ = parseDuration(_s?.__copy__()), _d1:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || (_d0 != _d1) : Bool)) {
                    _t.errorf(("round-trip failed: %d => %q => %d, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d0)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testLocationRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        resetLocalOnceForTest();
        var _c = (new stdgo.Chan<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.__send__((now().string() : stdgo.GoString));
            };
            a();
        });
        var __blank__ = (now().string() : stdgo.GoString);
        _c.__get__();
        sleep((100000000i64 : stdgo._internal.time.Time.Duration));
        forceUSPacificForTesting();
    }
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        };
        for (__18 => _mt in _mallocTest) {
            var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), _mt._fn) : stdgo.GoInt);
            if ((_allocs > _mt._count : Bool)) {
                _t.errorf(("%s: %d allocs, want %d" : stdgo.GoString), stdgo.Go.toInterface(_mt._desc), stdgo.Go.toInterface(_allocs), stdgo.Go.toInterface(_mt._count));
            };
        };
    }
function testLoadFixed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = loadLocation(("Etc/GMT+1" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = now().in_(_loc).zone(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((!(((_name == ("GMT+1" : stdgo.GoString)) || (_name == ("-01" : stdgo.GoString)) : Bool)) || (_offset != (-3600 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Now().In(loc).Zone() = %q, %d, want %q or %q, %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(("GMT+1" : stdgo.GoString)), stdgo.Go.toInterface(("-01" : stdgo.GoString)), stdgo.Go.toInterface((-3600 : stdgo.GoInt)));
        };
    }
function testSub(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _st in _subTests) {
            var _got = _st._t.sub(_st._u?.__copy__());
            if (_got != (_st._d)) {
                _t.errorf(("#%d: Sub(%v, %v): got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._u)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._d)));
            };
        };
    }
function testDurationNanoseconds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _nsDurationTests) {
            {
                var _got = _tt._d.nanoseconds();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Nanoseconds() = %d; want: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationMicroseconds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _usDurationTests) {
            {
                var _got = _tt._d.microseconds();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Microseconds() = %d; want: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationMilliseconds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _msDurationTests) {
            {
                var _got = _tt._d.milliseconds();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Milliseconds() = %d; want: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationSeconds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _secDurationTests) {
            {
                var _got = _tt._d.seconds();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Seconds() = %g; want: %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationMinutes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _minDurationTests) {
            {
                var _got = _tt._d.minutes();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Minutes() = %g; want: %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationHours(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _hourDurationTests) {
            {
                var _got = _tt._d.hours();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Hours() = %g; want: %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDurationTruncate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _durationTruncateTests) {
            {
                var _got = _tt._d.truncate(_tt._m);
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Truncate(%s) = %s; want: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._m)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._want)));
                };
            };
        };
    }
function testDurationRound(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _durationRoundTests) {
            {
                var _got = _tt._d.round(_tt._m);
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Round(%s) = %s; want: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._m)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._want)));
                };
            };
        };
    }
function testDurationAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _durationAbsTests) {
            {
                var _got = _tt._d.abs();
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Abs() = %s; want: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._want)));
                };
            };
        };
    }
function testDefaultLoc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _tt in _defaultLocTests) {
            var _t1 = (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time);
            var _t2 = (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time).utc()?.__copy__();
            if (!_tt._f(_t1?.__copy__(), _t2?.__copy__())) {
                _t.errorf(("Time{} and Time{}.UTC() behave differently for %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._name));
            };
        };
    }
function benchmarkNow(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t = now()?.__copy__();
            });
        };
    }
function benchmarkNowUnixNano(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _u = now().unixNano();
            });
        };
    }
function benchmarkNowUnixMilli(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _u = now().unixMilli();
            });
        };
    }
function benchmarkNowUnixMicro(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _u = now().unixMicro();
            });
        };
    }
function benchmarkFormat(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = unix((1265346057i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.format(("Mon Jan  2 15:04:05 2006" : stdgo.GoString));
            });
        };
    }
function benchmarkFormatRFC3339(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = unix((1265346057i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString));
            });
        };
    }
function benchmarkFormatRFC3339Nano(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = unix((1265346057i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString));
            });
        };
    }
function benchmarkFormatNow(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.format(("Mon Jan  2 15:04:05 2006" : stdgo.GoString));
            });
        };
    }
function benchmarkMarshalJSON(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.marshalJSON();
            });
        };
    }
function benchmarkMarshalText(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.marshalText();
            });
        };
    }
function benchmarkParse(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                parse(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Mon Jan  2 15:04:05 2006" : stdgo.GoString));
            });
        };
    }
function benchmarkParseRFC3339UTC(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2020-08-22T11:27:43.123456789Z" : stdgo.GoString));
            });
        };
    }
function benchmarkParseRFC3339UTCBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_testdataRFC3339UTCBytes : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkParseRFC3339TZ(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2020-08-22T11:27:43.123456789-02:00" : stdgo.GoString));
            });
        };
    }
function benchmarkParseRFC3339TZBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), (_testdataRFC3339TZBytes : stdgo.GoString)?.__copy__());
            });
        };
    }
function benchmarkParseDuration(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                parseDuration(("9007199254.740993ms" : stdgo.GoString));
                parseDuration(("9007199254740993ns" : stdgo.GoString));
            });
        };
    }
function benchmarkHour(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = _t.hour();
            });
        };
    }
function benchmarkSecond(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = _t.second();
            });
        };
    }
function benchmarkYear(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = _t.year();
            });
        };
    }
function benchmarkDay(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = _t.day();
            });
        };
    }
function benchmarkISOWeek(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = _t.isoweek();
            });
        };
    }
function benchmarkGoString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t = now()?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = _t.goString();
            });
        };
    }
function benchmarkUnmarshalText(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _t:Time = ({} : stdgo._internal.time.Time.Time);
        var _in = (("2020-08-22T11:27:43.123456789-02:00" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.unmarshalText(_in);
            });
        };
    }
function testMarshalBinaryZeroTime(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _t0 = (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time);
        var __tmp__ = _t0.marshalBinary(), _enc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _t1 = now()?.__copy__();
        {
            var _err = _t1.unmarshalBinary(_enc);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t0)) {
            _t.errorf(("t0=%#v\nt1=%#v\nwant identical structures" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
        };
    }
function testMarshalBinaryVersion2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("1880-01-01T00:00:00Z" : stdgo.GoString)), _t0:stdgo._internal.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Failed to parse time, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = loadLocation(("US/Eastern" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Failed to load location, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _t1 = _t0.in_(_loc)?.__copy__();
        var __tmp__ = _t1.marshalBinary(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Failed to Marshal, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _t2 = (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time);
        _err = _t2.unmarshalBinary(_b);
        if (_err != null) {
            _t.errorf(("Failed to Unmarshal, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!((_t0.equal(_t1?.__copy__()) && _t1.equal(_t2?.__copy__()) : Bool))) {
            if (!_t0.equal(_t1?.__copy__())) {
                _t.errorf(("The result t1: %+v after Marshal is not matched original t0: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
            };
            if (!_t1.equal(_t2?.__copy__())) {
                _t.errorf(("The result t2: %+v after Unmarshal is not matched original t1: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
            };
        };
    }
function testUnmarshalTextAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _in = (("2020-08-22T11:27:43.123456789Z" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _allocs = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                var _t:Time = ({} : stdgo._internal.time.Time.Time);
                _t.unmarshalText(_in);
            });
            if (_allocs != (0 : stdgo.GoFloat64)) {
                _t.errorf(("got %v allocs, want 0 allocs" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
            };
        };
    }
function testZeroMonthString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var __0 = (((0 : stdgo._internal.time.Time.Month) : Month).string() : stdgo.GoString)?.__copy__(), __1 = ("%!Month(0)" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("zero month = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testWeekdayString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var __0 = (((2 : stdgo._internal.time.Time.Weekday) : Weekday).string() : stdgo.GoString)?.__copy__(), __1 = ("Tuesday" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Tuesday weekday = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (((14 : stdgo._internal.time.Time.Weekday) : Weekday).string() : stdgo.GoString)?.__copy__(), __1 = ("%!Weekday(14)" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("14th weekday = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testReadFileLimit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {
            var __tmp__ = stdgo._internal.os.Os.stat(("/dev/zero" : stdgo.GoString)), __2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skip(stdgo.Go.toInterface(("skipping test without a /dev/zero" : stdgo.GoString)));
            };
        };
        var __tmp__ = readFile(("/dev/zero" : stdgo.GoString)), __11:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) || !stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("is too large" : stdgo.GoString)) : Bool)) {
            _t.errorf(("readFile(%q) error = %v; want error containing \'is too large\'" : stdgo.GoString), stdgo.Go.toInterface(("/dev/zero" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
function testConcurrentTimerReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _wg.add((8 : stdgo.GoInt));
        var _timer = newTimer((3600000000000i64 : stdgo._internal.time.Time.Duration));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            {
                                var _j = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < (1000 : stdgo.GoInt) : Bool), _j++, {
                                    _timer.reset(((3600000000000i64 : stdgo._internal.time.Time.Duration) + ((_i * _j : stdgo.GoInt) : Duration) : stdgo._internal.time.Time.Duration));
                                });
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a(_i);
                });
            });
        };
        _wg.wait_();
    }
function testConcurrentTimerResetStop(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _wg.add((16 : stdgo.GoInt));
        var _timer = newTimer((3600000000000i64 : stdgo._internal.time.Time.Duration));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            {
                                var _j = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < (1000 : stdgo.GoInt) : Bool), _j++, {
                                    _timer.reset(((3600000000000i64 : stdgo._internal.time.Time.Duration) + ((_i * _j : stdgo.GoInt) : Duration) : stdgo._internal.time.Time.Duration));
                                });
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a(_i);
                });
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            _timer.stop();
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a(_i);
                });
            });
        };
        _wg.wait_();
    }
function testTimeIsDST(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = loadLocation(("Australia/Sydney" : stdgo.GoString)), _tzWithDST:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not load tz \'Australia/Sydney\': %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = loadLocation(("Australia/Brisbane" : stdgo.GoString)), _tzWithoutDST:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("could not load tz \'Australia/Brisbane\': %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _tzFixed = fixedZone(("FIXED_TIME" : stdgo.GoString), (12345 : stdgo.GoInt));
            var _tests = {
                var s:stdgo.GoArray<T__struct_28> = new stdgo.GoArray<T__struct_28>(8, 8, ...[for (i in 0 ... 8) ({ _time : ({} : stdgo._internal.time.Time.Time), _want : false } : T__struct_28)]);
                s[0] = ({ _time : date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _want : false } : T__struct_28);
                s[1] = ({ _time : date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__(), _want : false } : T__struct_28);
                s[2] = ({ _time : date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithDST)?.__copy__(), _want : true } : T__struct_28);
                s[3] = ({ _time : date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithDST)?.__copy__(), _want : false } : T__struct_28);
                s[4] = ({ _time : date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithoutDST)?.__copy__(), _want : false } : T__struct_28);
                s[5] = ({ _time : date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzWithoutDST)?.__copy__(), _want : false } : T__struct_28);
                s[6] = ({ _time : date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzFixed)?.__copy__(), _want : false } : T__struct_28);
                s[7] = ({ _time : date((2009 : stdgo.GoInt), (6 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _tzFixed)?.__copy__(), _want : false } : T__struct_28);
                s;
            };
            for (_i => _tt in _tests) {
                var _got = _tt._time.isDST();
                if (_got != (_tt._want)) {
                    _t.errorf(("#%d:: (%#v).IsDST()=%t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._time.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testTimeAddSecOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _maxInt64:stdgo.GoInt64 = (9223372036854775807i64 : stdgo.GoInt64);
        var _timeExt = ((_maxInt64 - (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) - (50i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _notMonoTime = unix(_timeExt, (0i64 : stdgo.GoInt64))?.__copy__();
        {
            var _i = (0i64 : stdgo.GoInt64);
            stdgo.Go.cfor((_i < (100i64 : stdgo.GoInt64) : Bool), _i++, {
                var _sec = _notMonoTime.unix();
                _notMonoTime = _notMonoTime.add(((_i * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : Duration))?.__copy__();
                {
                    var _newSec = _notMonoTime.unix();
                    if (((_newSec != (_sec + _i : stdgo.GoInt64)) && ((_newSec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) != _maxInt64) : Bool)) {
                        _t.fatalf(("time ext: %d overflows with positive delta, overflow threshold: %d" : stdgo.GoString), stdgo.Go.toInterface(_newSec), stdgo.Go.toInterface(_maxInt64));
                    };
                };
            });
        };
        _maxInt64 = -_maxInt64;
        _notMonoTime = notMonoNegativeTime?.__copy__();
        {
            var _i = (0i64 : stdgo.GoInt64);
            stdgo.Go.cfor((_i > (-100i64 : stdgo.GoInt64) : Bool), _i--, {
                var _sec = _notMonoTime.unix();
                _notMonoTime = _notMonoTime.add(((_i * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : Duration))?.__copy__();
                {
                    var _newSec = _notMonoTime.unix();
                    if (((_newSec != (_sec + _i : stdgo.GoInt64)) && ((_newSec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) != _maxInt64) : Bool)) {
                        _t.fatalf(("time ext: %d overflows with positive delta, overflow threshold: %d" : stdgo.GoString), stdgo.Go.toInterface(_newSec), stdgo.Go.toInterface(_maxInt64));
                    };
                };
            });
        };
    }
function testTimeWithZoneTransition(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = loadLocation(("Asia/Shanghai" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _tests = {
                var s:stdgo.GoArray<T__struct_29> = new stdgo.GoArray<T__struct_29>(8, 8, ...[for (i in 0 ... 8) ({ _give : ({} : stdgo._internal.time.Time.Time), _want : ({} : stdgo._internal.time.Time.Time) } : T__struct_29)]);
                s[0] = ({ _give : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (9 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[1] = ({ _give : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (10 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[2] = ({ _give : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[3] = ({ _give : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[4] = ({ _give : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (16 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (7 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[5] = ({ _give : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (17 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (8 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[6] = ({ _give : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (15 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s[7] = ({ _give : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _want : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), utc)?.__copy__() } : T__struct_29);
                s;
            };
            for (_i => _tt in _tests) {
                if (!_tt._give.equal(_tt._want?.__copy__())) {
                    _t.errorf(("#%d:: %#v is not equal to %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._give.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))), stdgo.Go.toInterface(_tt._want.format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testZoneBounds(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = loadLocation(("Asia/Shanghai" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            for (__10 => _test in _utctests) {
                var _sec = _test._seconds;
                var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<stdgo._internal.time_test.Time_test.T_parsedTime>);
                var _tm = unix(_sec, (0i64 : stdgo.GoInt64)).utc()?.__copy__();
                var __tmp__ = _tm.zoneBounds(), _start:stdgo._internal.time.Time.Time = __tmp__._0, _end:stdgo._internal.time.Time.Time = __tmp__._1;
                if (!((_start.isZero() && _end.isZero() : Bool))) {
                    _t.errorf(("ZoneBounds of %+v expects two zero Time, got:\n  start=%v\n  end=%v" : stdgo.GoString), stdgo.Go.toInterface((_golden : stdgo._internal.time_test.Time_test.T_parsedTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
                };
            };
            var _beginTime = date((-2147483648 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
            var __tmp__ = _beginTime.zoneBounds(), _start:stdgo._internal.time.Time.Time = __tmp__._0, _end:stdgo._internal.time.Time.Time = __tmp__._1;
            if ((!_start.isZero() || _end.isZero() : Bool)) {
                _t.errorf(("ZoneBounds of %v expects start is zero Time, got:\n  start=%v\n  end=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_beginTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
            };
            var _foreverTime = date((2147483647 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
            {
                var __tmp__ = _foreverTime.zoneBounds();
                _start = __tmp__._0?.__copy__();
                _end = __tmp__._1?.__copy__();
            };
            if ((_start.isZero() || !_end.isZero() : Bool)) {
                _t.errorf(("ZoneBounds of %v expects end is zero Time, got:\n  start=%v\n  end=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_foreverTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
            };
            var _boundOne = date((1990 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (16 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
            var _boundTwo = date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (3 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
            var _boundThree = date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
            var _makeLocalTime = function(_sec:stdgo.GoInt64):Time {
                return unix(_sec, (0i64 : stdgo.GoInt64))?.__copy__();
            };
            var _realTests = {
                var s:stdgo.GoArray<T__struct_30> = new stdgo.GoArray<T__struct_30>(23, 23, ...[for (i in 0 ... 23) ({ _giveTime : ({} : stdgo._internal.time.Time.Time), _wantStart : ({} : stdgo._internal.time.Time.Time), _wantEnd : ({} : stdgo._internal.time.Time.Time) } : T__struct_30)]);
                s[0] = ({ _giveTime : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundOne?.__copy__(), _wantEnd : _boundTwo?.__copy__() } : T__struct_30);
                s[1] = ({ _giveTime : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundOne?.__copy__(), _wantEnd : _boundTwo?.__copy__() } : T__struct_30);
                s[2] = ({ _giveTime : date((1991 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundOne?.__copy__(), _wantEnd : _boundTwo?.__copy__() } : T__struct_30);
                s[3] = ({ _giveTime : _boundTwo?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : T__struct_30);
                s[4] = ({ _giveTime : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (16 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : T__struct_30);
                s[5] = ({ _giveTime : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (17 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : T__struct_30);
                s[6] = ({ _giveTime : date((1991 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundTwo?.__copy__(), _wantEnd : _boundThree?.__copy__() } : T__struct_30);
                s[7] = ({ _giveTime : _boundThree?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[8] = ({ _giveTime : date((1991 : stdgo.GoInt), (12 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[9] = ({ _giveTime : date((1992 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (17 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[10] = ({ _giveTime : date((1992 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (13 : stdgo.GoInt), (18 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[11] = ({ _giveTime : date((1992 : stdgo.GoInt), (4 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (1 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[12] = ({ _giveTime : date((1992 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (16 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[13] = ({ _giveTime : date((1992 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (14 : stdgo.GoInt), (17 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[14] = ({ _giveTime : date((1992 : stdgo.GoInt), (9 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (0 : stdgo.GoInt), (50 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__(), _wantStart : _boundThree?.__copy__(), _wantEnd : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time) } : T__struct_30);
                s[15] = ({ _giveTime : _makeLocalTime((0i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((-5756400i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((9972000i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[16] = ({ _giveTime : _makeLocalTime((1221681866i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((1205056800i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((1225616400i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[17] = ({ _giveTime : _makeLocalTime((2152173599i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2145916800i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[18] = ({ _giveTime : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[19] = ({ _giveTime : _makeLocalTime((2152173601i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[20] = ({ _giveTime : _makeLocalTime((2159200800i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[21] = ({ _giveTime : _makeLocalTime((2172733199i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2152173600i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s[22] = ({ _giveTime : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__(), _wantStart : _makeLocalTime((2172733200i64 : stdgo.GoInt64))?.__copy__(), _wantEnd : _makeLocalTime((2177452800i64 : stdgo.GoInt64))?.__copy__() } : T__struct_30);
                s;
            };
            for (_i => _tt in _realTests) {
                var __tmp__ = _tt._giveTime.zoneBounds(), _start:stdgo._internal.time.Time.Time = __tmp__._0, _end:stdgo._internal.time.Time.Time = __tmp__._1;
                if ((!_start.equal(_tt._wantStart?.__copy__()) || !_end.equal(_tt._wantEnd?.__copy__()) : Bool)) {
                    _t.errorf(("#%d:: ZoneBounds of %v expects right bounds:\n  got start=%v\n  want start=%v\n  got end=%v\n  want end=%v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._giveTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._wantStart)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._wantEnd)));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testEmbeddedTZData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = stdgo._internal.time.Time.disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            for (__2 => _zone in _zones) {
                var __tmp__ = stdgo._internal.time.Time.loadLocation(_zone?.__copy__()), _ref:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("LoadLocation(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.time.Time.loadFromEmbeddedTZData(_zone?.__copy__()), _embedded:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("LoadFromEmbeddedTZData(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.time.Time.loadLocationFromTZData(_zone?.__copy__(), (_embedded : stdgo.Slice<stdgo.GoByte>)), _sample:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("LoadLocationFromTZData failed for %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _v1 = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_ref))).elem()?.__copy__();
                var _v2 = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_sample))).elem()?.__copy__();
                var _typ = _v1.type();
                var _nf = _typ.numField();
                var _found = (0 : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _nf : Bool), _i++, {
                        var _ft = _typ.field(_i)?.__copy__();
                        if (((_ft.name != ("name" : stdgo.GoString)) && (_ft.name != ("zone" : stdgo.GoString)) : Bool)) {
                            continue;
                        };
                        _found++;
                        if (!_equal(_t, _v1.field(_i)?.__copy__(), _v2.field(_i)?.__copy__())) {
                            _t.errorf(("zone %s: system and embedded tzdata field %s differs" : stdgo.GoString), stdgo.Go.toInterface(_zone), stdgo.Go.toInterface(_ft.name));
                        };
                    });
                };
                if (_found != ((2 : stdgo.GoInt))) {
                    _t.errorf(("test must be updated for change to time.Location struct" : stdgo.GoString));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _equal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f1:stdgo._internal.reflect.Reflect.Value, _f2:stdgo._internal.reflect.Reflect.Value):Bool {
        {
            final __value__ = _f1.type().kind();
            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                if (_f1.len() != (_f2.len())) {
                    return false;
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _f1.len() : Bool), _i++, {
                        if (!_equal(_t, _f1.index(_i)?.__copy__(), _f2.index(_i)?.__copy__())) {
                            return false;
                        };
                    });
                };
                return true;
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _nf = _f1.type().numField();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _nf : Bool), _i++, {
                        if (!_equal(_t, _f1.field(_i)?.__copy__(), _f2.field(_i)?.__copy__())) {
                            return false;
                        };
                    });
                };
                return true;
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return (_f1.string() : stdgo.GoString) == ((_f2.string() : stdgo.GoString));
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _f1.bool_() == (_f2.bool_());
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _f1.int_() == (_f2.int_());
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return _f1.uint() == (_f2.uint());
            } else {
                _t.errorf(("test internal error: unsupported kind %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f1.type().kind())));
                return true;
            };
        };
    }
function testEnvVarUsage(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.time.Time.resetZoneinfoForTesting();
            {};
            {};
            _t.setenv(("ZONEINFO" : stdgo.GoString), ("foo.zip" : stdgo.GoString));
            stdgo._internal.time.Time.loadLocation(("Asia/Jerusalem" : stdgo.GoString));
            __deferstack__.unshift(() -> stdgo._internal.time.Time.resetZoneinfoForTesting());
            {
                var _zoneinfo = stdgo._internal.time.Time.zoneinfoForTesting();
                if (("foo.zip" : stdgo.GoString) != (_zoneinfo.value)) {
                    _t.errorf(("zoneinfo does not match env variable: got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_zoneinfo.value), stdgo.Go.toInterface(("foo.zip" : stdgo.GoString)));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testBadLocationErrMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.time.Time.resetZoneinfoForTesting();
        var _loc = ("Asia/SomethingNotExist" : stdgo.GoString);
        var _want = stdgo._internal.errors.Errors.new_((("unknown time zone " : stdgo.GoString) + _loc?.__copy__() : stdgo.GoString)?.__copy__());
        var __tmp__ = stdgo._internal.time.Time.loadLocation(_loc?.__copy__()), __2:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err.error() != (_want.error())) {
            _t.errorf(("LoadLocation(%q) error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
    }
function testLoadLocationValidatesNames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.time.Time.resetZoneinfoForTesting();
        {};
        _t.setenv(("ZONEINFO" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        var _bad = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("/usr/foo/Foo" : stdgo.GoString), ("\\UNC\x0Coo" : stdgo.GoString), (".." : stdgo.GoString), ("a.." : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__10 => _v in _bad) {
            var __tmp__ = stdgo._internal.time.Time.loadLocation(_v?.__copy__()), __11:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.time.Time.errLocation))) {
                _t.errorf(("LoadLocation(%q) error = %v; want ErrLocation" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_err));
            };
        };
    }
function testVersion3(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = stdgo._internal.time.Time.disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            var __tmp__ = stdgo._internal.time.Time.loadLocation(("Asia/Jerusalem" : stdgo.GoString)), __2:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testFirstZone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = stdgo._internal.time.Time.disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            {};
            var _tests:stdgo.Slice<T__struct_31> = (new stdgo.Slice<T__struct_31>(2, 2, ...[({ _zone : ("PST8PDT" : stdgo.GoString), _unix : (-1633269601i64 : stdgo.GoInt64), _want1 : ("Sun, 31 Mar 1918 01:59:59 -0800 (PST)" : stdgo.GoString), _want2 : ("Sun, 31 Mar 1918 03:00:00 -0700 (PDT)" : stdgo.GoString) } : T__struct_31), ({ _zone : ("Pacific/Fakaofo" : stdgo.GoString), _unix : (1325242799i64 : stdgo.GoInt64), _want1 : ("Thu, 29 Dec 2011 23:59:59 -1100 (-11)" : stdgo.GoString), _want2 : ("Sat, 31 Dec 2011 00:00:00 +1300 (+13)" : stdgo.GoString) } : T__struct_31)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _zone : ("" : stdgo.GoString), _unix : (0 : stdgo.GoInt64), _want1 : ("" : stdgo.GoString), _want2 : ("" : stdgo.GoString) } : T__struct_31)])) : stdgo.Slice<T__struct_31>);
            for (__2 => _test in _tests) {
                var __tmp__ = stdgo._internal.time.Time.loadLocation(_test._zone?.__copy__()), _z:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _s = stdgo._internal.time.Time.unix(_test._unix, (0i64 : stdgo.GoInt64)).in_(_z).format(("Mon, 02 Jan 2006 15:04:05 -0700 (MST)" : stdgo.GoString))?.__copy__();
                if (_s != (_test._want1)) {
                    _t.errorf(("for %s %d got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._zone), stdgo.Go.toInterface(_test._unix), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._want1));
                };
                _s = stdgo._internal.time.Time.unix((_test._unix + (1i64 : stdgo.GoInt64) : stdgo.GoInt64), (0i64 : stdgo.GoInt64)).in_(_z).format(("Mon, 02 Jan 2006 15:04:05 -0700 (MST)" : stdgo.GoString))?.__copy__();
                if (_s != (_test._want2)) {
                    _t.errorf(("for %s %d got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._zone), stdgo.Go.toInterface(_test._unix), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._want2));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testLocationNames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if ((stdgo._internal.time.Time.local.string() : stdgo.GoString) != (("Local" : stdgo.GoString))) {
            _t.errorf(("invalid Local location name: got %q want \"Local\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time.local)));
        };
        if ((stdgo._internal.time.Time.utc.string() : stdgo.GoString) != (("UTC" : stdgo.GoString))) {
            _t.errorf(("invalid UTC location name: got %q want \"UTC\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time.utc)));
        };
    }
function testLoadLocationFromTZData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = stdgo._internal.time.Time.disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            {};
            var __tmp__ = stdgo._internal.time.Time.loadLocation(("Asia/Jerusalem" : stdgo.GoString)), _reference:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.time.Time.gorootZoneSource(stdgo._internal.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__()), _gorootSource:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.fatal(stdgo.Go.toInterface(("Failed to locate tzinfo source in GOROOT." : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.time.Time.loadTzinfo(("Asia/Jerusalem" : stdgo.GoString), _gorootSource?.__copy__()), _tzinfo:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.time.Time.loadLocationFromTZData(("Asia/Jerusalem" : stdgo.GoString), _tzinfo), _sample:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_reference)), stdgo.Go.toInterface(stdgo.Go.asInterface(_sample)))) {
                _t.errorf(("return values of LoadLocationFromTZData and LoadLocation don\'t match" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testEarlyLocation(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _undo = stdgo._internal.time.Time.disablePlatformSources();
            __deferstack__.unshift(() -> _undo());
            {};
            var __tmp__ = stdgo._internal.time.Time.loadLocation(("America/New_York" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _d = stdgo._internal.time.Time.date((1900 : stdgo.GoInt), (1 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__();
            var __tmp__ = _d.zone(), _tzName:stdgo.GoString = __tmp__._0, _tzOffset:stdgo.GoInt = __tmp__._1;
            {
                var _want = ("EST" : stdgo.GoString);
                if (_tzName != (_want)) {
                    _t.errorf(("Zone name == %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tzName), stdgo.Go.toInterface(_want));
                };
            };
            {
                var _want = (-18000 : stdgo.GoInt);
                if (_tzOffset != (_want)) {
                    _t.errorf(("Zone offset == %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tzOffset), stdgo.Go.toInterface(_want));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testMalformedTZData(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _issue29437 = stdgo.Go.str("TZif",
0,
"000000000000000",
0,
0,
0,
1,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"00")?.__copy__();
        var __tmp__ = stdgo._internal.time.Time.loadLocationFromTZData(("abc" : stdgo.GoString), (_issue29437 : stdgo.Slice<stdgo.GoByte>)), __2:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error, got none" : stdgo.GoString)));
        };
    }
function testLoadLocationFromTZDataSlim(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in _slimTests) {
            var __tmp__ = stdgo._internal.os.Os.readFile((("testdata/" : stdgo.GoString) + _test._fileName?.__copy__() : stdgo.GoString)?.__copy__()), _tzData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                continue;
            };
            var __tmp__ = stdgo._internal.time.Time.loadLocationFromTZData(_test._zoneName?.__copy__(), _tzData), _reference:stdgo.Ref<stdgo._internal.time.Time.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                continue;
            };
            var _d = _test._date(_reference)?.__copy__();
            var __tmp__ = _d.zone(), _tzName:stdgo.GoString = __tmp__._0, _tzOffset:stdgo.GoInt = __tmp__._1;
            if (_tzName != (_test._wantName)) {
                _t.errorf(("Zone name == %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_tzName), stdgo.Go.toInterface(_test._wantName));
            };
            if (_tzOffset != (_test._wantOffset)) {
                _t.errorf(("Zone offset == %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tzOffset), stdgo.Go.toInterface(_test._wantOffset));
            };
        };
    }
function testTzset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<T__struct_33>(9, 9, ...[({ _inStr : stdgo.Go.str()?.__copy__(), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (0i64 : stdgo.GoInt64), _name : stdgo.Go.str()?.__copy__(), _off : (0 : stdgo.GoInt), _start : (0i64 : stdgo.GoInt64), _end : (0i64 : stdgo.GoInt64), _isDST : false, _ok : false } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2159200800i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2152173599i64 : stdgo.GoInt64), _name : ("PST" : stdgo.GoString), _off : (-28800 : stdgo.GoInt), _start : (2145916800i64 : stdgo.GoInt64), _end : (2152173600i64 : stdgo.GoInt64), _isDST : false, _ok : true } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2152173600i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2152173601i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2172733199i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2172733200i64 : stdgo.GoInt64), _name : ("PST" : stdgo.GoString), _off : (-28800 : stdgo.GoInt), _start : (2172733200i64 : stdgo.GoInt64), _end : (2177452800i64 : stdgo.GoInt64), _isDST : false, _ok : true } : T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2172733201i64 : stdgo.GoInt64), _name : ("PST" : stdgo.GoString), _off : (-28800 : stdgo.GoInt), _start : (2172733200i64 : stdgo.GoInt64), _end : (2177452800i64 : stdgo.GoInt64), _isDST : false, _ok : true } : T__struct_33), ({ _inStr : ("KST-9" : stdgo.GoString), _inEnd : (592333200i64 : stdgo.GoInt64), _inSec : (1677246697i64 : stdgo.GoInt64), _name : ("KST" : stdgo.GoString), _off : (32400 : stdgo.GoInt), _start : (592333200i64 : stdgo.GoInt64), _end : (9223372036854775807i64 : stdgo.GoInt64), _isDST : false, _ok : true } : T__struct_33)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _inStr : ("" : stdgo.GoString), _inEnd : (0 : stdgo.GoInt64), _inSec : (0 : stdgo.GoInt64), _name : ("" : stdgo.GoString), _off : (0 : stdgo.GoInt), _start : (0 : stdgo.GoInt64), _end : (0 : stdgo.GoInt64), _isDST : false, _ok : false } : T__struct_33)])) : stdgo.Slice<T__struct_33>)) {
            var __tmp__ = stdgo._internal.time.Time.tzset(_test._inStr?.__copy__(), _test._inEnd, _test._inSec), _name:stdgo.GoString = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _start:stdgo.GoInt64 = __tmp__._2, _end:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
            if ((((((_name != (_test._name) || _off != (_test._off) : Bool) || _start != (_test._start) : Bool) || _end != (_test._end) : Bool) || _isDST != (_test._isDST) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzset(%q, %d, %d) = %q, %d, %d, %d, %t, %t, want %q, %d, %d, %d, %t, %t" : stdgo.GoString),
stdgo.Go.toInterface(_test._inStr),
stdgo.Go.toInterface(_test._inEnd),
stdgo.Go.toInterface(_test._inSec),
stdgo.Go.toInterface(_name),
stdgo.Go.toInterface(_off),
stdgo.Go.toInterface(_start),
stdgo.Go.toInterface(_end),
stdgo.Go.toInterface(_isDST),
stdgo.Go.toInterface(_ok),
stdgo.Go.toInterface(_test._name),
stdgo.Go.toInterface(_test._off),
stdgo.Go.toInterface(_test._start),
stdgo.Go.toInterface(_test._end),
stdgo.Go.toInterface(_test._isDST),
stdgo.Go.toInterface(_test._ok));
            };
        };
    }
function testTzsetName(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<T__struct_34>(6, 6, ...[({ _in : stdgo.Go.str()?.__copy__(), _name : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_34), ({ _in : ("X" : stdgo.GoString), _name : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_34), ({ _in : ("PST" : stdgo.GoString), _name : ("PST" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_34), ({ _in : ("PST8PDT" : stdgo.GoString), _name : ("PST" : stdgo.GoString), _out : ("8PDT" : stdgo.GoString), _ok : true } : T__struct_34), ({ _in : ("PST-08" : stdgo.GoString), _name : ("PST" : stdgo.GoString), _out : ("-08" : stdgo.GoString), _ok : true } : T__struct_34), ({ _in : ("<A+B>+08" : stdgo.GoString), _name : ("A+B" : stdgo.GoString), _out : ("+08" : stdgo.GoString), _ok : true } : T__struct_34)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _name : ("" : stdgo.GoString), _out : ("" : stdgo.GoString), _ok : false } : T__struct_34)])) : stdgo.Slice<T__struct_34>)) {
            var __tmp__ = stdgo._internal.time.Time.tzsetName(_test._in?.__copy__()), _name:stdgo.GoString = __tmp__._0, _out:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_name != (_test._name) || _out != (_test._out) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzsetName(%q) = %q, %q, %t, want %q, %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }
function testTzsetOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<T__struct_35>(9, 9, ...[({ _in : stdgo.Go.str()?.__copy__(), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_35), ({ _in : ("X" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_35), ({ _in : ("+" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_35), ({ _in : ("+08" : stdgo.GoString), _off : (28800 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_35), ({ _in : ("-01:02:03" : stdgo.GoString), _off : (-3723 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_35), ({ _in : ("01" : stdgo.GoString), _off : (3600 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_35), ({ _in : ("100" : stdgo.GoString), _off : (360000 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_35), ({ _in : ("1000" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_35), ({ _in : ("8PDT" : stdgo.GoString), _off : (28800 : stdgo.GoInt), _out : ("PDT" : stdgo.GoString), _ok : true } : T__struct_35)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString), _ok : false } : T__struct_35)])) : stdgo.Slice<T__struct_35>)) {
            var __tmp__ = stdgo._internal.time.Time.tzsetOffset(_test._in?.__copy__()), _off:stdgo.GoInt = __tmp__._0, _out:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_off != (_test._off) || _out != (_test._out) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzsetName(%q) = %d, %q, %t, want %d, %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._off), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }
function testTzsetRule(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<T__struct_36>(9, 9, ...[({ _in : stdgo.Go.str()?.__copy__(), _r : (new stdgo._internal.time.Time.Rule() : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_36), ({ _in : ("X" : stdgo.GoString), _r : (new stdgo._internal.time.Time.Rule() : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_36), ({ _in : ("J10" : stdgo.GoString), _r : ({ kind : (0 : stdgo._internal.time.Time.RuleKind), day : (10 : stdgo.GoInt), time : (7200 : stdgo.GoInt) } : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_36), ({ _in : ("20" : stdgo.GoString), _r : ({ kind : (1 : stdgo._internal.time.Time.RuleKind), day : (20 : stdgo.GoInt), time : (7200 : stdgo.GoInt) } : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_36), ({ _in : ("M1.2.3" : stdgo.GoString), _r : ({ kind : (2 : stdgo._internal.time.Time.RuleKind), mon : (1 : stdgo.GoInt), week : (2 : stdgo.GoInt), day : (3 : stdgo.GoInt), time : (7200 : stdgo.GoInt) } : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_36), ({ _in : ("30/03:00:00" : stdgo.GoString), _r : ({ kind : (1 : stdgo._internal.time.Time.RuleKind), day : (30 : stdgo.GoInt), time : (10800 : stdgo.GoInt) } : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_36), ({ _in : ("M4.5.6/03:00:00" : stdgo.GoString), _r : ({ kind : (2 : stdgo._internal.time.Time.RuleKind), mon : (4 : stdgo.GoInt), week : (5 : stdgo.GoInt), day : (6 : stdgo.GoInt), time : (10800 : stdgo.GoInt) } : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_36), ({ _in : ("M4.5.7/03:00:00" : stdgo.GoString), _r : (new stdgo._internal.time.Time.Rule() : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_36), ({ _in : ("M4.5.6/-04" : stdgo.GoString), _r : ({ kind : (2 : stdgo._internal.time.Time.RuleKind), mon : (4 : stdgo.GoInt), week : (5 : stdgo.GoInt), day : (6 : stdgo.GoInt), time : (-14400 : stdgo.GoInt) } : stdgo._internal.time.Time.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : T__struct_36)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _r : ({} : stdgo._internal.time.Time.Rule), _out : ("" : stdgo.GoString), _ok : false } : T__struct_36)])) : stdgo.Slice<T__struct_36>)) {
            var __tmp__ = stdgo._internal.time.Time.tzsetRule(_test._in?.__copy__()), _r:stdgo._internal.time.Time.Rule = __tmp__._0, _out:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((stdgo.Go.toInterface(_r) != stdgo.Go.toInterface(_test._r) || _out != (_test._out) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzsetName(%q) = %#v, %q, %t, want %#v, %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }
@:keep var _ = {
        try {
            if (stdgo._internal.time.Time.zoneinfoForTesting() != null) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.errorf(("zoneinfo initialized before first LoadLocation" : stdgo.GoString)));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
