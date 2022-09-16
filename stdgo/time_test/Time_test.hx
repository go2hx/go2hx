package stdgo.time_test;

import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.time.Time;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _nextStdChunkTests:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("(2006)-(01)-(02)T(15):(04):(05)(Z07:00)") : GoString),
	(Go.str("(2006)-(01)-(02) (002) (15):(04):(05)") : GoString), (Go.str("(2006)-(01) (002) (15):(04):(05)") : GoString),
	(Go.str("(2006)-(002) (15):(04):(05)") : GoString), (Go.str("(2006)(002)(01) (15):(04):(05)") : GoString),
	(Go.str("(2006)(002)(04) (15):(04):(05)") : GoString)) : Slice<GoString>);

private var _rfc3339Formats:Slice<stdgo.time_test.Time_test.TimeFormatTest> = (new Slice<stdgo.time_test.Time_test.TimeFormatTest>(0, 0,
	(new stdgo.time_test.Time_test.TimeFormatTest((date((2008 : GoInt), (9 : Month), (17 : GoInt), (20 : GoInt), (4 : GoInt), (26 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2008 : GoInt), (9 : Month), (17 : GoInt), (20 : GoInt), (4 : GoInt), (26 : GoInt), (0 : GoInt), utc).__copy__()),
		(Go.str("2008-09-17T20:04:26Z") : GoString)) : stdgo.time_test.Time_test.TimeFormatTest),
	(new stdgo.time_test.Time_test.TimeFormatTest((date((1994 : GoInt), (9 : Month), (17 : GoInt), (20 : GoInt), (4 : GoInt), (26 : GoInt), (0 : GoInt),
		fixedZone((Go.str("EST") : GoString),
			(-18000 : GoInt))) == null ? null : date((1994 : GoInt), (9 : Month), (17 : GoInt), (20 : GoInt), (4 : GoInt), (26 : GoInt), (0 : GoInt),
			fixedZone((Go.str("EST") : GoString), (-18000 : GoInt))).__copy__()),
		(Go.str("1994-09-17T20:04:26-05:00") : GoString)) : stdgo.time_test.Time_test.TimeFormatTest),
	(new stdgo.time_test.Time_test.TimeFormatTest((date((2000 : GoInt), (12 : Month), (26 : GoInt), (1 : GoInt), (15 : GoInt), (6 : GoInt), (0 : GoInt),
		fixedZone((Go.str("OTO") : GoString),
			(15600 : GoInt))) == null ? null : date((2000 : GoInt), (12 : Month), (26 : GoInt), (1 : GoInt), (15 : GoInt), (6 : GoInt), (0 : GoInt),
			fixedZone((Go.str("OTO") : GoString), (15600 : GoInt))).__copy__()),
		(Go.str("2000-12-26T01:15:06+04:20") : GoString)) : stdgo.time_test.Time_test.TimeFormatTest)) : Slice<stdgo.time_test.Time_test.TimeFormatTest>);

private var _formatTests:Slice<stdgo.time_test.Time_test.FormatTest> = (new Slice<stdgo.time_test.Time_test.FormatTest>(0, 0,
	(new stdgo.time_test.Time_test.FormatTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("Wed Feb  4 21:00:57 2009") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("UnixDate") : GoString), (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString),
		(Go.str("Wed Feb  4 21:00:57 PST 2009") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Wed Feb 04 21:00:57 -0800 2009") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RFC822") : GoString), (Go.str("02 Jan 06 15:04 MST") : GoString),
		(Go.str("04 Feb 09 21:00 PST") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RFC850") : GoString), (Go.str("Monday, 02-Jan-06 15:04:05 MST") : GoString),
		(Go.str("Wednesday, 04-Feb-09 21:00:57 PST") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RFC1123") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 MST") : GoString),
		(Go.str("Wed, 04 Feb 2009 21:00:57 PST") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RFC1123Z") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 -0700") : GoString),
		(Go.str("Wed, 04 Feb 2009 21:00:57 -0800") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RFC3339") : GoString), (Go.str("2006-01-02T15:04:05Z07:00") : GoString),
		(Go.str("2009-02-04T21:00:57-08:00") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("RFC3339Nano") : GoString), (Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString),
		(Go.str("2009-02-04T21:00:57.0123456-08:00") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Kitchen") : GoString), (Go.str("3:04PM") : GoString),
		(Go.str("9:00PM") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("am/pm") : GoString), (Go.str("3pm") : GoString),
		(Go.str("9pm") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("AM/PM") : GoString), (Go.str("3PM") : GoString),
		(Go.str("9PM") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("two-digit year") : GoString), (Go.str("06 01 02") : GoString),
		(Go.str("09 02 04") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Janet") : GoString), (Go.str("Hi Janet, the Month is January") : GoString),
		(Go.str("Hi Janet, the Month is February") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Stamp") : GoString), (Go.str("Jan _2 15:04:05") : GoString),
		(Go.str("Feb  4 21:00:57") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("StampMilli") : GoString), (Go.str("Jan _2 15:04:05.000") : GoString),
		(Go.str("Feb  4 21:00:57.012") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("StampMicro") : GoString), (Go.str("Jan _2 15:04:05.000000") : GoString),
		(Go.str("Feb  4 21:00:57.012345") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("StampNano") : GoString), (Go.str("Jan _2 15:04:05.000000000") : GoString),
		(Go.str("Feb  4 21:00:57.012345600") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("YearDay") : GoString), (Go.str("Jan  2 002 __2 2") : GoString),
		(Go.str("Feb  4 035  35 4") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Year") : GoString), (Go.str("2006 6 06 _6 __6 ___6") : GoString),
		(Go.str("2009 6 09 _6 __6 ___6") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Month") : GoString), (Go.str("Jan January 1 01 _1") : GoString),
		(Go.str("Feb February 2 02 _2") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("DayOfMonth") : GoString), (Go.str("2 02 _2 __2") : GoString),
		(Go.str("4 04  4  35") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("DayOfWeek") : GoString), (Go.str("Mon Monday") : GoString),
		(Go.str("Wed Wednesday") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Hour") : GoString), (Go.str("15 3 03 _3") : GoString),
		(Go.str("21 9 09 _9") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Minute") : GoString), (Go.str("4 04 _4") : GoString),
		(Go.str("0 00 _0") : GoString)) : stdgo.time_test.Time_test.FormatTest),
	(new stdgo.time_test.Time_test.FormatTest((Go.str("Second") : GoString), (Go.str("5 05 _5") : GoString),
		(Go.str("57 57 _57") : GoString)) : stdgo.time_test.Time_test.FormatTest)) : Slice<stdgo.time_test.Time_test.FormatTest>);

private var _goStringTests:Slice<T__struct_0> = (new Slice<T__struct_0>(0, 0,
	({_in: (date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
		utc) == null ? null : date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
			utc).__copy__()), _want: (Go.str("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.UTC)") : GoString)} : T__struct_0),
	({_in: (date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
		local) == null ? null : date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
			local).__copy__()), _want: (Go.str("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Local)") : GoString)} : T__struct_0),
	({_in: (date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
		fixedZone((Go.str("Europe/Berlin") : GoString),
			(10800 : GoInt))) == null ? null : date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
			fixedZone((Go.str("Europe/Berlin") : GoString),
				(10800 : GoInt))).__copy__()),
		_want: ("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Location(\"Europe/Berlin\"))" : GoString)} : T__struct_0),
	({_in: (date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
		fixedZone((Go.str("Non-ASCII character ⏰") : GoString),
			(10800 : GoInt))) == null ? null : date((2009 : GoInt), (2 : Month), (5 : GoInt), (5 : GoInt), (0 : GoInt), (57 : GoInt), (12345600 : GoInt),
			fixedZone((Go.str("Non-ASCII character ⏰") : GoString),
				(10800 : GoInt))).__copy__()),
		_want: ("time.Date(2009, time.February, 5, 5, 0, 57, 12345600, time.Location(\"Non-ASCII character \\xe2\\x8f\\xb0\"))" : GoString)} : T__struct_0)) : Slice<T__struct_0>);

private var _parseTests:Slice<stdgo.time_test.Time_test.ParseTest> = (new Slice<stdgo.time_test.Time_test.ParseTest>(0, 0,
	(new stdgo.time_test.Time_test.ParseTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57 2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("UnixDate") : GoString), (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57 PST 2010") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Thu Feb 04 21:00:57 -0800 2010") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC850") : GoString), (Go.str("Monday, 02-Jan-06 15:04:05 MST") : GoString),
		(Go.str("Thursday, 04-Feb-10 21:00:57 PST") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC1123") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 MST") : GoString),
		(Go.str("Thu, 04 Feb 2010 21:00:57 PST") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC1123") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 MST") : GoString),
		(Go.str("Thu, 04 Feb 2010 22:00:57 PDT") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC1123Z") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 -0700") : GoString),
		(Go.str("Thu, 04 Feb 2010 21:00:57 -0800") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC3339") : GoString), (Go.str("2006-01-02T15:04:05Z07:00") : GoString),
		(Go.str("2010-02-04T21:00:57-08:00") : GoString), true, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("custom: \"2006-01-02 15:04:05-07\"") : GoString), (Go.str("2006-01-02 15:04:05-07") : GoString),
		(Go.str("2010-02-04 21:00:57-08") : GoString), true, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.0 2010") : GoString), false, true, (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("UnixDate") : GoString), (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.01 PST 2010") : GoString), true, true, (1 : GoInt), (2 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Thu Feb 04 21:00:57.012 -0800 2010") : GoString), true, true, (1 : GoInt), (3 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC850") : GoString), (Go.str("Monday, 02-Jan-06 15:04:05 MST") : GoString),
		(Go.str("Thursday, 04-Feb-10 21:00:57.0123 PST") : GoString), true, true, (1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC1123") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 MST") : GoString),
		(Go.str("Thu, 04 Feb 2010 21:00:57.01234 PST") : GoString), true, true, (1 : GoInt), (5 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC1123Z") : GoString), (Go.str("Mon, 02 Jan 2006 15:04:05 -0700") : GoString),
		(Go.str("Thu, 04 Feb 2010 21:00:57.01234 -0800") : GoString), true, true, (1 : GoInt), (5 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RFC3339") : GoString), (Go.str("2006-01-02T15:04:05Z07:00") : GoString),
		(Go.str("2010-02-04T21:00:57.012345678-08:00") : GoString), true, false, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("custom: \"2006-01-02 15:04:05\"") : GoString), (Go.str("2006-01-02 15:04:05") : GoString),
		(Go.str("2010-02-04 21:00:57.0") : GoString), false, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("Thu Feb 4 21:00:57 2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("Thu      Feb     4     21:00:57     2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("THU FEB 4 21:00:57 2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("ANSIC") : GoString), (Go.str("Mon Jan _2 15:04:05 2006") : GoString),
		(Go.str("thu feb 4 21:00:57 2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("millisecond:: dot separator") : GoString), (Go.str("Mon Jan _2 15:04:05.000 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.012 2010") : GoString), false, true, (1 : GoInt), (3 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("microsecond:: dot separator") : GoString), (Go.str("Mon Jan _2 15:04:05.000000 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.012345 2010") : GoString), false, true, (1 : GoInt), (6 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("nanosecond:: dot separator") : GoString), (Go.str("Mon Jan _2 15:04:05.000000000 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.012345678 2010") : GoString), false, true, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("millisecond:: comma separator") : GoString), (Go.str("Mon Jan _2 15:04:05,000 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.012 2010") : GoString), false, true, (1 : GoInt), (3 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("microsecond:: comma separator") : GoString), (Go.str("Mon Jan _2 15:04:05,000000 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.012345 2010") : GoString), false, true, (1 : GoInt), (6 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("nanosecond:: comma separator") : GoString), (Go.str("Mon Jan _2 15:04:05,000000000 2006") : GoString),
		(Go.str("Thu Feb  4 21:00:57.012345678 2010") : GoString), false, true, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("zero1") : GoString), (Go.str("2006.01.02.15.04.05.0") : GoString),
		(Go.str("2010.02.04.21.00.57.0") : GoString), false, false, (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("zero2") : GoString), (Go.str("2006.01.02.15.04.05.00") : GoString),
		(Go.str("2010.02.04.21.00.57.01") : GoString), false, false, (1 : GoInt), (2 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("Janet") : GoString), (Go.str("Hi Janet, the Month is January: Jan _2 15:04:05 2006") : GoString),
		(Go.str("Hi Janet, the Month is February: Feb  4 21:00:57 2010") : GoString), false, true, (1 : GoInt),
		(0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("GMT-8") : GoString), (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString),
		(Go.str("Fri Feb  5 05:00:57 GMT-8 2010") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05.9999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57 -0800 PST") : GoString), true, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05.999999999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57 -0800 PST") : GoString), true, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05.9999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.0123 -0800 PST") : GoString), true, false, (1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05.999999999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.0123 -0800 PST") : GoString), true, false, (1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05.9999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.012345678 -0800 PST") : GoString), true, false, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05.999999999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.012345678 -0800 PST") : GoString), true, false, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05,9999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57 -0800 PST") : GoString), true, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05,999999999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57 -0800 PST") : GoString), true, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05,9999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.0123 -0800 PST") : GoString), true, false, (1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05,999999999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.0123 -0800 PST") : GoString), true, false, (1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05,9999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.012345678 -0800 PST") : GoString), true, false, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 15:04:05,999999999 -0700 MST") : GoString),
		(Go.str("2010-02-04 21:00:57.012345678 -0800 PST") : GoString), true, false, (1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("Jan _2 15:04:05.000000000") : GoString),
		(Go.str("Feb  4 21:00:57.012345678") : GoString), false, false, (-1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("Jan _2 15:04:05.999") : GoString),
		(Go.str("Feb  4 21:00:57.012300000") : GoString), false, false, (-1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("Jan _2 15:04:05.999") : GoString),
		(Go.str("Feb  4 21:00:57.012345678") : GoString), false, false, (-1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("Jan _2 15:04:05.999999999") : GoString),
		(Go.str("Feb  4 21:00:57.0123") : GoString), false, false, (-1 : GoInt), (4 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("Jan _2 15:04:05.999999999") : GoString),
		(Go.str("Feb  4 21:00:57.012345678") : GoString), false, false, (-1 : GoInt), (9 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01-02 002 15:04:05") : GoString),
		(Go.str("2010-02-04 035 21:00:57") : GoString), false, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-01 002 15:04:05") : GoString), (Go.str("2010-02 035 21:00:57") : GoString),
		false, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("2006-002 15:04:05") : GoString), (Go.str("2010-035 21:00:57") : GoString), false,
		false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("200600201 15:04:05") : GoString), (Go.str("201003502 21:00:57") : GoString),
		false, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str() : GoString), (Go.str("200600204 15:04:05") : GoString), (Go.str("201003504 21:00:57") : GoString),
		false, false, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest)) : Slice<stdgo.time_test.Time_test.ParseTest>);

/**
	// All parsed with ANSIC.
**/
private var _dayOutOfRangeTests:Slice<T__struct_1> = (new Slice<T__struct_1>(0, 0,
	({_date: (Go.str("Thu Jan 99 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Jan 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Jan 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Feb 28 21:00:57 2012") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Feb 29 21:00:57 2012") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Feb 29 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Mar 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Mar 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Apr 30 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Apr 31 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu May 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu May 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Jun 30 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Jun 31 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Jul 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Jul 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Aug 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Aug 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Sep 30 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Sep 31 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Oct 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Oct 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Nov 30 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Nov 31 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Dec 31 21:00:57 2010") : GoString), _ok: true} : T__struct_1),
	({_date: (Go.str("Thu Dec 32 21:00:57 2010") : GoString), _ok: false} : T__struct_1),
	({_date: (Go.str("Thu Dec 00 21:00:57 2010") : GoString), _ok: false} : T__struct_1)) : Slice<T__struct_1>);

private var _rubyTests:Slice<stdgo.time_test.Time_test.ParseTest> = (new Slice<stdgo.time_test.Time_test.ParseTest>(0, 0,
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Thu Feb 04 21:00:57 -0800 2010") : GoString), true, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Thu Feb 04 21:00:57 -0000 2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Thu Feb 04 21:00:57 +0000 2010") : GoString), false, true, (1 : GoInt), (0 : GoInt)) : stdgo.time_test.Time_test.ParseTest),
	(new stdgo.time_test.Time_test.ParseTest((Go.str("RubyDate") : GoString), (Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString),
		(Go.str("Thu Feb 04 21:00:57 +1130 2010") : GoString), false, true, (1 : GoInt),
		(0 : GoInt)) : stdgo.time_test.Time_test.ParseTest)) : Slice<stdgo.time_test.Time_test.ParseTest>);

private var _parseTimeZoneTests:Slice<stdgo.time_test.Time_test.ParseTimeZoneTest> = (new Slice<stdgo.time_test.Time_test.ParseTimeZoneTest>(0, 0,
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("gmt hi there") : GoString), (0 : GoInt), false) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT hi there") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT+12 hi there") : GoString), (6 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT+00 hi there") : GoString), (6 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT+") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT+3") : GoString), (5 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT+a") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT+3a") : GoString), (5 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT-5 hi there") : GoString), (5 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("GMT-51 hi there") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("ChST hi there") : GoString), (4 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("MeST hi there") : GoString), (4 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("MSDx") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("MSDY") : GoString), (0 : GoInt), false) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("ESAST hi") : GoString), (5 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("ESASTT hi") : GoString), (0 : GoInt), false) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("ESATY hi") : GoString), (0 : GoInt), false) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("WITA hi") : GoString), (4 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("+03 hi") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("-04 hi") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("+00") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("-11") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("-12") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("-23") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("-24") : GoString), (0 : GoInt), false) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("+13") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("+14") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("+23") : GoString), (3 : GoInt), true) : stdgo.time_test.Time_test.ParseTimeZoneTest),
	(new stdgo.time_test.Time_test.ParseTimeZoneTest((Go.str("+24") : GoString), (0 : GoInt),
		false) : stdgo.time_test.Time_test.ParseTimeZoneTest)) : Slice<stdgo.time_test.Time_test.ParseTimeZoneTest>);

private var _parseErrorTests:Slice<stdgo.time_test.Time_test.ParseErrorTest> = (new Slice<stdgo.time_test.Time_test.ParseErrorTest>(0, 0,
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05 2006") : GoString), (Go.str("Feb  4 21:00:60 2010") : GoString),
		(Go.str("cannot parse") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05 2006") : GoString), (Go.str("Thu Feb  4 21:00:57 @2010") : GoString),
		(Go.str("cannot parse") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05 2006") : GoString), (Go.str("Thu Feb  4 21:00:60 2010") : GoString),
		(Go.str("second out of range") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05 2006") : GoString), (Go.str("Thu Feb  4 21:61:57 2010") : GoString),
		(Go.str("minute out of range") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05 2006") : GoString), (Go.str("Thu Feb  4 24:00:60 2010") : GoString),
		(Go.str("hour out of range") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05.000 2006") : GoString), (Go.str("Thu Feb  4 23:00:59x01 2010") : GoString),
		(Go.str("cannot parse") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05.000 2006") : GoString), (Go.str("Thu Feb  4 23:00:59.xxx 2010") : GoString),
		(Go.str("cannot parse") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Mon Jan _2 15:04:05.000 2006") : GoString), (Go.str("Thu Feb  4 23:00:59.-123 2010") : GoString),
		(Go.str("fractional second out of range") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Jan _2 15:04:05.000000000") : GoString), (Go.str("Dec  7 11:22:01.000000") : GoString),
		("cannot parse \".000000\" as \".000000000\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Jan _2 15:04:05.000000000") : GoString), (Go.str("Dec  7 11:22:01.0000000000") : GoString),
		("extra text: \"0\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04:05Z07:00") : GoString),
		("parsing time \"2006-01-02T15:04:05Z07:00\": extra text: \"07:00\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04_abc") : GoString),
		("parsing time \"2006-01-02T15:04_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \":\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04:05_abc") : GoString),
		("parsing time \"2006-01-02T15:04:05_abc\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"_abc\" as \"Z07:00\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04:05Z_abc") : GoString),
		("parsing time \"2006-01-02T15:04:05Z_abc\": extra text: \"_abc\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("2006-01-02T15:04:05Z07:00") : GoString),
		(Go.str("2010-02-04T21:00:67.012345678-08:00") : GoString), (Go.str("second out of range") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("_2 Jan 06 15:04 MST") : GoString), (Go.str("4 --- 00 00:00 GMT") : GoString),
		(Go.str("cannot parse") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("_2 January 06 15:04 MST") : GoString), (Go.str("4 --- 00 00:00 GMT") : GoString),
		(Go.str("cannot parse") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Jan _2 002 2006") : GoString), (Go.str("Feb  4 034 2006") : GoString),
		(Go.str("day-of-year does not match day") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("Jan _2 002 2006") : GoString), (Go.str("Feb  4 004 2006") : GoString),
		(Go.str("day-of-year does not match month") : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest(("\"2006-01-02T15:04:05Z07:00\"" : GoString), (Go.str("0") : GoString),
		("parsing time \"0\" as \"\\\"2006-01-02T15:04:05Z07:00\\\"\": cannot parse \"0\" as \"\\\"\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest),
	(new stdgo.time_test.Time_test.ParseErrorTest((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("\"") : GoString),
		("parsing time \"\\\"\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"\\\"\" as \"2006\"" : GoString)) : stdgo.time_test.Time_test.ParseErrorTest)) : Slice<stdgo.time_test.Time_test.ParseErrorTest>);

private var _secondsTimeZoneOffsetTests:Slice<stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest> = (new Slice<stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest>(0,
	0,
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05-070000") : GoString),
		(Go.str("1871-01-01T05:33:02-003408") : GoString), (-2048 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05-07:00:00") : GoString),
		(Go.str("1871-01-01T05:33:02-00:34:08") : GoString), (-2048 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05-070000") : GoString),
		(Go.str("1871-01-01T05:33:02+003408") : GoString), (2048 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05-07:00:00") : GoString),
		(Go.str("1871-01-01T05:33:02+00:34:08") : GoString), (2048 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05Z070000") : GoString),
		(Go.str("1871-01-01T05:33:02-003408") : GoString), (-2048 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05Z07:00:00") : GoString),
		(Go.str("1871-01-01T05:33:02+00:34:08") : GoString), (2048 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05-07") : GoString), (Go.str("1871-01-01T05:33:02+01") : GoString),
		(3600 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05-07") : GoString), (Go.str("1871-01-01T05:33:02-02") : GoString),
		(-7200 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest),
	(new stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest((Go.str("2006-01-02T15:04:05Z07") : GoString), (Go.str("1871-01-01T05:33:02-02") : GoString),
		(-7200 : GoInt)) : stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest)) : Slice<stdgo.time_test.Time_test.SecondsTimeZoneOffsetTest>);

private var _monthOutOfRangeTests:Slice<T__struct_3> = (new Slice<T__struct_3>(0, 0, ({_value: (Go.str("00-01") : GoString), _ok: false} : T__struct_3),
	({_value: (Go.str("13-01") : GoString), _ok: false} : T__struct_3),
	({_value: (Go.str("01-01") : GoString), _ok: true} : T__struct_3)) : Slice<T__struct_3>);

private var _monotonicStringTests:Slice<T__struct_6> = (new Slice<T__struct_6>(0, 0,
	({_mono: (0 : GoInt64), _want: (Go.str("m=+0.000000000") : GoString)} : T__struct_6),
	({_mono: (123456789 : GoInt64), _want: (Go.str("m=+0.123456789") : GoString)} : T__struct_6),
	({_mono: (-123456789 : GoInt64), _want: (Go.str("m=-0.123456789") : GoString)} : T__struct_6),
	({_mono: ("123456789000" : GoInt64), _want: (Go.str("m=+123.456789000") : GoString)} : T__struct_6),
	({_mono: ("-123456789000" : GoInt64), _want: (Go.str("m=-123.456789000") : GoString)} : T__struct_6),
	({_mono: (9e+18 : GoInt64), _want: (Go.str("m=+9000000000.000000000") : GoString)} : T__struct_6),
	({_mono: ("-9000000000000000000" : GoInt64), _want: (Go.str("m=-9000000000.000000000") : GoString)} : T__struct_6),
	({_mono: ("-9223372036854775808" : GoInt64), _want: (Go.str("m=-9223372036.854775808") : GoString)} : T__struct_6)) : Slice<T__struct_6>);

private var _slots:Slice<GoInt> = (new Slice<GoInt>(0, 0, (5 : GoInt), (3 : GoInt), (6 : GoInt), (6 : GoInt), (6 : GoInt), (1 : GoInt), (1 : GoInt),
	(2 : GoInt), (7 : GoInt), (9 : GoInt), (4 : GoInt), (8 : GoInt), (0 : GoInt)) : Slice<GoInt>);

private var _utctests:Slice<stdgo.time_test.Time_test.TimeTest> = (new Slice<stdgo.time_test.Time_test.TimeTest>(0, 0,
	(new stdgo.time_test.Time_test.TimeTest((0 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1970 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(4 : Weekday), (0 : GoInt), (Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((1221681866 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2008 : GoInt), (9 : Month), (17 : GoInt), (20 : GoInt), (4 : GoInt), (26 : GoInt), (0 : GoInt),
			(3 : Weekday), (0 : GoInt), (Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((-1221681866 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1931 : GoInt), (4 : Month), (16 : GoInt), (3 : GoInt), (55 : GoInt), (34 : GoInt), (0 : GoInt),
			(4 : Weekday), (0 : GoInt), (Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("-11644473600" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1601 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(1 : Weekday), (0 : GoInt), (Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((599529660 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1988 : GoInt), (12 : Month), (31 : GoInt), (0 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt),
			(6 : Weekday), (0 : GoInt), (Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((978220860 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2000 : GoInt), (12 : Month), (31 : GoInt), (0 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : Weekday), (0 : GoInt),
			(Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest)) : Slice<stdgo.time_test.Time_test.TimeTest>);

private var _nanoutctests:Slice<stdgo.time_test.Time_test.TimeTest> = (new Slice<stdgo.time_test.Time_test.TimeTest>(0, 0,
	(new stdgo.time_test.Time_test.TimeTest((0 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1970 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (1e+08 : GoInt),
			(4 : Weekday), (0 : GoInt), (Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((1221681866 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2008 : GoInt), (9 : Month), (17 : GoInt), (20 : GoInt), (4 : GoInt), (26 : GoInt), (2e+08 : GoInt),
			(3 : Weekday), (0 : GoInt),
			(Go.str("UTC") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest)) : Slice<stdgo.time_test.Time_test.TimeTest>);

private var _localtests:Slice<stdgo.time_test.Time_test.TimeTest> = (new Slice<stdgo.time_test.Time_test.TimeTest>(0, 0,
	(new stdgo.time_test.Time_test.TimeTest((0 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1969 : GoInt), (12 : Month), (31 : GoInt), (16 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(3 : Weekday), (-28800 : GoInt), (Go.str("PST") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((1221681866 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2008 : GoInt), (9 : Month), (17 : GoInt), (13 : GoInt), (4 : GoInt), (26 : GoInt), (0 : GoInt),
			(3 : Weekday), (-25200 : GoInt), (Go.str("PDT") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2159200800" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (6 : Month), (3 : GoInt), (11 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(4 : Weekday), (-25200 : GoInt), (Go.str("PDT") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2152173599" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (3 : Month), (14 : GoInt), (1 : GoInt), (59 : GoInt), (59 : GoInt), (0 : GoInt),
			(0 : Weekday), (-28800 : GoInt), (Go.str("PST") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2152173600" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (3 : Month), (14 : GoInt), (3 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : Weekday), (-25200 : GoInt), (Go.str("PDT") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2152173601" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (3 : Month), (14 : GoInt), (3 : GoInt), (0 : GoInt), (1 : GoInt), (0 : GoInt),
			(0 : Weekday), (-25200 : GoInt), (Go.str("PDT") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2172733199" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (11 : Month), (7 : GoInt), (1 : GoInt), (59 : GoInt), (59 : GoInt), (0 : GoInt),
			(0 : Weekday), (-25200 : GoInt), (Go.str("PDT") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2172733200" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (11 : Month), (7 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : Weekday), (-28800 : GoInt), (Go.str("PST") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest(("2172733201" : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2038 : GoInt), (11 : Month), (7 : GoInt), (1 : GoInt), (0 : GoInt), (1 : GoInt), (0 : GoInt),
			(0 : Weekday), (-28800 : GoInt),
			(Go.str("PST") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest)) : Slice<stdgo.time_test.Time_test.TimeTest>);

private var _nanolocaltests:Slice<stdgo.time_test.Time_test.TimeTest> = (new Slice<stdgo.time_test.Time_test.TimeTest>(0, 0,
	(new stdgo.time_test.Time_test.TimeTest((0 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((1969 : GoInt), (12 : Month), (31 : GoInt), (16 : GoInt), (0 : GoInt), (0 : GoInt), (1e+08 : GoInt),
			(3 : Weekday), (-28800 : GoInt), (Go.str("PST") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest),
	(new stdgo.time_test.Time_test.TimeTest((1221681866 : GoInt64),
		(new stdgo.time_test.Time_test.T_parsedTime((2008 : GoInt), (9 : Month), (17 : GoInt), (13 : GoInt), (4 : GoInt), (26 : GoInt), (3e+08 : GoInt),
			(3 : Weekday), (-25200 : GoInt),
			(Go.str("PDT") : GoString)) : stdgo.time_test.Time_test.T_parsedTime)) : stdgo.time_test.Time_test.TimeTest)) : Slice<stdgo.time_test.Time_test.TimeTest>);

private var _truncateRoundTests:Slice<T__struct_9> = (new Slice<T__struct_9>(0, 0,
	({_t: (date((-1 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (30 : GoInt), (5e+08 : GoInt),
		utc) == null ? null : date((-1 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (30 : GoInt), (5e+08 : GoInt),
			utc).__copy__()), _d: (3 : Duration)} : T__struct_9),
	({_t: (date((-1 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (31 : GoInt), (5e+08 : GoInt),
		utc) == null ? null : date((-1 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (31 : GoInt), (5e+08 : GoInt),
			utc).__copy__()), _d: (3 : Duration)} : T__struct_9),
	({_t: (date((2012 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (30 : GoInt), (5e+08 : GoInt),
		utc) == null ? null : date((2012 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (30 : GoInt), (5e+08 : GoInt),
			utc).__copy__()), _d: (1000000000 : Duration)} : T__struct_9),
	({_t: (date((2012 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (31 : GoInt), (5e+08 : GoInt),
		utc) == null ? null : date((2012 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (15 : GoInt), (31 : GoInt), (5e+08 : GoInt),
			utc).__copy__()), _d: (1000000000 : Duration)} : T__struct_9),
	({_t: (unix(("-19012425939" : GoInt64),
		(649146258 : GoInt64)) == null ? null : unix(("-19012425939" : GoInt64),
			(649146258 : GoInt64)).__copy__()), _d: ("7435029458905025217" : Duration)} : T__struct_9)) : Slice<T__struct_9>);

private var _isoWeekTests:Slice<stdgo.time_test.Time_test.ISOWeekTest> = (new Slice<stdgo.time_test.Time_test.ISOWeekTest>(0, 0,
	(new stdgo.time_test.Time_test.ISOWeekTest((1981 : GoInt), (1 : GoInt), (1 : GoInt), (1981 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1982 : GoInt), (1 : GoInt), (1 : GoInt), (1981 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1983 : GoInt), (1 : GoInt), (1 : GoInt), (1982 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1984 : GoInt), (1 : GoInt), (1 : GoInt), (1983 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1985 : GoInt), (1 : GoInt), (1 : GoInt), (1985 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1986 : GoInt), (1 : GoInt), (1 : GoInt), (1986 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1987 : GoInt), (1 : GoInt), (1 : GoInt), (1987 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1988 : GoInt), (1 : GoInt), (1 : GoInt), (1987 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1989 : GoInt), (1 : GoInt), (1 : GoInt), (1988 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1990 : GoInt), (1 : GoInt), (1 : GoInt), (1990 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1991 : GoInt), (1 : GoInt), (1 : GoInt), (1991 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1992 : GoInt), (1 : GoInt), (1 : GoInt), (1992 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1993 : GoInt), (1 : GoInt), (1 : GoInt), (1992 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1994 : GoInt), (1 : GoInt), (1 : GoInt), (1993 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1995 : GoInt), (1 : GoInt), (2 : GoInt), (1995 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1996 : GoInt), (1 : GoInt), (1 : GoInt), (1996 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1996 : GoInt), (1 : GoInt), (7 : GoInt), (1996 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1996 : GoInt), (1 : GoInt), (8 : GoInt), (1996 : GoInt), (2 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1997 : GoInt), (1 : GoInt), (1 : GoInt), (1997 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1998 : GoInt), (1 : GoInt), (1 : GoInt), (1998 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1999 : GoInt), (1 : GoInt), (1 : GoInt), (1998 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2000 : GoInt), (1 : GoInt), (1 : GoInt), (1999 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2001 : GoInt), (1 : GoInt), (1 : GoInt), (2001 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2002 : GoInt), (1 : GoInt), (1 : GoInt), (2002 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2003 : GoInt), (1 : GoInt), (1 : GoInt), (2003 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2004 : GoInt), (1 : GoInt), (1 : GoInt), (2004 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2005 : GoInt), (1 : GoInt), (1 : GoInt), (2004 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2006 : GoInt), (1 : GoInt), (1 : GoInt), (2005 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2007 : GoInt), (1 : GoInt), (1 : GoInt), (2007 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2008 : GoInt), (1 : GoInt), (1 : GoInt), (2008 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2009 : GoInt), (1 : GoInt), (1 : GoInt), (2009 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2010 : GoInt), (1 : GoInt), (1 : GoInt), (2009 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2010 : GoInt), (1 : GoInt), (1 : GoInt), (2009 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (1 : GoInt), (2010 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (2 : GoInt), (2010 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (3 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (4 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (5 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (6 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (7 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (8 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (9 : GoInt), (2011 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (10 : GoInt), (2011 : GoInt),
		(2 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (1 : GoInt), (11 : GoInt), (2011 : GoInt),
		(2 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (6 : GoInt), (12 : GoInt), (2011 : GoInt),
		(23 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (6 : GoInt), (13 : GoInt), (2011 : GoInt),
		(24 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (25 : GoInt), (2011 : GoInt),
		(51 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (26 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (27 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (28 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (29 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (30 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2011 : GoInt), (12 : GoInt), (31 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((1995 : GoInt), (1 : GoInt), (1 : GoInt), (1994 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (1 : GoInt), (1 : GoInt), (2011 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (1 : GoInt), (2 : GoInt), (2012 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (1 : GoInt), (8 : GoInt), (2012 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (1 : GoInt), (9 : GoInt), (2012 : GoInt), (2 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (12 : GoInt), (23 : GoInt), (2012 : GoInt),
		(51 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (12 : GoInt), (24 : GoInt), (2012 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (12 : GoInt), (30 : GoInt), (2012 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2012 : GoInt), (12 : GoInt), (31 : GoInt), (2013 : GoInt),
		(1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (1 : GoInt), (1 : GoInt), (2013 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (1 : GoInt), (6 : GoInt), (2013 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (1 : GoInt), (7 : GoInt), (2013 : GoInt), (2 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (12 : GoInt), (22 : GoInt), (2013 : GoInt),
		(51 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (12 : GoInt), (23 : GoInt), (2013 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (12 : GoInt), (29 : GoInt), (2013 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2013 : GoInt), (12 : GoInt), (30 : GoInt), (2014 : GoInt),
		(1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2014 : GoInt), (1 : GoInt), (1 : GoInt), (2014 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2014 : GoInt), (1 : GoInt), (5 : GoInt), (2014 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2014 : GoInt), (1 : GoInt), (6 : GoInt), (2014 : GoInt), (2 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2015 : GoInt), (1 : GoInt), (1 : GoInt), (2015 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2016 : GoInt), (1 : GoInt), (1 : GoInt), (2015 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2017 : GoInt), (1 : GoInt), (1 : GoInt), (2016 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2018 : GoInt), (1 : GoInt), (1 : GoInt), (2018 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2019 : GoInt), (1 : GoInt), (1 : GoInt), (2019 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2020 : GoInt), (1 : GoInt), (1 : GoInt), (2020 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2021 : GoInt), (1 : GoInt), (1 : GoInt), (2020 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2022 : GoInt), (1 : GoInt), (1 : GoInt), (2021 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2023 : GoInt), (1 : GoInt), (1 : GoInt), (2022 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2024 : GoInt), (1 : GoInt), (1 : GoInt), (2024 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2025 : GoInt), (1 : GoInt), (1 : GoInt), (2025 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2026 : GoInt), (1 : GoInt), (1 : GoInt), (2026 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2027 : GoInt), (1 : GoInt), (1 : GoInt), (2026 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2028 : GoInt), (1 : GoInt), (1 : GoInt), (2027 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2029 : GoInt), (1 : GoInt), (1 : GoInt), (2029 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2030 : GoInt), (1 : GoInt), (1 : GoInt), (2030 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2031 : GoInt), (1 : GoInt), (1 : GoInt), (2031 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2032 : GoInt), (1 : GoInt), (1 : GoInt), (2032 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2033 : GoInt), (1 : GoInt), (1 : GoInt), (2032 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2034 : GoInt), (1 : GoInt), (1 : GoInt), (2033 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2035 : GoInt), (1 : GoInt), (1 : GoInt), (2035 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2036 : GoInt), (1 : GoInt), (1 : GoInt), (2036 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2037 : GoInt), (1 : GoInt), (1 : GoInt), (2037 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2038 : GoInt), (1 : GoInt), (1 : GoInt), (2037 : GoInt),
		(53 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2039 : GoInt), (1 : GoInt), (1 : GoInt), (2038 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest),
	(new stdgo.time_test.Time_test.ISOWeekTest((2040 : GoInt), (1 : GoInt), (1 : GoInt), (2039 : GoInt),
		(52 : GoInt)) : stdgo.time_test.Time_test.ISOWeekTest)) : Slice<stdgo.time_test.Time_test.ISOWeekTest>);

/**
	// Test YearDay in several different scenarios
	// and corner cases
**/
private var _yearDayTests:Slice<stdgo.time_test.Time_test.YearDayTest> = (new Slice<stdgo.time_test.Time_test.YearDayTest>(0, 0,
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (1 : GoInt), (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (1 : GoInt), (15 : GoInt), (15 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (2 : GoInt), (1 : GoInt), (32 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (2 : GoInt), (15 : GoInt), (46 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (3 : GoInt), (1 : GoInt), (60 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (3 : GoInt), (15 : GoInt), (74 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (4 : GoInt), (1 : GoInt), (91 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2007 : GoInt), (12 : GoInt), (31 : GoInt), (365 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (1 : GoInt), (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (1 : GoInt), (15 : GoInt), (15 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (2 : GoInt), (1 : GoInt), (32 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (2 : GoInt), (15 : GoInt), (46 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (3 : GoInt), (1 : GoInt), (61 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (3 : GoInt), (15 : GoInt), (75 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (4 : GoInt), (1 : GoInt), (92 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((2008 : GoInt), (12 : GoInt), (31 : GoInt), (366 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (1 : GoInt), (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (1 : GoInt), (15 : GoInt), (15 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (2 : GoInt), (1 : GoInt), (32 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (2 : GoInt), (15 : GoInt), (46 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (3 : GoInt), (1 : GoInt), (60 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (3 : GoInt), (15 : GoInt), (74 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (4 : GoInt), (1 : GoInt), (91 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1900 : GoInt), (12 : GoInt), (31 : GoInt), (365 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (1 : GoInt), (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (1 : GoInt), (15 : GoInt), (15 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (2 : GoInt), (1 : GoInt), (32 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (2 : GoInt), (15 : GoInt), (46 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (3 : GoInt), (1 : GoInt), (60 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (3 : GoInt), (15 : GoInt), (74 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (4 : GoInt), (1 : GoInt), (91 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1 : GoInt), (12 : GoInt), (31 : GoInt), (365 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (1 : GoInt), (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (1 : GoInt), (15 : GoInt), (15 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (2 : GoInt), (1 : GoInt), (32 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (2 : GoInt), (15 : GoInt), (46 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (3 : GoInt), (1 : GoInt), (60 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (3 : GoInt), (15 : GoInt), (74 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (4 : GoInt), (1 : GoInt), (91 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-1 : GoInt), (12 : GoInt), (31 : GoInt), (365 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (1 : GoInt), (1 : GoInt), (1 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (1 : GoInt), (15 : GoInt), (15 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (2 : GoInt), (1 : GoInt), (32 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (2 : GoInt), (15 : GoInt), (46 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (3 : GoInt), (1 : GoInt), (61 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (3 : GoInt), (15 : GoInt), (75 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (4 : GoInt), (1 : GoInt), (92 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((-400 : GoInt), (12 : GoInt), (31 : GoInt), (366 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1582 : GoInt), (10 : GoInt), (4 : GoInt), (277 : GoInt)) : stdgo.time_test.Time_test.YearDayTest),
	(new stdgo.time_test.Time_test.YearDayTest((1582 : GoInt), (10 : GoInt), (15 : GoInt),
		(288 : GoInt)) : stdgo.time_test.Time_test.YearDayTest)) : Slice<stdgo.time_test.Time_test.YearDayTest>);

/**
	// Check to see if YearDay is location sensitive
**/
private var _yearDayLocations:Slice<Ref<Location>> = (new Slice<Ref<Location>>(0, 0, fixedZone((Go.str("UTC-8") : GoString), (-28800 : GoInt)),
	fixedZone((Go.str("UTC-4") : GoString), (-14400 : GoInt)), utc, fixedZone((Go.str("UTC+4") : GoString), (14400 : GoInt)),
	fixedZone((Go.str("UTC+8") : GoString), (28800 : GoInt))) : Slice<Ref<Location>>);

private var _durationTests:Slice<T__struct_10> = (new Slice<T__struct_10>(0, 0, ({_str: (Go.str("0s") : GoString), _d: (0 : Duration)} : T__struct_10),
	({_str: (Go.str("1ns") : GoString), _d: (1 : Duration)} : T__struct_10), ({_str: (Go.str("1.1µs") : GoString), _d: (1100 : Duration)} : T__struct_10),
	({_str: (Go.str("2.2ms") : GoString), _d: (2200000 : Duration)} : T__struct_10),
	({_str: (Go.str("3.3s") : GoString), _d: ("3300000000" : Duration)} : T__struct_10),
	({_str: (Go.str("4m5s") : GoString), _d: ("245000000000" : Duration)} : T__struct_10),
	({_str: (Go.str("4m5.001s") : GoString), _d: ("245001000000" : Duration)} : T__struct_10),
	({_str: (Go.str("5h6m7.001s") : GoString), _d: ("18367001000000" : Duration)} : T__struct_10),
	({_str: (Go.str("8m0.000000001s") : GoString), _d: ("480000000001" : Duration)} : T__struct_10),
	({_str: (Go.str("2562047h47m16.854775807s") : GoString), _d: ("9223372036854775807" : Duration)} : T__struct_10),
	({_str: (Go.str("-2562047h47m16.854775808s") : GoString), _d: ("-9223372036854775808" : Duration)} : T__struct_10)) : Slice<T__struct_10>);

private var _dateTests:Slice<T__struct_11> = (new Slice<T__struct_11>(0, 0, ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (6 : GoInt),
	_hour: (1 : GoInt),
	_min: (0 : GoInt),
	_sec: (0 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1320566400 : GoInt64)
} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (6 : GoInt),
	_hour: (1 : GoInt),
	_min: (59 : GoInt),
	_sec: (59 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1320569999 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (6 : GoInt),
	_hour: (2 : GoInt),
	_min: (0 : GoInt),
	_sec: (0 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1320573600 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (3 : GoInt),
	_day: (13 : GoInt),
	_hour: (1 : GoInt),
	_min: (0 : GoInt),
	_sec: (0 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1300006800 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (3 : GoInt),
	_day: (13 : GoInt),
	_hour: (1 : GoInt),
	_min: (59 : GoInt),
	_sec: (59 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1300010399 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (3 : GoInt),
	_day: (13 : GoInt),
	_hour: (3 : GoInt),
	_min: (0 : GoInt),
	_sec: (0 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1300010400 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (3 : GoInt),
	_day: (13 : GoInt),
	_hour: (2 : GoInt),
	_min: (30 : GoInt),
	_sec: (0 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1300008600 : GoInt64)
	} : T__struct_11), ({
	_year: (2012 : GoInt),
	_month: (12 : GoInt),
	_day: (24 : GoInt),
	_hour: (0 : GoInt),
	_min: (0 : GoInt),
	_sec: (0 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1356336000 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (18 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (19 : GoInt),
	_hour: (-17 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (17 : GoInt),
	_hour: (31 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (18 : GoInt),
	_hour: (6 : GoInt),
	_min: (116 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (10 : GoInt),
	_day: (49 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (18 : GoInt),
	_hour: (7 : GoInt),
	_min: (55 : GoInt),
	_sec: (95 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (11 : GoInt),
	_day: (18 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (34 : GoInt),
	_nsec: (1e+09 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2011 : GoInt),
	_month: (12 : GoInt),
	_day: (-12 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2012 : GoInt),
	_month: (1 : GoInt),
	_day: (-43 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2012 : GoInt),
	_month: ((-1 : Month) : GoInt),
	_day: (18 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11), ({
	_year: (2010 : GoInt),
	_month: ((23 : Month) : GoInt),
	_day: (18 : GoInt),
	_hour: (7 : GoInt),
	_min: (56 : GoInt),
	_sec: (35 : GoInt),
	_nsec: (0 : GoInt),
	_z: local,
	_unix: (1321631795 : GoInt64)
	} : T__struct_11)) : Slice<T__struct_11>);

/**
	// Several ways of getting from
	// Fri Nov 18 7:56:35 PST 2011
	// to
	// Thu Mar 19 7:56:35 PST 2016
**/
private var _addDateTests:Slice<T__struct_12> = (new Slice<T__struct_12>(0, 0,
	({_years: (4 : GoInt), _months: (4 : GoInt), _days: (1 : GoInt)} : T__struct_12),
	({_years: (3 : GoInt), _months: (16 : GoInt), _days: (1 : GoInt)} : T__struct_12),
	({_years: (3 : GoInt), _months: (15 : GoInt), _days: (30 : GoInt)} : T__struct_12),
	({_years: (5 : GoInt), _months: (-6 : GoInt), _days: (-60 : GoInt)} : T__struct_12)) : Slice<T__struct_12>);

private var _daysInTests:Slice<T__struct_13> = (new Slice<T__struct_13>(0, 0,
	({_year: (2011 : GoInt), _month: (1 : GoInt), _di: (31 : GoInt)} : T__struct_13),
	({_year: (2011 : GoInt), _month: (2 : GoInt), _di: (28 : GoInt)} : T__struct_13),
	({_year: (2012 : GoInt), _month: (2 : GoInt), _di: (29 : GoInt)} : T__struct_13),
	({_year: (2011 : GoInt), _month: (6 : GoInt), _di: (30 : GoInt)} : T__struct_13),
	({_year: (2011 : GoInt), _month: (12 : GoInt), _di: (31 : GoInt)} : T__struct_13)) : Slice<T__struct_13>);

private var _gobTests:Slice<Time> = (new Slice<Time>(0, 0,
	(date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
		utc) == null ? null : date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), utc).__copy__()),
	(date((7 : GoInt), (8 : Month), (9 : GoInt), (10 : GoInt), (11 : GoInt), (12 : GoInt), (13 : GoInt),
		fixedZone((Go.str() : GoString),
			(0 : GoInt))) == null ? null : date((7 : GoInt), (8 : Month), (9 : GoInt), (10 : GoInt), (11 : GoInt), (12 : GoInt), (13 : GoInt),
			fixedZone((Go.str() : GoString), (0 : GoInt))).__copy__()),
	(unix(("81985467080890095" : GoInt64), (1985229328 : GoInt64)) == null ? null : unix(("81985467080890095" : GoInt64), (1985229328 : GoInt64)).__copy__()),
	(new Time() : Time),
	(date((1 : GoInt), (2 : Month), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt),
		fixedZone((Go.str() : GoString),
			(1966020 : GoInt))) == null ? null : date((1 : GoInt), (2 : Month), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt),
			fixedZone((Go.str() : GoString), (1966020 : GoInt))).__copy__()),
	(date((1 : GoInt), (2 : Month), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt),
		fixedZone((Go.str() : GoString),
			(-1966080 : GoInt))) == null ? null : date((1 : GoInt), (2 : Month), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (7 : GoInt),
			fixedZone((Go.str() : GoString), (-1966080 : GoInt))).__copy__())) : Slice<Time>);

private var _invalidEncodingTests:Slice<T__struct_14> = (new Slice<T__struct_14>(0, 0,
	({_bytes: (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), _want: (Go.str("Time.UnmarshalBinary: no data") : GoString)} : T__struct_14),
	({_bytes: (new Slice<GoUInt8>(0, 0, (0 : GoUInt8), (2 : GoUInt8),
		(3 : GoUInt8)) : Slice<GoUInt8>), _want: (Go.str("Time.UnmarshalBinary: unsupported version") : GoString)} : T__struct_14),
	({_bytes: (new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (2 : GoUInt8),
		(3 : GoUInt8)) : Slice<GoUInt8>), _want: (Go.str("Time.UnmarshalBinary: invalid length") : GoString)} : T__struct_14)) : Slice<T__struct_14>);

private var _notEncodableTimes:Slice<T__struct_15> = (new Slice<T__struct_15>(0, 0,
	({_time: (date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
		fixedZone((Go.str() : GoString),
			(-60 : GoInt))) == null ? null : date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
			fixedZone((Go.str() : GoString),
				(-60 : GoInt))).__copy__()), _want: (Go.str("Time.MarshalBinary: unexpected zone offset") : GoString)} : T__struct_15),
	({_time: (date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
		fixedZone((Go.str() : GoString),
			(-1966140 : GoInt))) == null ? null : date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
			fixedZone((Go.str() : GoString),
				(-1966140 : GoInt))).__copy__()), _want: (Go.str("Time.MarshalBinary: unexpected zone offset") : GoString)} : T__struct_15),
	({_time: (date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
		fixedZone((Go.str() : GoString),
			(1966080 : GoInt))) == null ? null : date((0 : GoInt), (1 : Month), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt),
			fixedZone((Go.str() : GoString),
				(1966080 : GoInt))).__copy__()),
		_want: (Go.str("Time.MarshalBinary: unexpected zone offset") : GoString)} : T__struct_15)) : Slice<T__struct_15>);

private var _jsonTests:Slice<T__struct_16> = (new Slice<T__struct_16>(0, 0,
	({_time: (date((9999 : GoInt), (4 : Month), (12 : GoInt), (23 : GoInt), (20 : GoInt), (50 : GoInt), (520000000 : GoInt),
		utc) == null ? null : date((9999 : GoInt), (4 : Month), (12 : GoInt), (23 : GoInt), (20 : GoInt), (50 : GoInt), (520000000 : GoInt),
			utc).__copy__()), _json: ("\"9999-04-12T23:20:50.52Z\"" : GoString)} : T__struct_16),
	({_time: (date((1996 : GoInt), (12 : Month), (19 : GoInt), (16 : GoInt), (39 : GoInt), (57 : GoInt), (0 : GoInt),
		local) == null ? null : date((1996 : GoInt), (12 : Month), (19 : GoInt), (16 : GoInt), (39 : GoInt), (57 : GoInt), (0 : GoInt),
			local).__copy__()), _json: ("\"1996-12-19T16:39:57-08:00\"" : GoString)} : T__struct_16),
	({_time: (date((0 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (1 : GoInt),
		fixedZone((Go.str() : GoString),
			(60 : GoInt))) == null ? null : date((0 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (1 : GoInt),
			fixedZone((Go.str() : GoString),
				(60 : GoInt))).__copy__()), _json: ("\"0000-01-01T00:00:00.000000001+00:01\"" : GoString)} : T__struct_16)) : Slice<T__struct_16>);

private var _notJSONEncodableTimes:Slice<T__struct_15> = (new Slice<T__struct_15>(0, 0,
	({_time: (date((10000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((10000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _want: (Go.str("Time.MarshalJSON: year outside of range [0,9999]") : GoString)} : T__struct_15),
	({_time: (date((-1 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((-1 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _want: (Go.str("Time.MarshalJSON: year outside of range [0,9999]") : GoString)} : T__struct_15)) : Slice<T__struct_15>);

private var _parseDurationTests:Slice<T__struct_17> = (new Slice<T__struct_17>(0, 0, ({_in: (Go.str("0") : GoString), _want: (0 : Duration)} : T__struct_17),
	({_in: (Go.str("5s") : GoString), _want: ("5000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("30s") : GoString), _want: ("30000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("1478s") : GoString), _want: ("1478000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("-5s") : GoString), _want: ("-5000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("+5s") : GoString), _want: ("5000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("-0") : GoString), _want: (0 : Duration)} : T__struct_17), ({_in: (Go.str("+0") : GoString), _want: (0 : Duration)} : T__struct_17),
	({_in: (Go.str("5.0s") : GoString), _want: ("5000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("5.6s") : GoString), _want: ("5600000000" : Duration)} : T__struct_17),
	({_in: (Go.str("5.s") : GoString), _want: ("5000000000" : Duration)} : T__struct_17),
	({_in: (Go.str(".5s") : GoString), _want: (500000000 : Duration)} : T__struct_17),
	({_in: (Go.str("1.0s") : GoString), _want: (1000000000 : Duration)} : T__struct_17),
	({_in: (Go.str("1.00s") : GoString), _want: (1000000000 : Duration)} : T__struct_17),
	({_in: (Go.str("1.004s") : GoString), _want: (1004000000 : Duration)} : T__struct_17),
	({_in: (Go.str("1.0040s") : GoString), _want: (1004000000 : Duration)} : T__struct_17),
	({_in: (Go.str("100.00100s") : GoString), _want: ("100001000000" : Duration)} : T__struct_17),
	({_in: (Go.str("10ns") : GoString), _want: (10 : Duration)} : T__struct_17),
	({_in: (Go.str("11us") : GoString), _want: (11000 : Duration)} : T__struct_17),
	({_in: (Go.str("12µs") : GoString), _want: (12000 : Duration)} : T__struct_17),
	({_in: (Go.str("12μs") : GoString), _want: (12000 : Duration)} : T__struct_17),
	({_in: (Go.str("13ms") : GoString), _want: (13000000 : Duration)} : T__struct_17),
	({_in: (Go.str("14s") : GoString), _want: ("14000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("15m") : GoString), _want: ("900000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("16h") : GoString), _want: ("57600000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("3h30m") : GoString), _want: ("12600000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("10.5s4m") : GoString), _want: ("250500000000" : Duration)} : T__struct_17),
	({_in: (Go.str("-2m3.4s") : GoString), _want: ("-123400000000" : Duration)} : T__struct_17),
	({_in: (Go.str("1h2m3s4ms5us6ns") : GoString), _want: ("3723004005006" : Duration)} : T__struct_17),
	({_in: (Go.str("39h9m14.425s") : GoString), _want: ("140954425000000" : Duration)} : T__struct_17),
	({_in: (Go.str("52763797000ns") : GoString), _want: ("52763797000" : Duration)} : T__struct_17),
	({_in: (Go.str("0.3333333333333333333h") : GoString), _want: ("1200000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("9007199254740993ns") : GoString), _want: ("9007199254740993" : Duration)} : T__struct_17),
	({_in: (Go.str("9223372036854775807ns") : GoString), _want: ("9223372036854775807" : Duration)} : T__struct_17),
	({_in: (Go.str("9223372036854775.807us") : GoString), _want: ("9223372036854775807" : Duration)} : T__struct_17),
	({_in: (Go.str("9223372036s854ms775us807ns") : GoString), _want: ("9223372036854775807" : Duration)} : T__struct_17),
	({_in: (Go.str("-9223372036854775808ns") : GoString), _want: ("-9223372036854775808" : Duration)} : T__struct_17),
	({_in: (Go.str("-9223372036854775.808us") : GoString), _want: ("-9223372036854775808" : Duration)} : T__struct_17),
	({_in: (Go.str("-9223372036s854ms775us808ns") : GoString), _want: ("-9223372036854775808" : Duration)} : T__struct_17),
	({_in: (Go.str("-9223372036854775808ns") : GoString), _want: ("-9223372036854775808" : Duration)} : T__struct_17),
	({_in: (Go.str("-2562047h47m16.854775808s") : GoString), _want: ("-9223372036854775808" : Duration)} : T__struct_17),
	({_in: (Go.str("0.100000000000000000000h") : GoString), _want: ("360000000000" : Duration)} : T__struct_17),
	({_in: (Go.str("0.830103483285477580700h") : GoString), _want: ("2988372539827" : Duration)} : T__struct_17)) : Slice<T__struct_17>);

private var _parseDurationErrorTests:Slice<T__struct_18> = (new Slice<T__struct_18>(0, 0,
	({_in: (Go.str() : GoString), _expect: ("\"\"" : GoString)} : T__struct_18),
	({_in: (Go.str("3") : GoString), _expect: ("\"3\"" : GoString)} : T__struct_18),
	({_in: (Go.str("-") : GoString), _expect: ("\"-\"" : GoString)} : T__struct_18),
	({_in: (Go.str("s") : GoString), _expect: ("\"s\"" : GoString)} : T__struct_18),
	({_in: (Go.str(".") : GoString), _expect: ("\".\"" : GoString)} : T__struct_18),
	({_in: (Go.str("-.") : GoString), _expect: ("\"-.\"" : GoString)} : T__struct_18),
	({_in: (Go.str(".s") : GoString), _expect: ("\".s\"" : GoString)} : T__struct_18),
	({_in: (Go.str("+.s") : GoString), _expect: ("\"+.s\"" : GoString)} : T__struct_18),
	({_in: (Go.str("1d") : GoString), _expect: ("\"1d\"" : GoString)} : T__struct_18),
	({_in: (Go.str(133, 133) : GoString), _expect: ("\"\\x85\\x85\"" : GoString)} : T__struct_18),
	({_in: (Go.str(255, "ff") : GoString), _expect: ("\"\\xffff\"" : GoString)} : T__struct_18),
	({_in: (Go.str("hello ", 255, "ff world") : GoString), _expect: ("\"hello \\xffff world\"" : GoString)} : T__struct_18),
	({_in: (Go.str("\uFFFD") : GoString), _expect: ("\"\\xef\\xbf\\xbd\"" : GoString)} : T__struct_18),
	({_in: (Go.str("\uFFFD hello \uFFFD world") : GoString), _expect: ("\"\\xef\\xbf\\xbd hello \\xef\\xbf\\xbd world\"" : GoString)} : T__struct_18),
	({_in: (Go.str("9223372036854775810ns") : GoString), _expect: ("\"9223372036854775810ns\"" : GoString)} : T__struct_18),
	({_in: (Go.str("9223372036854775808ns") : GoString), _expect: ("\"9223372036854775808ns\"" : GoString)} : T__struct_18),
	({_in: (Go.str("-9223372036854775809ns") : GoString), _expect: ("\"-9223372036854775809ns\"" : GoString)} : T__struct_18),
	({_in: (Go.str("9223372036854776us") : GoString), _expect: ("\"9223372036854776us\"" : GoString)} : T__struct_18),
	({_in: (Go.str("3000000h") : GoString), _expect: ("\"3000000h\"" : GoString)} : T__struct_18),
	({_in: (Go.str("9223372036854775.808us") : GoString), _expect: ("\"9223372036854775.808us\"" : GoString)} : T__struct_18),
	({_in: (Go.str("9223372036854ms775us808ns") : GoString), _expect: ("\"9223372036854ms775us808ns\"" : GoString)} : T__struct_18)) : Slice<T__struct_18>);

private var _mallocTest:Slice<T__struct_19> = (new Slice<T__struct_19>(0, 0, ({
	_count: (0 : GoInt),
	_desc: ("time.Now()" : GoString),
	_fn: function():Void {
		_t = (now() == null ? null : now().__copy__());
	}
} : T__struct_19), ({
	_count: (0 : GoInt),
	_desc: ("time.Now().UnixNano()" : GoString),
	_fn: function():Void {
		_u = now().unixNano();
	}
	} : T__struct_19), ({
	_count: (0 : GoInt),
	_desc: ("time.Now().UnixMilli()" : GoString),
	_fn: function():Void {
		_u = now().unixMilli();
	}
	} : T__struct_19), ({
	_count: (0 : GoInt),
	_desc: ("time.Now().UnixMicro()" : GoString),
	_fn: function():Void {
		_u = now().unixMicro();
	}
	} : T__struct_19)) : Slice<T__struct_19>);

private var _subTests:Slice<T__struct_20> = (new Slice<T__struct_20>(0, 0,
	({_t: (new Time() : Time), _u: (new Time() : Time), _d: (0 : Duration)} : T__struct_20),
	({_t: (date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (1 : GoInt),
		utc) == null ? null : date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (1 : GoInt),
			utc).__copy__()), _u: (date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: (1 : Duration)} : T__struct_20),
	({_t: (date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((2009 : GoInt), (11 : Month), (24 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2009 : GoInt), (11 : Month), (24 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("-86400000000000" : Duration)} : T__struct_20),
	({_t: (date((2009 : GoInt), (11 : Month), (24 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2009 : GoInt), (11 : Month), (24 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("86400000000000" : Duration)} : T__struct_20),
	({_t: (date((-2009 : GoInt), (11 : Month), (24 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((-2009 : GoInt), (11 : Month), (24 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((-2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((-2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("86400000000000" : Duration)} : T__struct_20),
	({_t: (new Time() : Time), _u: (date((2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _d: ("-9223372036854775808" : Duration)} : T__struct_20),
	({_t: (date((2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (new Time() : Time), _d: ("9223372036854775807" : Duration)} : T__struct_20),
	({_t: (new Time() : Time), _u: (date((-2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((-2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _d: ("9223372036854775807" : Duration)} : T__struct_20),
	({_t: (date((-2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((-2109 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (new Time() : Time), _d: ("-9223372036854775808" : Duration)} : T__struct_20),
	({_t: (date((2290 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2290 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("9151574400000000000" : Duration)} : T__struct_20),
	({_t: (date((2300 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2300 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("9223372036854775807" : Duration)} : T__struct_20),
	({_t: (date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((2290 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2290 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("-9151574400000000000" : Duration)} : T__struct_20),
	({_t: (date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc).__copy__()), _u: (date((2300 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2300 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc).__copy__()), _d: ("-9223372036854775808" : Duration)} : T__struct_20),
	({_t: (date((2311 : GoInt), (11 : Month), (26 : GoInt), (2 : GoInt), (16 : GoInt), (47 : GoInt), (63535996 : GoInt),
		utc) == null ? null : date((2311 : GoInt), (11 : Month), (26 : GoInt), (2 : GoInt), (16 : GoInt), (47 : GoInt), (63535996 : GoInt),
			utc).__copy__()), _u: (date((2019 : GoInt), (8 : Month), (16 : GoInt), (2 : GoInt), (29 : GoInt), (30 : GoInt), (268436582 : GoInt),
			utc) == null ? null : date((2019 : GoInt), (8 : Month), (16 : GoInt), (2 : GoInt), (29 : GoInt), (30 : GoInt), (268436582 : GoInt),
				utc).__copy__()), _d: ("9223372036795099414" : Duration)} : T__struct_20),
	({_t: (minMonoTime == null ? null : minMonoTime.__copy__()), _u: (maxMonoTime == null ? null : maxMonoTime.__copy__()),
		_d: ("-9223372036854775808" : Duration)} : T__struct_20),
	({_t: (maxMonoTime == null ? null : maxMonoTime.__copy__()), _u: (minMonoTime == null ? null : minMonoTime.__copy__()),
		_d: ("9223372036854775807" : Duration)} : T__struct_20)) : Slice<T__struct_20>);

private var _nsDurationTests:Slice<T__struct_21> = (new Slice<T__struct_21>(0, 0, ({_d: (-1000 : Duration), _want: (-1000 : GoInt64)} : T__struct_21),
	({_d: (-1 : Duration), _want: (-1 : GoInt64)} : T__struct_21), ({_d: (1 : Duration), _want: (1 : GoInt64)} : T__struct_21),
	({_d: (1000 : Duration), _want: (1000 : GoInt64)} : T__struct_21)) : Slice<T__struct_21>);

private var _usDurationTests:Slice<T__struct_21> = (new Slice<T__struct_21>(0, 0, ({_d: (-1000 : Duration), _want: (-1 : GoInt64)} : T__struct_21),
	({_d: (1000 : Duration), _want: (1 : GoInt64)} : T__struct_21)) : Slice<T__struct_21>);

private var _msDurationTests:Slice<T__struct_21> = (new Slice<T__struct_21>(0, 0, ({_d: (-1000000 : Duration), _want: (-1 : GoInt64)} : T__struct_21),
	({_d: (1000000 : Duration), _want: (1 : GoInt64)} : T__struct_21)) : Slice<T__struct_21>);

private var _secDurationTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0,
	({_d: (300000000 : Duration), _want: (0.3 : GoFloat64)} : T__struct_22)) : Slice<T__struct_22>);

private var _minDurationTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0,
	({_d: ("-60000000000" : Duration), _want: (-1 : GoFloat64)} : T__struct_22),
	({_d: (-1 : Duration), _want: (-1.6666666666666667e-11 : GoFloat64)} : T__struct_22),
	({_d: (1 : Duration), _want: (1.6666666666666667e-11 : GoFloat64)} : T__struct_22),
	({_d: ("60000000000" : Duration), _want: (1 : GoFloat64)} : T__struct_22),
	({_d: (3000 : Duration), _want: (5e-08 : GoFloat64)} : T__struct_22)) : Slice<T__struct_22>);

private var _hourDurationTests:Slice<T__struct_22> = (new Slice<T__struct_22>(0, 0,
	({_d: ("-3600000000000" : Duration), _want: (-1 : GoFloat64)} : T__struct_22),
	({_d: (-1 : Duration), _want: (-2.777777777777778e-13 : GoFloat64)} : T__struct_22),
	({_d: (1 : Duration), _want: (2.777777777777778e-13 : GoFloat64)} : T__struct_22),
	({_d: ("3600000000000" : Duration), _want: (1 : GoFloat64)} : T__struct_22),
	({_d: (36 : Duration), _want: (1e-11 : GoFloat64)} : T__struct_22)) : Slice<T__struct_22>);

private var _durationTruncateTests:Slice<T__struct_23> = (new Slice<T__struct_23>(0, 0,
	({_d: (0 : Duration), _m: (1000000000 : Duration), _want: (0 : Duration)} : T__struct_23),
	({_d: ("60000000000" : Duration), _m: ("-7000000000" : Duration), _want: ("60000000000" : Duration)} : T__struct_23),
	({_d: ("60000000000" : Duration), _m: (0 : Duration), _want: ("60000000000" : Duration)} : T__struct_23),
	({_d: ("60000000000" : Duration), _m: (1 : Duration), _want: ("60000000000" : Duration)} : T__struct_23),
	({_d: ("70000000000" : Duration), _m: ("10000000000" : Duration), _want: ("70000000000" : Duration)} : T__struct_23),
	({_d: ("130000000000" : Duration), _m: ("60000000000" : Duration), _want: ("120000000000" : Duration)} : T__struct_23),
	({_d: ("610000000000" : Duration), _m: ("180000000000" : Duration), _want: ("540000000000" : Duration)} : T__struct_23),
	({_d: ("70000000000" : Duration), _m: ("70000000001" : Duration), _want: (0 : Duration)} : T__struct_23),
	({_d: ("70000000000" : Duration), _m: ("3600000000000" : Duration), _want: (0 : Duration)} : T__struct_23),
	({_d: ("-60000000000" : Duration), _m: (1000000000 : Duration), _want: ("-60000000000" : Duration)} : T__struct_23),
	({_d: ("-600000000000" : Duration), _m: ("180000000000" : Duration), _want: ("-540000000000" : Duration)} : T__struct_23),
	({_d: ("-600000000000" : Duration), _m: ("3600000000000" : Duration), _want: (0 : Duration)} : T__struct_23)) : Slice<T__struct_23>);

private var _durationRoundTests:Slice<T__struct_23> = (new Slice<T__struct_23>(0, 0,
	({_d: (0 : Duration), _m: (1000000000 : Duration), _want: (0 : Duration)} : T__struct_23),
	({_d: ("60000000000" : Duration), _m: ("-11000000000" : Duration), _want: ("60000000000" : Duration)} : T__struct_23),
	({_d: ("60000000000" : Duration), _m: (0 : Duration), _want: ("60000000000" : Duration)} : T__struct_23),
	({_d: ("60000000000" : Duration), _m: (1 : Duration), _want: ("60000000000" : Duration)} : T__struct_23),
	({_d: ("120000000000" : Duration), _m: ("60000000000" : Duration), _want: ("120000000000" : Duration)} : T__struct_23),
	({_d: ("130000000000" : Duration), _m: ("60000000000" : Duration), _want: ("120000000000" : Duration)} : T__struct_23),
	({_d: ("150000000000" : Duration), _m: ("60000000000" : Duration), _want: ("180000000000" : Duration)} : T__struct_23),
	({_d: ("170000000000" : Duration), _m: ("60000000000" : Duration), _want: ("180000000000" : Duration)} : T__struct_23),
	({_d: ("-60000000000" : Duration), _m: (1 : Duration), _want: ("-60000000000" : Duration)} : T__struct_23),
	({_d: ("-120000000000" : Duration), _m: ("60000000000" : Duration), _want: ("-120000000000" : Duration)} : T__struct_23),
	({_d: ("-130000000000" : Duration), _m: ("60000000000" : Duration), _want: ("-120000000000" : Duration)} : T__struct_23),
	({_d: ("-150000000000" : Duration), _m: ("60000000000" : Duration), _want: ("-180000000000" : Duration)} : T__struct_23),
	({_d: ("-170000000000" : Duration), _m: ("60000000000" : Duration), _want: ("-180000000000" : Duration)} : T__struct_23),
	({_d: (8e+18 : Duration), _m: (3e+18 : Duration), _want: (9e+18 : Duration)} : T__struct_23),
	({_d: (9e+18 : Duration), _m: (5e+18 : Duration), _want: ("9223372036854775807" : Duration)} : T__struct_23),
	({_d: ("-8000000000000000000" : Duration), _m: (3e+18 : Duration), _want: ("-9000000000000000000" : Duration)} : T__struct_23),
	({_d: ("-9000000000000000000" : Duration), _m: (5e+18 : Duration), _want: ("-9223372036854775808" : Duration)} : T__struct_23),
	({_d: ("6917529027641081855" : Duration), _m: ("6917529027641081856" : Duration),
		_want: ("6917529027641081856" : Duration)} : T__struct_23)) : Slice<T__struct_23>);

private var _durationAbsTests:Slice<T__struct_24> = (new Slice<T__struct_24>(0, 0, ({_d: (0 : Duration), _want: (0 : Duration)} : T__struct_24),
	({_d: (1 : Duration), _want: (1 : Duration)} : T__struct_24), ({_d: (-1 : Duration), _want: (1 : Duration)} : T__struct_24),
	({_d: ("60000000000" : Duration), _want: ("60000000000" : Duration)} : T__struct_24),
	({_d: ("-60000000000" : Duration), _want: ("60000000000" : Duration)} : T__struct_24),
	({_d: ("-9223372036854775808" : Duration), _want: ("9223372036854775807" : Duration)} : T__struct_24),
	({_d: ("-9223372036854775807" : Duration), _want: ("9223372036854775807" : Duration)} : T__struct_24),
	({_d: ("-9223372036854775806" : Duration), _want: ("9223372036854775806" : Duration)} : T__struct_24),
	({_d: ("9223372036854775807" : Duration), _want: ("9223372036854775807" : Duration)} : T__struct_24),
	({_d: ("9223372036854775806" : Duration), _want: ("9223372036854775806" : Duration)} : T__struct_24)) : Slice<T__struct_24>);

private var _defaultLocTests:Slice<T__struct_25> = (new Slice<T__struct_25>(0, 0, ({
	_name: (Go.str("After") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.after((_t2 == null ? null : _t2.__copy__())) == _t2.after((_t1 == null ? null : _t1.__copy__()));
	}
} : T__struct_25), ({
	_name: (Go.str("Before") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.before((_t2 == null ? null : _t2.__copy__())) == _t2.before((_t1 == null ? null : _t1.__copy__()));
	}
	} : T__struct_25), ({
	_name: (Go.str("Equal") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.equal((_t2 == null ? null : _t2.__copy__())) == _t2.equal((_t1 == null ? null : _t1.__copy__()));
	}
	} : T__struct_25), ({
	_name: (Go.str("IsZero") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.isZero() == _t2.isZero();
	}
	} : T__struct_25), ({
	_name: (Go.str("Date") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.date(), _a1:GoInt = __tmp__._0, _b1:Month = __tmp__._1, _c1:GoInt = __tmp__._2;
		var __tmp__ = _t2.date(), _a2:GoInt = __tmp__._0, _b2:Month = __tmp__._1, _c2:GoInt = __tmp__._2;
		return ((_a1 == _a2) && (_b1 == _b2)) && (_c1 == _c2);
	}
	} : T__struct_25), ({
	_name: (Go.str("Year") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.year() == _t2.year();
	}
	} : T__struct_25), ({
	_name: (Go.str("Month") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.month() == _t2.month();
	}
	} : T__struct_25), ({
	_name: (Go.str("Day") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.day() == _t2.day();
	}
	} : T__struct_25), ({
	_name: (Go.str("Weekday") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.weekday() == _t2.weekday();
	}
	} : T__struct_25), ({
	_name: (Go.str("ISOWeek") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.isoweek(), _a1:GoInt = __tmp__._0, _b1:GoInt = __tmp__._1;
		var __tmp__ = _t2.isoweek(), _a2:GoInt = __tmp__._0, _b2:GoInt = __tmp__._1;
		return (_a1 == _a2) && (_b1 == _b2);
	}
	} : T__struct_25), ({
	_name: (Go.str("Clock") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.clock(), _a1:GoInt = __tmp__._0, _b1:GoInt = __tmp__._1, _c1:GoInt = __tmp__._2;
		var __tmp__ = _t2.clock(), _a2:GoInt = __tmp__._0, _b2:GoInt = __tmp__._1, _c2:GoInt = __tmp__._2;
		return ((_a1 == _a2) && (_b1 == _b2)) && (_c1 == _c2);
	}
	} : T__struct_25), ({
	_name: (Go.str("Hour") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.hour() == _t2.hour();
	}
	} : T__struct_25), ({
	_name: (Go.str("Minute") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.minute() == _t2.minute();
	}
	} : T__struct_25), ({
	_name: (Go.str("Second") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.second() == _t2.second();
	}
	} : T__struct_25), ({
	_name: (Go.str("Nanosecond") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.hour() == _t2.hour();
	}
	} : T__struct_25), ({
	_name: (Go.str("YearDay") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.yearDay() == _t2.yearDay();
	}
	} : T__struct_25), ({
	_name: (Go.str("Add") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.add(("3600000000000" : Duration))
			.equal((_t2.add(("3600000000000" : Duration)) == null ? null : _t2.add(("3600000000000" : Duration)).__copy__()));
	}
	} : T__struct_25), ({
	_name: (Go.str("Sub") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.sub((_t2 == null ? null : _t2.__copy__())) == _t2.sub((_t1 == null ? null : _t1.__copy__()));
	}
	} : T__struct_25), ({
	_name: (Go.str("AddDate") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.addDate((1991 : GoInt), (9 : GoInt), (3 : GoInt)) == _t2.addDate((1991 : GoInt), (9 : GoInt), (3 : GoInt));
	}
	} : T__struct_25), ({
	_name: (Go.str("UTC") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.utc() == _t2.utc();
	}
	} : T__struct_25), ({
	_name: (Go.str("Local") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.local() == _t2.local();
	}
	} : T__struct_25), ({
	_name: (Go.str("In") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.in_(utc) == _t2.in_(utc);
	}
	} : T__struct_25), ({
	_name: (Go.str("Local") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.local() == _t2.local();
	}
	} : T__struct_25), ({
	_name: (Go.str("Zone") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.zone(), _a1:GoString = __tmp__._0, _b1:GoInt = __tmp__._1;
		var __tmp__ = _t2.zone(), _a2:GoString = __tmp__._0, _b2:GoInt = __tmp__._1;
		return (_a1 == _a2) && (_b1 == _b2);
	}
	} : T__struct_25), ({
	_name: (Go.str("Unix") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.unix() == _t2.unix();
	}
	} : T__struct_25), ({
	_name: (Go.str("UnixNano") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.unixNano() == _t2.unixNano();
	}
	} : T__struct_25), ({
	_name: (Go.str("UnixMilli") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.unixMilli() == _t2.unixMilli();
	}
	} : T__struct_25), ({
	_name: (Go.str("UnixMicro") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.unixMicro() == _t2.unixMicro();
	}
	} : T__struct_25), ({
	_name: (Go.str("MarshalBinary") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.marshalBinary(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
		var __tmp__ = _t2.marshalBinary(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
		return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
	}
	} : T__struct_25), ({
	_name: (Go.str("GobEncode") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.gobEncode(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
		var __tmp__ = _t2.gobEncode(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
		return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
	}
	} : T__struct_25), ({
	_name: (Go.str("MarshalJSON") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.marshalJSON(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
		var __tmp__ = _t2.marshalJSON(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
		return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
	}
	} : T__struct_25), ({
	_name: (Go.str("MarshalText") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		var __tmp__ = _t1.marshalText(), _a1:Slice<GoUInt8> = __tmp__._0, _b1:stdgo.Error = __tmp__._1;
		var __tmp__ = _t2.marshalText(), _a2:Slice<GoUInt8> = __tmp__._0, _b2:stdgo.Error = __tmp__._1;
		return stdgo.bytes.Bytes.equal(_a1, _a2) && (_b1 == _b2);
	}
	} : T__struct_25), ({
	_name: (Go.str("Truncate") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.truncate(("3600000000000" : Duration))
			.equal((_t2.truncate(("3600000000000" : Duration)) == null ? null : _t2.truncate(("3600000000000" : Duration)).__copy__()));
	}
	} : T__struct_25), ({
	_name: (Go.str("Round") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return _t1.round(("3600000000000" : Duration))
			.equal((_t2.round(("3600000000000" : Duration)) == null ? null : _t2.round(("3600000000000" : Duration)).__copy__()));
	}
	} : T__struct_25), ({
	_name: (Go.str("== Time{}") : GoString),
	_f: function(_t1:Time, _t2:Time):Bool {
		return (_t1 == (new Time() : Time)) == (_t2 == (new Time() : Time));
	}
	} : T__struct_25)) : Slice<T__struct_25>);

private var _zones:Slice<GoString> = (new Slice<GoString>(0, 0, (Go.str("Asia/Jerusalem") : GoString),
	(Go.str("America/Los_Angeles") : GoString)) : Slice<GoString>);

private var _slimTests:Slice<T__struct_30> = (new Slice<T__struct_30>(0, 0, ({
	_zoneName: ("" : GoString),
	_fileName: ("" : GoString),
	_date: null,
	_wantName: ("" : GoString),
	_wantOffset: (0 : GoInt)
} : T__struct_30), ({
	_zoneName: ("" : GoString),
	_fileName: ("" : GoString),
	_date: null,
	_wantName: ("" : GoString),
	_wantOffset: (0 : GoInt)
	} : T__struct_30), ({
	_zoneName: ("" : GoString),
	_fileName: ("" : GoString),
	_date: null,
	_wantName: ("" : GoString),
	_wantOffset: (0 : GoInt)
	} : T__struct_30), ({
	_zoneName: ("" : GoString),
	_fileName: ("" : GoString),
	_date: null,
	_wantName: ("" : GoString),
	_wantOffset: (0 : GoInt)
	} : T__struct_30)) : Slice<T__struct_30>);

private var _c:Chan<GoInt> = (null : Chan<GoInt>);

/**
	// Go runtime uses different Windows timers for time.Now and sleeping.
	// These can tick at different frequencies and can arrive out of sync.
	// The effect can be seen, for example, as time.Sleep(100ms) is actually
	// shorter then 100ms when measured as difference between time.Now before and
	// after time.Sleep call. This was observed on Windows XP SP3 (windows/386).
	// windowsInaccuracy is to ignore such errors.
**/
private final _windowsInaccuracy:Duration = (17000000 : Duration);

/**
	// The time routines provide no way to get absolute time
	// (seconds since zero), but we need it to compute the right
	// answer for bizarre roundings like "to the nearest 3 ns".
	// Compute as t - year1 = (t - 1970) + (1970 - 2001) + (2001 - 1).
	// t - 1970 is returned by Unix and Nanosecond.
	// 1970 - 2001 is -(31*365+8)*86400 = -978307200 seconds.
	// 2001 - 1 is 2000*365.2425*86400 = 63113904000 seconds.
**/
private final _unixToZero:GoUnTypedInt = ("62135596800" : GoUnTypedInt);

private var _t:Time = ({} : Time);
private var _u:GoInt64 = (0 : GoInt64);
private final _minDuration:Duration = ("-9223372036854775808" : Duration);
private final _maxDuration:Duration = ("9223372036854775807" : Duration);

@:structInit class TimeFormatTest {
	public var _time:Time = ({} : Time);
	public var _formattedValue:GoString = "";

	public function new(?_time:Time, ?_formattedValue:GoString) {
		if (_time != null)
			this._time = _time;
		if (_formattedValue != null)
			this._formattedValue = _formattedValue;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TimeFormatTest(_time, _formattedValue);
	}
}

@:structInit class FormatTest {
	public var _name:GoString = "";
	public var _format:GoString = "";
	public var _result:GoString = "";

	public function new(?_name:GoString, ?_format:GoString, ?_result:GoString) {
		if (_name != null)
			this._name = _name;
		if (_format != null)
			this._format = _format;
		if (_result != null)
			this._result = _result;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new FormatTest(_name, _format, _result);
	}
}

@:structInit class ParseTest {
	public var _name:GoString = "";
	public var _format:GoString = "";
	public var _value:GoString = "";

	/**
		// contains a time zone
	**/
	public var _hasTZ:Bool = false;

	/**
		// contains a weekday
	**/
	public var _hasWD:Bool = false;

	/**
		// sign of year, -1 indicates the year is not present in the format
	**/
	public var _yearSign:GoInt = 0;

	/**
		// number of digits of fractional second
	**/
	public var _fracDigits:GoInt = 0;

	public function new(?_name:GoString, ?_format:GoString, ?_value:GoString, ?_hasTZ:Bool, ?_hasWD:Bool, ?_yearSign:GoInt, ?_fracDigits:GoInt) {
		if (_name != null)
			this._name = _name;
		if (_format != null)
			this._format = _format;
		if (_value != null)
			this._value = _value;
		if (_hasTZ != null)
			this._hasTZ = _hasTZ;
		if (_hasWD != null)
			this._hasWD = _hasWD;
		if (_yearSign != null)
			this._yearSign = _yearSign;
		if (_fracDigits != null)
			this._fracDigits = _fracDigits;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ParseTest(_name, _format, _value, _hasTZ, _hasWD, _yearSign, _fracDigits);
	}
}

@:structInit class ParseTimeZoneTest {
	public var _value:GoString = "";
	public var _length:GoInt = 0;
	public var _ok:Bool = false;

	public function new(?_value:GoString, ?_length:GoInt, ?_ok:Bool) {
		if (_value != null)
			this._value = _value;
		if (_length != null)
			this._length = _length;
		if (_ok != null)
			this._ok = _ok;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ParseTimeZoneTest(_value, _length, _ok);
	}
}

@:structInit class ParseErrorTest {
	public var _format:GoString = "";
	public var _value:GoString = "";

	/**
		// must appear within the error
	**/
	public var _expect:GoString = "";

	public function new(?_format:GoString, ?_value:GoString, ?_expect:GoString) {
		if (_format != null)
			this._format = _format;
		if (_value != null)
			this._value = _value;
		if (_expect != null)
			this._expect = _expect;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ParseErrorTest(_format, _value, _expect);
	}
}

@:structInit class SecondsTimeZoneOffsetTest {
	public var _format:GoString = "";
	public var _value:GoString = "";
	public var _expectedoffset:GoInt = 0;

	public function new(?_format:GoString, ?_value:GoString, ?_expectedoffset:GoInt) {
		if (_format != null)
			this._format = _format;
		if (_value != null)
			this._value = _value;
		if (_expectedoffset != null)
			this._expectedoffset = _expectedoffset;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SecondsTimeZoneOffsetTest(_format, _value, _expectedoffset);
	}
}

@:structInit private class T_afterResult {
	public var _slot:GoInt = 0;
	public var _t:Time = ({} : Time);

	public function new(?_slot:GoInt, ?_t:Time) {
		if (_slot != null)
			this._slot = _slot;
		if (_t != null)
			this._t = _t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_afterResult(_slot, _t);
	}
}

/**
	// parsedTime is the struct representing a parsed time value.
**/
@:structInit private class T_parsedTime {
	public var year:GoInt = 0;
	public var month:Month = ((0 : GoInt) : Month);
	public var day:GoInt = 0;

	/**
		// 15:04:05 is 15, 4, 5.
	**/
	public var hour:GoInt = 0;

	/**
		// Fractional second.
	**/
	public var minute:GoInt = 0;

	public var second:GoInt = 0;

	/**
		// seconds east of UTC, e.g. -7*60*60 for -0700
	**/
	public var nanosecond:GoInt = 0;

	/**
		// e.g., "MST"
	**/
	public var weekday:Weekday = ((0 : GoInt) : Weekday);

	public var zoneOffset:GoInt = 0;
	public var zone:GoString = "";

	public function new(?year:GoInt, ?month:Month, ?day:GoInt, ?hour:GoInt, ?minute:GoInt, ?second:GoInt, ?nanosecond:GoInt, ?weekday:Weekday,
			?zoneOffset:GoInt, ?zone:GoString) {
		if (year != null)
			this.year = year;
		if (month != null)
			this.month = month;
		if (day != null)
			this.day = day;
		if (hour != null)
			this.hour = hour;
		if (minute != null)
			this.minute = minute;
		if (second != null)
			this.second = second;
		if (nanosecond != null)
			this.nanosecond = nanosecond;
		if (weekday != null)
			this.weekday = weekday;
		if (zoneOffset != null)
			this.zoneOffset = zoneOffset;
		if (zone != null)
			this.zone = zone;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_parsedTime(year, month, day, hour, minute, second, nanosecond, weekday, zoneOffset, zone);
	}
}

@:structInit class TimeTest {
	public var _seconds:GoInt64 = 0;
	public var _golden:stdgo.time_test.Time_test.T_parsedTime = ({} : stdgo.time_test.Time_test.T_parsedTime);

	public function new(?_seconds:GoInt64, ?_golden:stdgo.time_test.Time_test.T_parsedTime) {
		if (_seconds != null)
			this._seconds = _seconds;
		if (_golden != null)
			this._golden = _golden;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new TimeTest(_seconds, _golden);
	}
}

@:structInit class ISOWeekTest {
	/**
		// year
	**/
	public var _year:GoInt = 0;

	/**
		// month and day
	**/
	public var _month:GoInt = 0;

	/**
		// expected year
	**/
	public var _day:GoInt = 0;

	/**
		// expected week
	**/
	public var _yex:GoInt = 0;

	public var _wex:GoInt = 0;

	public function new(?_year:GoInt, ?_month:GoInt, ?_day:GoInt, ?_yex:GoInt, ?_wex:GoInt) {
		if (_year != null)
			this._year = _year;
		if (_month != null)
			this._month = _month;
		if (_day != null)
			this._day = _day;
		if (_yex != null)
			this._yex = _yex;
		if (_wex != null)
			this._wex = _wex;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ISOWeekTest(_year, _month, _day, _yex, _wex);
	}
}

@:structInit class YearDayTest {
	public var _year:GoInt = 0;
	public var _month:GoInt = 0;
	public var _day:GoInt = 0;
	public var _yday:GoInt = 0;

	public function new(?_year:GoInt, ?_month:GoInt, ?_day:GoInt, ?_yday:GoInt) {
		if (_year != null)
			this._year = _year;
		if (_month != null)
			this._month = _month;
		if (_day != null)
			this._day = _day;
		if (_yday != null)
			this._yday = _yday;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new YearDayTest(_year, _month, _day, _yday);
	}
}

@:local private typedef T__struct_0 = {
	public var _in:Time;
	public var _want:GoString;
};

@:local private typedef T__struct_1 = {
	public var _date:GoString;
	public var _ok:Bool;
};

@:local private typedef T__struct_2 = {
	public var _format:GoString;
	public var _value:GoString;
	public var _valueElemPrefix:GoString;
};

@:local private typedef T__struct_3 = {
	public var _value:GoString;
	public var _ok:Bool;
};

@:local private typedef T__struct_4 = {
	public var _s:GoString;
	public var _want:GoString;
};

@:local private typedef T__struct_5 = {
	public var _s:GoString;
	public var _want:GoInt;
};

@:local private typedef T__struct_6 = {
	public var _mono:GoInt64;
	public var _want:GoString;
};

@:local private typedef T__struct_7 = {
	public var _sum:GoFloat64;
	public var _max:Duration;
	public var _count:GoInt64;

	/**
		// cache line padding
	**/
	public var _0:GoArray<GoInt64>;
};

@:local private typedef T__struct_8 = {
	public var _count:GoInt;
	public var _delta:Duration;
};

@:local private typedef T__struct_9 = {
	public var _t:Time;
	public var _d:Duration;
};

@:local private typedef T__struct_10 = {
	public var _str:GoString;
	public var _d:Duration;
};

@:local private typedef T__struct_11 = {
	public var _year:GoInt;
	public var _month:GoInt;
	public var _day:GoInt;
	public var _hour:GoInt;
	public var _min:GoInt;
	public var _sec:GoInt;
	public var _nsec:GoInt;
	public var _z:Ref<Location>;
	public var _unix:GoInt64;
};

@:local private typedef T__struct_12 = {
	public var _years:GoInt;
	public var _months:GoInt;
	public var _days:GoInt;
};

@:local private typedef T__struct_13 = {
	public var _year:GoInt;
	public var _month:GoInt;
	public var _di:GoInt;
};

@:local private typedef T__struct_14 = {
	public var _bytes:Slice<GoUInt8>;
	public var _want:GoString;
};

@:local private typedef T__struct_15 = {
	public var _time:Time;
	public var _want:GoString;
};

@:local private typedef T__struct_16 = {
	public var _time:Time;
	public var _json:GoString;
};

@:local private typedef T__struct_17 = {
	public var _in:GoString;
	public var _want:Duration;
};

@:local private typedef T__struct_18 = {
	public var _in:GoString;
	public var _expect:GoString;
};

@:local private typedef T__struct_19 = {
	public var _count:GoInt;
	public var _desc:GoString;
	public var _fn:() -> Void;
};

@:local private typedef T__struct_20 = {
	public var _t:Time;
	public var _u:Time;
	public var _d:Duration;
};

@:local private typedef T__struct_21 = {
	public var _d:Duration;
	public var _want:GoInt64;
};

@:local private typedef T__struct_22 = {
	public var _d:Duration;
	public var _want:GoFloat64;
};

@:local private typedef T__struct_23 = {
	public var _d:Duration;
	public var _m:Duration;
	public var _want:Duration;
};

@:local private typedef T__struct_24 = {
	public var _d:Duration;
	public var _want:Duration;
};

@:local private typedef T__struct_25 = {
	public var _name:GoString;
	public var _f:(Time, Time) -> Bool;
};

@:local private typedef T__struct_26 = {
	public var _time:Time;
	public var _want:Bool;
};

@:local private typedef T__struct_27 = {
	public var _give:Time;
	public var _want:Time;
};

@:local private typedef T__struct_28 = {
	public var _giveTime:Time;
	public var _wantStart:Time;
	public var _wantEnd:Time;
};

@:local private typedef T__struct_29 = {
	public var _zone:GoString;
	public var _unix:GoInt64;
	public var _want1:GoString;
	public var _want2:GoString;
};

@:local private typedef T__struct_30 = {
	public var _zoneName:GoString;
	public var _fileName:GoString;
	public var _date:Ref<Location>->Time;
	public var _wantName:GoString;
	public var _wantOffset:GoInt;
};

@:local private typedef T__struct_31 = {
	public var _inStr:GoString;
	public var _inEnd:GoInt64;
	public var _inSec:GoInt64;
	public var _name:GoString;
	public var _off:GoInt;
	public var _start:GoInt64;
	public var _end:GoInt64;
	public var _isDST:Bool;
	public var _ok:Bool;
};

@:local private typedef T__struct_32 = {
	public var _in:GoString;
	public var _name:GoString;
	public var _out:GoString;
	public var _ok:Bool;
};

@:local private typedef T__struct_33 = {
	public var _in:GoString;
	public var _off:GoInt;
	public var _out:GoString;
	public var _ok:Bool;
};

@:local private typedef T__struct_34 = {
	public var _in:GoString;
	public var _r:Rule;
	public var _out:GoString;
	public var _ok:Bool;
};

function _expensiveCall():Void {}

function exampleDuration():Void {
	var _t0:Time = (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__());
	_expensiveCall();
	var _t1:Time = (stdgo.time.Time.now() == null ? null : stdgo.time.Time.now().__copy__());
	stdgo.fmt.Fmt.printf((Go.str("The call took %v to run.\n") : GoString), Go.toInterface(Go.asInterface(_t1.sub((_t0 == null ? null : _t0.__copy__())))));
}

function exampleDuration_Round():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1h15m30.918273645s") : GoString)),
		_d:Duration = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	var _round = (new Slice<Duration>(0, 0, (1 : Duration), (1000 : Duration), (1000000 : Duration), (1000000000 : Duration), (2000000000 : Duration),
		("60000000000" : Duration), ("600000000000" : Duration), ("3600000000000" : Duration)) : Slice<Duration>);
	for (_0 => _r in _round) {
		stdgo.fmt.Fmt.printf((Go.str("d.Round(%6s) = %s\n") : GoString), Go.toInterface(Go.asInterface(_r)),
			Go.toInterface((_d.round(_r).string() : GoString)));
	};
}

function exampleDuration_String():Void {
	stdgo.fmt.Fmt.println(("3720300000000" : Duration));
	stdgo.fmt.Fmt.println((300000000 : Duration));
}

function exampleDuration_Truncate():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1h15m30.918273645s") : GoString)),
		_d:Duration = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	var _trunc = (new Slice<Duration>(0, 0, (1 : Duration), (1000 : Duration), (1000000 : Duration), (1000000000 : Duration), (2000000000 : Duration),
		("60000000000" : Duration), ("600000000000" : Duration), ("3600000000000" : Duration)) : Slice<Duration>);
	for (_0 => _t in _trunc) {
		stdgo.fmt.Fmt.printf((Go.str("d.Truncate(%6s) = %s\n") : GoString), Go.toInterface(Go.asInterface(_t)),
			Go.toInterface((_d.truncate(_t).string() : GoString)));
	};
}

function exampleParseDuration():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("10h") : GoString)),
		_hours:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1h10m10s") : GoString)),
		_complex:Duration = __tmp__._0,
		_1:stdgo.Error = __tmp__._1;
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1µs") : GoString)),
		_micro:Duration = __tmp__._0,
		_2:stdgo.Error = __tmp__._1;
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1us") : GoString)),
		_micro2:Duration = __tmp__._0,
		_3:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.println(_hours);
	stdgo.fmt.Fmt.println(_complex);
	stdgo.fmt.Fmt.printf((Go.str("There are %.0f seconds in %v.\n") : GoString), Go.toInterface(_complex.seconds()), Go.toInterface(Go.asInterface(_complex)));
	stdgo.fmt.Fmt.printf((Go.str("There are %d nanoseconds in %v.\n") : GoString), Go.toInterface(_micro.nanoseconds()),
		Go.toInterface(Go.asInterface(_micro)));
	stdgo.fmt.Fmt.printf((Go.str("There are %6.2e seconds in %v.\n") : GoString), Go.toInterface(_micro2.seconds()), Go.toInterface(Go.asInterface(_micro)));
}

function exampleDuration_Hours():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("4h30m") : GoString)),
		_h:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.printf((Go.str("I\'ve got %.1f hours of work left.") : GoString), Go.toInterface(_h.hours()));
}

function exampleDuration_Microseconds():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1s") : GoString)),
		_u:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.printf((Go.str("One second is %d microseconds.\n") : GoString), Go.toInterface(_u.microseconds()));
}

function exampleDuration_Milliseconds():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1s") : GoString)),
		_u:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.printf((Go.str("One second is %d milliseconds.\n") : GoString), Go.toInterface(_u.milliseconds()));
}

function exampleDuration_Minutes():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1h30m") : GoString)),
		_m:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.printf((Go.str("The movie is %.0f minutes long.") : GoString), Go.toInterface(_m.minutes()));
}

function exampleDuration_Nanoseconds():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1µs") : GoString)),
		_u:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.printf((Go.str("One microsecond is %d nanoseconds.\n") : GoString), Go.toInterface(_u.nanoseconds()));
}

function exampleDuration_Seconds():Void {
	var __tmp__ = stdgo.time.Time.parseDuration((Go.str("1m30s") : GoString)),
		_m:Duration = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.printf((Go.str("Take off in t-%.0f seconds.") : GoString), Go.toInterface(_m.seconds()));
}

function _handle(_0:GoInt):Void {}

function exampleAfter():Void {
	Go.select([
		stdgo.time.Time.after(("10000000000" : Duration)).__get__() => {
			stdgo.fmt.Fmt.println((Go.str("timed out") : GoString));
		},
		var _m = _c.__get__() => {
			_handle(_m);
		}
	]);
}

function exampleSleep():Void {
	stdgo.time.Time.sleep((100000000 : Duration));
}

function _statusUpdate():GoString {
	return (Go.str() : GoString);
}

function exampleTick():Void {
	var _c = stdgo.time.Time.tick(("5000000000" : Duration));
	for (_next => _ in _c) {
		stdgo.fmt.Fmt.printf((Go.str("%v %s\n") : GoString), Go.toInterface(Go.asInterface(_next)), Go.toInterface(_statusUpdate()));
	};
}

function exampleMonth():Void {
	var __tmp__ = stdgo.time.Time.now().date(),
		_0:GoInt = __tmp__._0,
		_month:Month = __tmp__._1,
		_day:GoInt = __tmp__._2;
	if ((_month == (11 : Month)) && (_day == (10 : GoInt))) {
		stdgo.fmt.Fmt.println((Go.str("Happy Go day!") : GoString));
	};
}

function exampleDate():Void {
	var _t:Time = (stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.printf((Go.str("Go launched at %s\n") : GoString), Go.toInterface(Go.asInterface(_t.local())));
}

function exampleNewTicker():Void {
	var __deferstack__:Array<Void->Void> = [];
	var _ticker = stdgo.time.Time.newTicker((1000000000 : Duration));
	try {
		__deferstack__.unshift(() -> _ticker.stop());
		var _done = new Chan<Bool>(0, () -> false);
		Go.routine(() -> {
			var a = function():Void {
				stdgo.time.Time.sleep(("10000000000" : Duration));
				_done.__send__(true);
			};
			a();
		});
		while (true) {
			Go.select([
				var _t = _ticker.c.__get__() => {
					stdgo.fmt.Fmt.println((Go.str("Current time: ") : GoString), _t);
				}, _done
				.__get__() => {
					stdgo.fmt.Fmt.println((Go.str("Done!") : GoString));
					{
						for (defer in __deferstack__) {
							defer();
						};
						return;
					};
				}
			]);
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function exampleTime_Format():Void {
	var __tmp__ = stdgo.time.Time.parse((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString), (Go.str("Wed Feb 25 11:06:39 PST 2015") : GoString)),
		_t:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	var __tmp__ = stdgo.time.Time.loadLocation((Go.str("Asia/Shanghai") : GoString)),
		_tz:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	stdgo.fmt.Fmt.println((Go.str("default format:") : GoString), _t);
	stdgo.fmt.Fmt.println((Go.str("Unix format:") : GoString), _t.format((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString)));
	stdgo.fmt.Fmt.println((Go.str("Same, in UTC:") : GoString), _t.utc().format((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString)));
	stdgo.fmt.Fmt.println((Go.str("in Shanghai with seconds:") : GoString), _t.in_(_tz).format((Go.str("2006-01-02T15:04:05 -070000") : GoString)));
	stdgo.fmt.Fmt.println((Go.str("in Shanghai with colon seconds:") : GoString), _t.in_(_tz).format((Go.str("2006-01-02T15:04:05 -07:00:00") : GoString)));
	var _do:(GoString, GoString, GoString) -> Void = function(_name:GoString, _layout:GoString, _want:GoString):Void {
		var _got:GoString = _t.format(_layout);
		if (_want != _got) {
			stdgo.fmt.Fmt.printf((Go.str("error: for %q got %q; expected %q\n") : GoString), Go.toInterface(_layout), Go.toInterface(_got),
				Go.toInterface(_want));
			return;
		};
		stdgo.fmt.Fmt.printf((Go.str("%-16s %q gives %q\n") : GoString), Go.toInterface(_name), Go.toInterface(_layout), Go.toInterface(_got));
	};
	stdgo.fmt.Fmt.printf((Go.str("\nFormats:\n\n") : GoString));
	_do((Go.str("Basic full date") : GoString), (Go.str("Mon Jan 2 15:04:05 MST 2006") : GoString), (Go.str("Wed Feb 25 11:06:39 PST 2015") : GoString));
	_do((Go.str("Basic short date") : GoString), (Go.str("2006/01/02") : GoString), (Go.str("2015/02/25") : GoString));
	_do((Go.str("AM/PM") : GoString), (Go.str("3PM==3pm==15h") : GoString), (Go.str("11AM==11am==11h") : GoString));
	{
		var __tmp__ = stdgo.time.Time.parse((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString), (Go.str("Wed Feb 25 11:06:39.1234 PST 2015") : GoString));
		_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_err = __tmp__._1;
	};
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	_do((Go.str("No fraction") : GoString), (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString), (Go.str("Wed Feb 25 11:06:39 PST 2015") : GoString));
	_do((Go.str("0s for fraction") : GoString), (Go.str("15:04:05.00000") : GoString), (Go.str("11:06:39.12340") : GoString));
	_do((Go.str("9s for fraction") : GoString), (Go.str("15:04:05.99999999") : GoString), (Go.str("11:06:39.1234") : GoString));
}

function exampleTime_Format_pad():Void {
	var __tmp__ = stdgo.time.Time.parse((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString), (Go.str("Sat Mar 7 11:06:39 PST 2015") : GoString)),
		_t:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	var _do:(GoString, GoString, GoString) -> Void = function(_name:GoString, _layout:GoString, _want:GoString):Void {
		var _got:GoString = _t.format(_layout);
		if (_want != _got) {
			stdgo.fmt.Fmt.printf((Go.str("error: for %q got %q; expected %q\n") : GoString), Go.toInterface(_layout), Go.toInterface(_got),
				Go.toInterface(_want));
			return;
		};
		stdgo.fmt.Fmt.printf((Go.str("%-16s %q gives %q\n") : GoString), Go.toInterface(_name), Go.toInterface(_layout), Go.toInterface(_got));
	};
	_do((Go.str("Unix") : GoString), (Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString), (Go.str("Sat Mar  7 11:06:39 PST 2015") : GoString));
	_do((Go.str("No pad") : GoString), (Go.str("<2>") : GoString), (Go.str("<7>") : GoString));
	_do((Go.str("Spaces") : GoString), (Go.str("<_2>") : GoString), (Go.str("< 7>") : GoString));
	_do((Go.str("Zeros") : GoString), (Go.str("<02>") : GoString), (Go.str("<07>") : GoString));
	_do((Go.str("Suppressed pad") : GoString), (Go.str("04:05") : GoString), (Go.str("06:39") : GoString));
}

function exampleTime_GoString():Void {
	var _t:Time = (stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.println(_t.goString());
	_t = (_t.add(("60000000000" : Duration)) == null ? null : _t.add(("60000000000" : Duration)).__copy__());
	stdgo.fmt.Fmt.println(_t.goString());
	_t = (_t.addDate((0 : GoInt), (1 : GoInt), (0 : GoInt)) == null ? null : _t.addDate((0 : GoInt), (1 : GoInt), (0 : GoInt)).__copy__());
	stdgo.fmt.Fmt.println(_t.goString());
	{
		var __tmp__ = stdgo.time.Time.parse((Go.str("Jan 2, 2006 at 3:04pm (MST)") : GoString), (Go.str("Feb 3, 2013 at 7:54pm (UTC)") : GoString));
		_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
	};
	stdgo.fmt.Fmt.println(_t.goString());
}

function exampleParse():Void {
	var _longForm:GoString = (Go.str("Jan 2, 2006 at 3:04pm (MST)") : GoString);
	var __tmp__ = stdgo.time.Time.parse((Go.str("Jan 2, 2006 at 3:04pm (MST)") : GoString), (Go.str("Feb 3, 2013 at 7:54pm (PST)") : GoString)),
		_t:Time = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.println(_t);
	var _shortForm:GoString = (Go.str("2006-Jan-02") : GoString);
	{
		var __tmp__ = stdgo.time.Time.parse((Go.str("2006-Jan-02") : GoString), (Go.str("2013-Feb-03") : GoString));
		_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
	};
	stdgo.fmt.Fmt.println(_t);
	{
		var __tmp__ = stdgo.time.Time.parse((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04:05Z") : GoString));
		_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
	};
	stdgo.fmt.Fmt.println(_t);
	{
		var __tmp__ = stdgo.time.Time.parse((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04:05+07:00") : GoString));
		_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
	};
	stdgo.fmt.Fmt.println(_t);
	var __tmp__ = stdgo.time.Time.parse((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("2006-01-02T15:04:05Z07:00") : GoString)),
		_1:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.println((Go.str("error") : GoString), _err);
}

function exampleParseInLocation():Void {
	var __tmp__ = stdgo.time.Time.loadLocation((Go.str("Europe/Berlin") : GoString)),
		_loc:Ref<Location> = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	var _longForm:GoString = (Go.str("Jan 2, 2006 at 3:04pm (MST)") : GoString);
	var __tmp__ = stdgo.time.Time.parseInLocation((Go.str("Jan 2, 2006 at 3:04pm (MST)") : GoString), (Go.str("Jul 9, 2012 at 5:02am (CEST)") : GoString),
		_loc),
		_t:Time = __tmp__._0,
		_1:stdgo.Error = __tmp__._1;
	stdgo.fmt.Fmt.println(_t);
	var _shortForm:GoString = (Go.str("2006-Jan-02") : GoString);
	{
		var __tmp__ = stdgo.time.Time.parseInLocation((Go.str("2006-Jan-02") : GoString), (Go.str("2012-Jul-09") : GoString), _loc);
		_t = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
	};
	stdgo.fmt.Fmt.println(_t);
}

function exampleUnix():Void {
	var _unixTime:Time = (stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.println(_unixTime.unix());
	var _t:Time = (stdgo.time.Time.unix(_unixTime.unix(), (0 : GoInt64))
		.utc() == null ? null : stdgo.time.Time.unix(_unixTime.unix(), (0 : GoInt64))
		.utc()
		.__copy__());
	stdgo.fmt.Fmt.println(_t);
}

function exampleUnixMicro():Void {
	var _umt:Time = (stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.println(_umt.unixMicro());
	var _t:Time = (stdgo.time.Time.unixMicro(_umt.unixMicro())
		.utc() == null ? null : stdgo.time.Time.unixMicro(_umt.unixMicro())
		.utc()
		.__copy__());
	stdgo.fmt.Fmt.println(_t);
}

function exampleUnixMilli():Void {
	var _umt:Time = (stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.println(_umt.unixMilli());
	var _t:Time = (stdgo.time.Time.unixMilli(_umt.unixMilli())
		.utc() == null ? null : stdgo.time.Time.unixMilli(_umt.unixMilli())
		.utc()
		.__copy__());
	stdgo.fmt.Fmt.println(_t);
}

function exampleTime_Unix():Void {
	stdgo.fmt.Fmt.println(stdgo.time.Time.unix((1e+09 : GoInt64), (0 : GoInt64)).utc());
	stdgo.fmt.Fmt.println(stdgo.time.Time.unix((0 : GoInt64), (1e+18 : GoInt64)).utc());
	stdgo.fmt.Fmt.println(stdgo.time.Time.unix((2e+09 : GoInt64), ("-1000000000000000000" : GoInt64)).utc());
	var _t:Time = (stdgo.time.Time.date((2001 : GoInt), (9 : Month), (9 : GoInt), (1 : GoInt), (46 : GoInt), (40 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2001 : GoInt), (9 : Month), (9 : GoInt), (1 : GoInt), (46 : GoInt), (40 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.println(_t.unix());
	stdgo.fmt.Fmt.println(_t.unixNano());
}

function exampleTime_Round():Void {
	var _t:Time = (stdgo.time.Time.date((0 : GoInt), (0 : Month), (0 : GoInt), (12 : GoInt), (15 : GoInt), (30 : GoInt), (918273645 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((0 : GoInt), (0 : Month), (0 : GoInt), (12 : GoInt), (15 : GoInt), (30 : GoInt),
			(918273645 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _round = (new Slice<Duration>(0, 0, (1 : Duration), (1000 : Duration), (1000000 : Duration), (1000000000 : Duration), (2000000000 : Duration),
		("60000000000" : Duration), ("600000000000" : Duration), ("3600000000000" : Duration)) : Slice<Duration>);
	for (_0 => _d in _round) {
		stdgo.fmt.Fmt.printf((Go.str("t.Round(%6s) = %s\n") : GoString), Go.toInterface(Go.asInterface(_d)),
			Go.toInterface(_t.round(_d).format((Go.str("15:04:05.999999999") : GoString))));
	};
}

function exampleTime_Truncate():Void {
	var __tmp__ = stdgo.time.Time.parse((Go.str("2006 Jan 02 15:04:05") : GoString), (Go.str("2012 Dec 07 12:15:30.918273645") : GoString)),
		_t:Time = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	var _trunc = (new Slice<Duration>(0, 0, (1 : Duration), (1000 : Duration), (1000000 : Duration), (1000000000 : Duration), (2000000000 : Duration),
		("60000000000" : Duration), ("600000000000" : Duration)) : Slice<Duration>);
	for (_1 => _d in _trunc) {
		stdgo.fmt.Fmt.printf((Go.str("t.Truncate(%5s) = %s\n") : GoString), Go.toInterface(Go.asInterface(_d)),
			Go.toInterface(_t.truncate(_d).format((Go.str("15:04:05.999999999") : GoString))));
	};
	var _midnight:Time = (stdgo.time.Time.date(_t.year(), _t.month(), _t.day(), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.local) == null ? null : stdgo.time.Time.date(_t.year(), _t.month(), _t.day(), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			stdgo.time.Time.local)
		.__copy__());
	_midnight;
}

function exampleLoadLocation():Void {
	var __tmp__ = stdgo.time.Time.loadLocation((Go.str("America/Los_Angeles") : GoString)),
		_location:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	var _timeInUTC:Time = (stdgo.time.Time.date((2018 : GoInt), (8 : Month), (30 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2018 : GoInt), (8 : Month), (30 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	stdgo.fmt.Fmt.println(_timeInUTC.in_(_location));
}

function exampleLocation():Void {
	var _secondsEastOfUTC:GoInt = (("28800000000000" : Duration).seconds() : GoInt);
	var _beijing = stdgo.time.Time.fixedZone((Go.str("Beijing Time") : GoString), _secondsEastOfUTC);
	var _timeInUTC:Time = (stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _sameTimeInBeijing:Time = (stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (20 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		_beijing) == null ? null : stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (20 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_beijing)
		.__copy__());
	var _timesAreEqual:Bool = _timeInUTC.equal((_sameTimeInBeijing == null ? null : _sameTimeInBeijing.__copy__()));
	stdgo.fmt.Fmt.println(_timesAreEqual);
}

function exampleTime_Add():Void {
	var _start:Time = (stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _afterTenSeconds:Time = (_start.add(("10000000000" : Duration)) == null ? null : _start.add(("10000000000" : Duration)).__copy__());
	var _afterTenMinutes:Time = (_start.add(("600000000000" : Duration)) == null ? null : _start.add(("600000000000" : Duration)).__copy__());
	var _afterTenHours:Time = (_start.add(("36000000000000" : Duration)) == null ? null : _start.add(("36000000000000" : Duration)).__copy__());
	var _afterTenDays:Time = (_start.add(("864000000000000" : Duration)) == null ? null : _start.add(("864000000000000" : Duration)).__copy__());
	stdgo.fmt.Fmt.printf((Go.str("start = %v\n") : GoString), Go.toInterface(Go.asInterface(_start)));
	stdgo.fmt.Fmt.printf((Go.str("start.Add(time.Second * 10) = %v\n") : GoString), Go.toInterface(Go.asInterface(_afterTenSeconds)));
	stdgo.fmt.Fmt.printf((Go.str("start.Add(time.Minute * 10) = %v\n") : GoString), Go.toInterface(Go.asInterface(_afterTenMinutes)));
	stdgo.fmt.Fmt.printf((Go.str("start.Add(time.Hour * 10) = %v\n") : GoString), Go.toInterface(Go.asInterface(_afterTenHours)));
	stdgo.fmt.Fmt.printf((Go.str("start.Add(time.Hour * 24 * 10) = %v\n") : GoString), Go.toInterface(Go.asInterface(_afterTenDays)));
}

function exampleTime_AddDate():Void {
	var _start:Time = (stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _oneDayLater:Time = (_start.addDate((0 : GoInt), (0 : GoInt),
		(1 : GoInt)) == null ? null : _start.addDate((0 : GoInt), (0 : GoInt), (1 : GoInt)).__copy__());
	var _oneMonthLater:Time = (_start.addDate((0 : GoInt), (1 : GoInt),
		(0 : GoInt)) == null ? null : _start.addDate((0 : GoInt), (1 : GoInt), (0 : GoInt)).__copy__());
	var _oneYearLater:Time = (_start.addDate((1 : GoInt), (0 : GoInt),
		(0 : GoInt)) == null ? null : _start.addDate((1 : GoInt), (0 : GoInt), (0 : GoInt)).__copy__());
	stdgo.fmt.Fmt.printf((Go.str("oneDayLater: start.AddDate(0, 0, 1) = %v\n") : GoString), Go.toInterface(Go.asInterface(_oneDayLater)));
	stdgo.fmt.Fmt.printf((Go.str("oneMonthLater: start.AddDate(0, 1, 0) = %v\n") : GoString), Go.toInterface(Go.asInterface(_oneMonthLater)));
	stdgo.fmt.Fmt.printf((Go.str("oneYearLater: start.AddDate(1, 0, 0) = %v\n") : GoString), Go.toInterface(Go.asInterface(_oneYearLater)));
}

function exampleTime_After():Void {
	var _year2000:Time = (stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _year3000:Time = (stdgo.time.Time.date((3000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((3000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _isYear3000AfterYear2000:Bool = _year3000.after((_year2000 == null ? null : _year2000.__copy__()));
	var _isYear2000AfterYear3000:Bool = _year2000.after((_year3000 == null ? null : _year3000.__copy__()));
	stdgo.fmt.Fmt.printf((Go.str("year3000.After(year2000) = %v\n") : GoString), Go.toInterface(_isYear3000AfterYear2000));
	stdgo.fmt.Fmt.printf((Go.str("year2000.After(year3000) = %v\n") : GoString), Go.toInterface(_isYear2000AfterYear3000));
}

function exampleTime_Before():Void {
	var _year2000:Time = (stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _year3000:Time = (stdgo.time.Time.date((3000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((3000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _isYear2000BeforeYear3000:Bool = _year2000.before((_year3000 == null ? null : _year3000.__copy__()));
	var _isYear3000BeforeYear2000:Bool = _year3000.before((_year2000 == null ? null : _year2000.__copy__()));
	stdgo.fmt.Fmt.printf((Go.str("year2000.Before(year3000) = %v\n") : GoString), Go.toInterface(_isYear2000BeforeYear3000));
	stdgo.fmt.Fmt.printf((Go.str("year3000.Before(year2000) = %v\n") : GoString), Go.toInterface(_isYear3000BeforeYear2000));
}

function exampleTime_Date():Void {
	var _d:Time = (stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (30 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var __tmp__ = _d.date(),
		_year:GoInt = __tmp__._0,
		_month:Month = __tmp__._1,
		_day:GoInt = __tmp__._2;
	stdgo.fmt.Fmt.printf((Go.str("year = %v\n") : GoString), Go.toInterface(_year));
	stdgo.fmt.Fmt.printf((Go.str("month = %v\n") : GoString), Go.toInterface(Go.asInterface(_month)));
	stdgo.fmt.Fmt.printf((Go.str("day = %v\n") : GoString), Go.toInterface(_day));
}

function exampleTime_Day():Void {
	var _d:Time = (stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (30 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _day:GoInt = _d.day();
	stdgo.fmt.Fmt.printf((Go.str("day = %v\n") : GoString), Go.toInterface(_day));
}

function exampleTime_Equal():Void {
	var _secondsEastOfUTC:GoInt = (("28800000000000" : Duration).seconds() : GoInt);
	var _beijing = stdgo.time.Time.fixedZone((Go.str("Beijing Time") : GoString), _secondsEastOfUTC);
	var _d1:Time = (stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (30 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _d2:Time = (stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (20 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
		_beijing) == null ? null : stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (20 : GoInt), (30 : GoInt), (0 : GoInt), (0 : GoInt),
			_beijing)
		.__copy__());
	var _datesEqualUsingEqualOperator:Bool = _d1 == _d2;
	var _datesEqualUsingFunction:Bool = _d1.equal((_d2 == null ? null : _d2.__copy__()));
	stdgo.fmt.Fmt.printf((Go.str("datesEqualUsingEqualOperator = %v\n") : GoString), Go.toInterface(_datesEqualUsingEqualOperator));
	stdgo.fmt.Fmt.printf((Go.str("datesEqualUsingFunction = %v\n") : GoString), Go.toInterface(_datesEqualUsingFunction));
}

function exampleTime_String():Void {
	var _timeWithNanoseconds:Time = (stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (13 : GoInt), (14 : GoInt), (15 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (13 : GoInt), (14 : GoInt),
			(15 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _withNanoseconds:GoString = (_timeWithNanoseconds.string() : GoString);
	var _timeWithoutNanoseconds:Time = (stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (13 : GoInt), (14 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (2 : Month), (1 : GoInt), (12 : GoInt), (13 : GoInt), (14 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _withoutNanoseconds:GoString = (_timeWithoutNanoseconds.string() : GoString);
	stdgo.fmt.Fmt.printf((Go.str("withNanoseconds = %v\n") : GoString), Go.toInterface((_withNanoseconds : GoString)));
	stdgo.fmt.Fmt.printf((Go.str("withoutNanoseconds = %v\n") : GoString), Go.toInterface((_withoutNanoseconds : GoString)));
}

function exampleTime_Sub():Void {
	var _start:Time = (stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _end:Time = (stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2000 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _difference:Duration = _end.sub((_start == null ? null : _start.__copy__()));
	stdgo.fmt.Fmt.printf((Go.str("difference = %v\n") : GoString), Go.toInterface(Go.asInterface(_difference)));
}

function exampleTime_AppendFormat():Void {
	var _t:Time = (stdgo.time.Time.date((2017 : GoInt), (11 : Month), (4 : GoInt), (11 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		stdgo.time.Time.utc) == null ? null : stdgo.time.Time.date((2017 : GoInt), (11 : Month), (4 : GoInt), (11 : GoInt), (0 : GoInt), (0 : GoInt),
			(0 : GoInt), stdgo.time.Time.utc)
		.__copy__());
	var _text = ((Go.str("Time: ") : GoString) : Slice<GoByte>);
	_text = _t.appendFormat(_text, (Go.str("3:04PM") : GoString));
	stdgo.fmt.Fmt.println((_text : GoString));
}

function exampleFixedZone():Void {
	var _loc = stdgo.time.Time.fixedZone((Go.str("UTC-8") : GoString), (-28800 : GoInt));
	var _t:Time = (stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		_loc) == null ? null : stdgo.time.Time.date((2009 : GoInt), (11 : Month), (10 : GoInt), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc)
		.__copy__());
	stdgo.fmt.Fmt.println((Go.str("The time is:") : GoString), _t.format((Go.str("02 Jan 06 15:04 MST") : GoString)));
}

function testNextStdChunk(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _markChunks:GoString->GoString = function(_format:GoString):GoString {
		var _out:GoString = (Go.str() : GoString);
		{
			var _s:GoString = _format;
			while (_s != (Go.str() : GoString)) {
				var __tmp__ = nextStdChunk(_s), _prefix:GoString = __tmp__._0, _std:GoInt = __tmp__._1, _suffix:GoString = __tmp__._2;
				_out = _out + (_prefix);
				if (_std > (0 : GoInt)) {
					_out = _out + (((Go.str("(") : GoString) + stdChunkNames[_std]) + (Go.str(")") : GoString));
				};
				_s = _suffix;
			};
		};
		return _out;
	};
	var _noParens:GoInt32->GoInt32 = function(_r:GoRune):GoRune {
		if ((_r == ("(".code : GoInt32)) || (_r == (")".code : GoInt32))) {
			return (-1 : GoInt32);
		};
		return _r;
	};
	for (_0 => _marked in _nextStdChunkTests) {
		var _format:GoString = stdgo.strings.Strings.map(_noParens, _marked);
		var _out:GoString = _markChunks(_format);
		if (_out != _marked) {
			_t.errorf((Go.str("nextStdChunk parses %q as %q, want %q") : GoString), Go.toInterface(_format), Go.toInterface(_out), Go.toInterface(_marked));
		};
	};
}

function testRFC3339Conversion(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _f in _rfc3339Formats) {
		if (_f._time.format((Go.str("2006-01-02T15:04:05Z07:00") : GoString)) != _f._formattedValue) {
			_t.error(Go.toInterface((Go.str("RFC3339:") : GoString)));
			_t.errorf((Go.str("  want=%+v") : GoString), Go.toInterface(_f._formattedValue));
			_t.errorf((Go.str("  have=%+v") : GoString), Go.toInterface(_f._time.format((Go.str("2006-01-02T15:04:05Z07:00") : GoString))));
		};
	};
}

function testFormat(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _time:Time = (unix((0 : GoInt64),
		("1233810057012345600" : GoInt64)) == null ? null : unix((0 : GoInt64), ("1233810057012345600" : GoInt64)).__copy__());
	for (_0 => _test in _formatTests) {
		var _result:GoString = _time.format(_test._format);
		if (_result != _test._result) {
			_t.errorf((Go.str("%s expected %q got %q") : GoString), Go.toInterface(_test._name), Go.toInterface(_test._result), Go.toInterface(_result));
		};
	};
}

function testGoString(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _goStringTests) {
		if (_tt._in.goString() != _tt._want) {
			_t.errorf((Go.str("GoString (%q): got %q want %q") : GoString), Go.toInterface(Go.asInterface(_tt._in)), Go.toInterface(_tt._in.goString()),
				Go.toInterface(_tt._want));
		};
	};
}

/**
	// issue 12440.
**/
function testFormatSingleDigits(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _time:Time = (date((2001 : GoInt), (2 : Month), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (700000000 : GoInt),
		utc) == null ? null : date((2001 : GoInt), (2 : Month), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt), (700000000 : GoInt), utc).__copy__());
	var _test:stdgo.time_test.Time_test.FormatTest = (new stdgo.time_test.Time_test.FormatTest((Go.str("single digit format") : GoString),
		(Go.str("3:4:5") : GoString), (Go.str("4:5:6") : GoString)) : stdgo.time_test.Time_test.FormatTest);
	var _result:GoString = _time.format(_test._format);
	if (_result != _test._result) {
		_t.errorf((Go.str("%s expected %q got %q") : GoString), Go.toInterface(_test._name), Go.toInterface(_test._result), Go.toInterface(_result));
	};
}

function testFormatShortYear(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _years = (new Slice<GoInt>(0, 0, (-100001 : GoInt), (-100000 : GoInt), (-99999 : GoInt), (-10001 : GoInt), (-10000 : GoInt), (-9999 : GoInt),
		(-1001 : GoInt), (-1000 : GoInt), (-999 : GoInt), (-101 : GoInt), (-100 : GoInt), (-99 : GoInt), (-11 : GoInt), (-10 : GoInt), (-9 : GoInt),
		(-1 : GoInt), (0 : GoInt), (1 : GoInt), (9 : GoInt), (10 : GoInt), (11 : GoInt), (99 : GoInt), (100 : GoInt), (101 : GoInt), (999 : GoInt),
		(1000 : GoInt), (1001 : GoInt), (9999 : GoInt), (10000 : GoInt), (10001 : GoInt), (99999 : GoInt), (100000 : GoInt), (100001 : GoInt)) : Slice<GoInt>);
	for (_0 => _y in _years) {
		var _time:Time = (date(_y, (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date(_y, (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), utc).__copy__());
		var _result:GoString = _time.format((Go.str("2006.01.02") : GoString));
		var _want:GoString = ("" : GoString);
		if (_y < (0:GoInt)) {
			_want = stdgo.fmt.Fmt.sprintf((Go.str("-%04d.%02d.%02d") : GoString), Go.toInterface(-_y), Go.toInterface((1 : GoInt)),
				Go.toInterface((1 : GoInt)));
		} else {
			_want = stdgo.fmt.Fmt.sprintf((Go.str("%04d.%02d.%02d") : GoString), Go.toInterface(_y), Go.toInterface((1 : GoInt)), Go.toInterface((1 : GoInt)));
		};
		if (_result != _want) {
			_t.errorf((Go.str("(jan 1 %d).Format(\"2006.01.02\") = %q, want %q") : GoString), Go.toInterface(_y), Go.toInterface(_result),
				Go.toInterface(_want));
		};
	};
}

function testParse(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _parseTests) {
		var __tmp__ = parse(_test._format, _test._value),
			_time:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.errorf((Go.str("%s error: %v") : GoString), Go.toInterface(_test._name), Go.toInterface(_err));
		} else {
			_checkTime((_time == null ? null : _time.__copy__()), _test, _t);
		};
	};
}

function testParseDayOutOfRange(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _dayOutOfRangeTests) {
		var __tmp__ = parse((Go.str("Mon Jan _2 15:04:05 2006") : GoString), _test._date),
			_1:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_test._ok && (_err == null)) {} else if (!_test._ok && (_err != null)) {
			if (!stdgo.strings.Strings.contains(_err.error(), (Go.str("day out of range") : GoString))) {
				_t.errorf((Go.str("%q: expected \'day\' error, got %v") : GoString), Go.toInterface(_test._date), Go.toInterface(_err));
			};
		} else if (_test._ok && (_err != null)) {
			_t.errorf((Go.str("%q: unexpected error: %v") : GoString), Go.toInterface(_test._date), Go.toInterface(_err));
		} else if (!_test._ok && (_err == null)) {
			_t.errorf((Go.str("%q: expected \'day\' error, got none") : GoString), Go.toInterface(_test._date));
		};
	};
}

/**
	// TestParseInLocation checks that the Parse and ParseInLocation
	// functions do not get confused by the fact that AST (Arabia Standard
	// Time) and AST (Atlantic Standard Time) are different time zones,
	// even though they have the same abbreviation.
	//
	// ICANN has been slowly phasing out invented abbreviation in favor of
	// numeric time zones (for example, the Asia/Baghdad time zone
	// abbreviation got changed from AST to +03 in the 2017a tzdata
	// release); but we still want to make sure that the time package does
	// not get confused on systems with slightly older tzdata packages.
**/
function testParseInLocation(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = loadLocation((Go.str("Asia/Baghdad") : GoString)),
		_baghdad:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var _t1:Time = ({} : Time), _t2:Time = ({} : Time);
	{
		var __tmp__ = parseInLocation((Go.str("Jan 02 2006 MST") : GoString), (Go.str("Feb 01 2013 AST") : GoString), _baghdad);
		_t1 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = _t1.zone(),
		_0:GoString = __tmp__._0,
		_offset:GoInt = __tmp__._1;
	if (_offset != (0 : GoInt)) {
		_t2 = (date((2013 : GoInt), (2 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_baghdad) == null ? null : date((2013 : GoInt), (2 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_baghdad).__copy__());
		if (_t1 != _t2) {
			_t.fatalf((Go.str("ParseInLocation(Feb 01 2013 AST, Baghdad) = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_t1)),
				Go.toInterface(Go.asInterface(_t2)));
		};
		if (_offset != (10800 : GoInt)) {
			_t.fatalf((Go.str("ParseInLocation(Feb 01 2013 AST, Baghdad).Zone = _, %d, want _, %d") : GoString), Go.toInterface(_offset),
				Go.toInterface((10800 : GoInt)));
		};
	};
	var __tmp__ = loadLocation((Go.str("America/Blanc-Sablon") : GoString)),
		_blancSablon:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	{
		var __tmp__ = parseInLocation((Go.str("Jan 02 2006 MST") : GoString), (Go.str("Feb 01 2013 AST") : GoString), _blancSablon);
		_t1 = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	_t2 = (date((2013 : GoInt), (2 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		_blancSablon) == null ? null : date((2013 : GoInt), (2 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_blancSablon).__copy__());
	if (_t1 != _t2) {
		_t.fatalf((Go.str("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon) = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_t1)),
			Go.toInterface(Go.asInterface(_t2)));
	};
	{
		var __tmp__ = _t1.zone();
		_offset = __tmp__._1;
	};
	if (_offset != (-14400 : GoInt)) {
		_t.fatalf((Go.str("ParseInLocation(Feb 01 2013 AST, Blanc-Sablon).Zone = _, %d, want _, %d") : GoString), Go.toInterface(_offset),
			Go.toInterface((-14400 : GoInt)));
	};
}

function testLoadLocationZipFile(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var __tmp__ = loadLocation((Go.str("Australia/Sydney") : GoString)),
			_0:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Problematic time zone format needs special tests.
**/
function testRubyParse(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _rubyTests) {
		var __tmp__ = parse(_test._format, _test._value),
			_time:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.errorf((Go.str("%s error: %v") : GoString), Go.toInterface(_test._name), Go.toInterface(_err));
		} else {
			_checkTime((_time == null ? null : _time.__copy__()), _test, _t);
		};
	};
}

function _checkTime(_time:Time, _test:Ref<ParseTest>, _t:Ref<stdgo.testing.Testing.T>):Void {
	if ((_test._yearSign >= (0 : GoInt)) && ((_test._yearSign * _time.year()) != (2010 : GoInt))) {
		_t.errorf((Go.str("%s: bad year: %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_time.year()), Go.toInterface((2010 : GoInt)));
	};
	if (_time.month() != (2 : Month)) {
		_t.errorf((Go.str("%s: bad month: %s not %s") : GoString), Go.toInterface(_test._name), Go.toInterface(Go.asInterface(_time.month())),
			Go.toInterface(Go.asInterface((2 : Month))));
	};
	if (_time.day() != (4 : GoInt)) {
		_t.errorf((Go.str("%s: bad day: %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_time.day()), Go.toInterface((4 : GoInt)));
	};
	if (_time.hour() != (21 : GoInt)) {
		_t.errorf((Go.str("%s: bad hour: %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_time.hour()), Go.toInterface((21 : GoInt)));
	};
	if (_time.minute() != (0 : GoInt)) {
		_t.errorf((Go.str("%s: bad minute: %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_time.minute()), Go.toInterface((0 : GoInt)));
	};
	if (_time.second() != (57 : GoInt)) {
		_t.errorf((Go.str("%s: bad second: %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_time.second()), Go.toInterface((57 : GoInt)));
	};
	var __tmp__ = stdgo.strconv.Strconv.parseUint(((Go.str("012345678") : GoString).__slice__(0, _test._fracDigits) : GoString)
		+ ((Go.str("000000000") : GoString).__slice__(0, (9 : GoInt) - _test._fracDigits) : GoString),
		(10 : GoInt), (0 : GoInt)),
		_nanosec:GoUInt64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	if (_time.nanosecond() != (_nanosec : GoInt)) {
		_t.errorf((Go.str("%s: bad nanosecond: %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_time.nanosecond()),
			Go.toInterface(_nanosec));
	};
	var __tmp__ = _time.zone(),
		_name:GoString = __tmp__._0,
		_offset:GoInt = __tmp__._1;
	if (_test._hasTZ && (_offset != (-28800 : GoInt))) {
		_t.errorf((Go.str("%s: bad tz offset: %s %d not %d") : GoString), Go.toInterface(_test._name), Go.toInterface(_name), Go.toInterface(_offset),
			Go.toInterface((-28800 : GoInt)));
	};
	if (_test._hasWD && (_time.weekday() != (4 : Weekday))) {
		_t.errorf((Go.str("%s: bad weekday: %s not %s") : GoString), Go.toInterface(_test._name), Go.toInterface(Go.asInterface(_time.weekday())),
			Go.toInterface(Go.asInterface((4 : Weekday))));
	};
}

function testFormatAndParse(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _fmt:GoString = (Go.str("Mon MST 2006-01-02T15:04:05Z07:00") : GoString);
	var _f:GoInt64->Bool = function(_sec:GoInt64):Bool {
		var _t1:Time = (unix(_sec / (2 : GoInt64), (0 : GoInt64)) == null ? null : unix(_sec / (2 : GoInt64), (0 : GoInt64)).__copy__());
		if (((_t1.year() < (1000:GoInt)) || (_t1.year() > (9999 : GoInt))) || (_t1.unix() != _sec)) {
			return true;
		};
		var __tmp__ = parse((Go.str("Mon MST 2006-01-02T15:04:05Z07:00") : GoString),
			_t1.format((Go.str("Mon MST 2006-01-02T15:04:05Z07:00") : GoString))), _t2:Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.errorf((Go.str("error: %s") : GoString), Go.toInterface(_err));
			return false;
		};
		if ((_t1.unix() != _t2.unix()) || (_t1.nanosecond() != _t2.nanosecond())) {
			_t.errorf((Go.str("FormatAndParse %d: %q(%d) %q(%d)") : GoString), Go.toInterface(_sec), Go.toInterface(Go.asInterface(_t1)),
				Go.toInterface(_t1.unix()), Go.toInterface(Go.asInterface(_t2)), Go.toInterface(_t2.unix()));
			return false;
		};
		return true;
	};
	var _f32:GoInt32->Bool = function(_sec:GoInt32):Bool {
		return _f((_sec : GoInt64));
	};
	var _cfg = ({maxCount: (10000 : GoInt)} : stdgo.testing.quick.Quick.Config);
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f32), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

function testParseTimeZone(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _parseTimeZoneTests) {
		var __tmp__ = parseTimeZone(_test._value),
			_length:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok != _test._ok) {
			_t.errorf((Go.str("expected %t for %q got %t") : GoString), Go.toInterface(_test._ok), Go.toInterface(_test._value), Go.toInterface(_ok));
		} else if (_length != _test._length) {
			_t.errorf((Go.str("expected %d for %q got %d") : GoString), Go.toInterface(_test._length), Go.toInterface(_test._value), Go.toInterface(_length));
		};
	};
}

function testParseErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _parseErrorTests) {
		var __tmp__ = parse(_test._format, _test._value),
			_1:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			_t.errorf((Go.str("expected error for %q %q") : GoString), Go.toInterface(_test._format), Go.toInterface(_test._value));
		} else if (!stdgo.strings.Strings.contains(_err.error(), _test._expect)) {
			_t.errorf((Go.str("expected error with %q for %q %q; got %s") : GoString), Go.toInterface(_test._expect), Go.toInterface(_test._format),
				Go.toInterface(_test._value), Go.toInterface(_err));
		};
	};
}

function testNoonIs12PM(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _noon:Time = (date((0 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((0 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), utc).__copy__());
	var _expect:GoString = (Go.str("12:00PM") : GoString);
	var _got:GoString = _noon.format((Go.str("3:04PM") : GoString));
	if (_got != (Go.str("12:00PM") : GoString)) {
		_t.errorf((Go.str("got %q; expect %q") : GoString), Go.toInterface(_got), Go.toInterface((Go.str("12:00PM") : GoString)));
	};
	_got = _noon.format((Go.str("03:04PM") : GoString));
	if (_got != (Go.str("12:00PM") : GoString)) {
		_t.errorf((Go.str("got %q; expect %q") : GoString), Go.toInterface(_got), Go.toInterface((Go.str("12:00PM") : GoString)));
	};
}

function testMidnightIs12AM(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _midnight:Time = (date((0 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
		utc) == null ? null : date((0 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), utc).__copy__());
	var _expect:GoString = (Go.str("12:00AM") : GoString);
	var _got:GoString = _midnight.format((Go.str("3:04PM") : GoString));
	if (_got != _expect) {
		_t.errorf((Go.str("got %q; expect %q") : GoString), Go.toInterface(_got), Go.toInterface(_expect));
	};
	_got = _midnight.format((Go.str("03:04PM") : GoString));
	if (_got != _expect) {
		_t.errorf((Go.str("got %q; expect %q") : GoString), Go.toInterface(_got), Go.toInterface(_expect));
	};
}

function test12PMIsNoon(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = parse((Go.str("3:04PM") : GoString), (Go.str("12:00PM") : GoString)),
		_noon:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
	};
	if (_noon.hour() != (12 : GoInt)) {
		_t.errorf((Go.str("got %d; expect 12") : GoString), Go.toInterface(_noon.hour()));
	};
	{
		var __tmp__ = parse((Go.str("03:04PM") : GoString), (Go.str("12:00PM") : GoString));
		_noon = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
	};
	if (_noon.hour() != (12 : GoInt)) {
		_t.errorf((Go.str("got %d; expect 12") : GoString), Go.toInterface(_noon.hour()));
	};
}

function test12AMIsMidnight(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = parse((Go.str("3:04PM") : GoString), (Go.str("12:00AM") : GoString)),
		_midnight:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
	};
	if (_midnight.hour() != (0 : GoInt)) {
		_t.errorf((Go.str("got %d; expect 0") : GoString), Go.toInterface(_midnight.hour()));
	};
	{
		var __tmp__ = parse((Go.str("03:04PM") : GoString), (Go.str("12:00AM") : GoString));
		_midnight = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
		_err = __tmp__._1;
	};
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
	};
	if (_midnight.hour() != (0 : GoInt)) {
		_t.errorf((Go.str("got %d; expect 0") : GoString), Go.toInterface(_midnight.hour()));
	};
}

/**
	// Check that a time without a Zone still produces a (numeric) time zone
	// when formatted with MST as a requested zone.
**/
function testMissingZone(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = parse((Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString), (Go.str("Thu Feb 02 16:10:03 -0500 2006") : GoString)),
		_time:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
	};
	var _expect:GoString = (Go.str("Thu Feb  2 16:10:03 -0500 2006") : GoString);
	var _str:GoString = _time.format((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString));
	if (_str != _expect) {
		_t.errorf((Go.str("got %s; expect %s") : GoString), Go.toInterface(_str), Go.toInterface(_expect));
	};
}

function testMinutesInTimeZone(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = parse((Go.str("Mon Jan 02 15:04:05 -0700 2006") : GoString), (Go.str("Mon Jan 02 15:04:05 +0123 2006") : GoString)),
		_time:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
	};
	var _expected:GoInt = (4980 : GoInt);
	var __tmp__ = _time.zone(),
		_0:GoString = __tmp__._0,
		_offset:GoInt = __tmp__._1;
	if (_offset != _expected) {
		_t.errorf((Go.str("ZoneOffset = %d, want %d") : GoString), Go.toInterface(_offset), Go.toInterface(_expected));
	};
}

function testParseSecondsInTimeZone(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _secondsTimeZoneOffsetTests) {
		var __tmp__ = parse(_test._format, _test._value),
			_time:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface((Go.str("error parsing date:") : GoString)), Go.toInterface(_err));
		};
		var __tmp__ = _time.zone(),
			_1:GoString = __tmp__._0,
			_offset:GoInt = __tmp__._1;
		if (_offset != _test._expectedoffset) {
			_t.errorf((Go.str("ZoneOffset = %d, want %d") : GoString), Go.toInterface(_offset), Go.toInterface(_test._expectedoffset));
		};
	};
}

function testFormatSecondsInTimeZone(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _secondsTimeZoneOffsetTests) {
		var _d:Time = (date((1871 : GoInt), (1 : Month), (1 : GoInt), (5 : GoInt), (33 : GoInt), (2 : GoInt), (0 : GoInt),
			fixedZone((Go.str("LMT") : GoString),
				_test._expectedoffset)) == null ? null : date((1871 : GoInt), (1 : Month), (1 : GoInt), (5 : GoInt), (33 : GoInt), (2 : GoInt), (0 : GoInt),
				fixedZone((Go.str("LMT") : GoString), _test._expectedoffset)).__copy__());
		var _timestr:GoString = _d.format(_test._format);
		if (_timestr != _test._value) {
			_t.errorf((Go.str("Format = %s, want %s") : GoString), Go.toInterface(_timestr), Go.toInterface(_test._value));
		};
	};
}

/**
	// Issue 11334.
**/
function testUnderscoreTwoThousand(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _format:GoString = (Go.str("15:04_20060102") : GoString);
	var _input:GoString = (Go.str("14:38_20150618") : GoString);
	var __tmp__ = parse(_format, _input),
		_time:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.error(Go.toInterface(_err));
	};
	{
		var __tmp__ = _time.date(),
			_y:GoInt = __tmp__._0,
			_m:Month = __tmp__._1,
			_d:GoInt = __tmp__._2;
		if (((_y != (2015 : GoInt)) || (_m != (6 : Month))) || (_d != (18 : GoInt))) {
			_t.errorf((Go.str("Incorrect y/m/d, got %d/%d/%d") : GoString), Go.toInterface(_y), Go.toInterface(Go.asInterface(_m)), Go.toInterface(_d));
		};
	};
	{
		var _h:GoInt = _time.hour();
		if (_h != (14 : GoInt)) {
			_t.errorf((Go.str("Incorrect hour, got %d") : GoString), Go.toInterface(_h));
		};
	};
	{
		var _m:GoInt = _time.minute();
		if (_m != (38 : GoInt)) {
			_t.errorf((Go.str("Incorrect minute, got %d") : GoString), Go.toInterface(_m));
		};
	};
}

/**
	// Issue 29918, 29916
**/
function testStd0xParseError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_2>(0, 0,
		({_format: (Go.str("01 MST") : GoString), _value: (Go.str("0 MST") : GoString), _valueElemPrefix: (Go.str("0") : GoString)} : T__struct_2),
		({_format: (Go.str("01 MST") : GoString), _value: (Go.str("1 MST") : GoString), _valueElemPrefix: (Go.str("1") : GoString)} : T__struct_2),
		({_format: (Go.str("Monday, 02-Jan-06 15:04:05 MST") : GoString), _value: (Go.str("Thursday, 04-Feb-1 21:00:57 PST") : GoString),
			_valueElemPrefix: (Go.str("1") : GoString)} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _tt in _tests) {
		var __tmp__ = parse(_tt._format, _tt._value),
			_1:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			_t.errorf((Go.str("Parse(%q, %q) did not fail as expected") : GoString), Go.toInterface(_tt._format), Go.toInterface(_tt._value));
		} else {
			var __tmp__ = try {
				{value: ((_err.__underlying__().value : Dynamic) : Ref<ParseError>), ok: true};
			} catch (_) {
				{value: (null : ParseError), ok: false};
			}, _perr = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf((Go.str("Parse(%q, %q) returned error type %T, expected ParseError") : GoString), Go.toInterface(_tt._format),
					Go.toInterface(_tt._value), Go.toInterface(_perr));
			} else if (!stdgo.strings.Strings.contains(_perr.error(), (Go.str("cannot parse") : GoString))
				|| !stdgo.strings.Strings.hasPrefix(_perr.valueElem, _tt._valueElemPrefix)) {
				_t.errorf((Go.str("Parse(%q, %q) returned wrong parsing error message: %v") : GoString), Go.toInterface(_tt._format),
					Go.toInterface(_tt._value), Go.toInterface(_perr));
			};
		};
	};
}

function testParseMonthOutOfRange(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _monthOutOfRangeTests) {
		var __tmp__ = parse((Go.str("01-02") : GoString), _test._value),
			_1:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (!_test._ok && (_err != null)) {
			if (!stdgo.strings.Strings.contains(_err.error(), (Go.str("month out of range") : GoString))) {
				_t.errorf((Go.str("%q: expected \'month\' error, got %v") : GoString), Go.toInterface(_test._value), Go.toInterface(_err));
			};
		} else if (_test._ok && (_err != null)) {
			_t.errorf((Go.str("%q: unexpected error: %v") : GoString), Go.toInterface(_test._value), Go.toInterface(_err));
		} else if (!_test._ok && (_err == null)) {
			_t.errorf((Go.str("%q: expected \'month\' error, got none") : GoString), Go.toInterface(_test._value));
		};
	};
}

/**
	// Issue 37387.
**/
function testParseYday(_t:Ref<stdgo.testing.Testing.T>):Void {
	_t.parallel();
	{
		var _i:GoInt = (1 : GoInt);
		Go.cfor(_i <= (365 : GoInt), _i++, {
			var _d:GoString = stdgo.fmt.Fmt.sprintf((Go.str("2020-%03d") : GoString), Go.toInterface(_i));
			var __tmp__ = parse((Go.str("2006-002") : GoString), _d),
				_tm:Time = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.errorf((Go.str("unexpected error for %s: %v") : GoString), Go.toInterface(_d), Go.toInterface(_err));
			} else if ((_tm.year() != (2020 : GoInt)) || (_tm.yearDay() != _i)) {
				_t.errorf((Go.str("got year %d yearday %d, want %d %d") : GoString), Go.toInterface(_tm.year()), Go.toInterface(_tm.yearDay()),
					Go.toInterface((2020 : GoInt)), Go.toInterface(_i));
			};
		});
	};
}

/**
	// Issue 45391.
**/
function testQuote(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_4>(0, 0, ({_s: ("\"" : GoString), _want: ("\"\\\"\"" : GoString)} : T__struct_4),
		({_s: ("abc\"xyz\"" : GoString), _want: ("\"abc\\\"xyz\\\"\"" : GoString)} : T__struct_4),
		({_s: (Go.str() : GoString), _want: ("\"\"" : GoString)} : T__struct_4),
		({_s: (Go.str("abc") : GoString), _want: ("\"abc\"" : GoString)} : T__struct_4),
		({_s: ("☺" : GoString), _want: ("\"\\xe2\\x98\\xba\"" : GoString)} : T__struct_4),
		({_s: ("☺ hello ☺ hello" : GoString), _want: ("\"\\xe2\\x98\\xba hello \\xe2\\x98\\xba hello\"" : GoString)} : T__struct_4),
		({_s: (Go.str(4) : GoString), _want: ("\"\\x04\"" : GoString)} : T__struct_4)) : Slice<T__struct_4>);
	for (_0 => _tt in _tests) {
		{
			var _q:GoString = quote(_tt._s);
			if (_q != _tt._want) {
				_t.errorf((Go.str("Quote(%q) = got %q, want %q") : GoString), Go.toInterface(_tt._s), Go.toInterface(_q), Go.toInterface(_tt._want));
			};
		};
	};
}

/**
	// Issue 48037
**/
function testFormatFractionalSecondSeparators(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_4>(0, 0, ({_s: ("15:04:05.000" : GoString), _want: ("21:00:57.012" : GoString)} : T__struct_4),
		({_s: ("15:04:05.999" : GoString), _want: ("21:00:57.012" : GoString)} : T__struct_4),
		({_s: ("15:04:05,000" : GoString), _want: ("21:00:57,012" : GoString)} : T__struct_4),
		({_s: ("15:04:05,999" : GoString), _want: ("21:00:57,012" : GoString)} : T__struct_4)) : Slice<T__struct_4>);
	var _time:Time = (unix((0 : GoInt64),
		("1233810057012345600" : GoInt64)) == null ? null : unix((0 : GoInt64), ("1233810057012345600" : GoInt64)).__copy__());
	for (_0 => _tt in _tests) {
		{
			var _q:GoString = _time.format(_tt._s);
			if (_q != _tt._want) {
				_t.errorf((Go.str("Format(%q) = got %q, want %q") : GoString), Go.toInterface(_tt._s), Go.toInterface(_q), Go.toInterface(_tt._want));
			};
		};
	};
}

/**
	// Issue 48685
**/
function testParseFractionalSecondsLongerThanNineDigits(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_5>(0, 0, ({_s: (Go.str("2021-09-29T16:04:33.000000000Z") : GoString), _want: (0 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.000000001Z") : GoString), _want: (1 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.100000000Z") : GoString), _want: (100000000 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.100000001Z") : GoString), _want: (100000001 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.999999999Z") : GoString), _want: (999999999 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.012345678Z") : GoString), _want: (12345678 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.0000000000Z") : GoString), _want: (0 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.0000000001Z") : GoString), _want: (0 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.1000000000Z") : GoString), _want: (100000000 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.1000000009Z") : GoString), _want: (100000000 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.9999999999Z") : GoString), _want: (999999999 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.0123456789Z") : GoString), _want: (12345678 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.10000000000Z") : GoString), _want: (100000000 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.00123456789Z") : GoString), _want: (1234567 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.000123456789Z") : GoString), _want: (123456 : GoInt)} : T__struct_5),
		({_s: (Go.str("2021-09-29T16:04:33.9999999999999999Z") : GoString), _want: (999999999 : GoInt)} : T__struct_5)) : Slice<T__struct_5>);
	for (_0 => _tt in _tests) {
		var __tmp__ = parse((Go.str("2006-01-02T15:04:05Z07:00") : GoString), _tt._s),
			_tm:Time = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.errorf((Go.str("Unexpected error: %v") : GoString), Go.toInterface(_err));
			continue;
		};
		{
			var _got:GoInt = _tm.nanosecond();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Parse(%q) = got %d, want %d") : GoString), Go.toInterface(_tt._s), Go.toInterface(_got), Go.toInterface(_tt._want));
			};
		};
	};
}

function testHasMonotonicClock(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _yes:(GoString, Time) -> Void = function(_expr:GoString, _tt:Time):Void {
		if (getMono(_tt) == (0 : GoInt64)) {
			_t.errorf((Go.str("%s: missing monotonic clock reading") : GoString), Go.toInterface(_expr));
		};
	};
	var _no:(GoString, Time) -> Void = function(_expr:GoString, _tt:Time):Void {
		if (getMono(_tt) != (0 : GoInt64)) {
			_t.errorf((Go.str("%s: unexpected monotonic clock reading") : GoString), Go.toInterface(_expr));
		};
	};
	_yes((Go.str("<-After(1)") : GoString), (after((1 : Duration)).__get__() == null ? null : after((1 : Duration)).__get__().__copy__()));
	var _ticker = newTicker((1 : Duration));
	_yes((Go.str("<-Tick(1)") : GoString), (_ticker.c.__get__() == null ? null : _ticker.c.__get__().__copy__()));
	_ticker.stop();
	_no((Go.str("Date(2009, 11, 23, 0, 0, 0, 0, UTC)") : GoString),
		(date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date((2009 : GoInt), (11 : Month), (23 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), utc).__copy__()));
	var __tmp__ = parse((Go.str("Mon Jan _2 15:04:05 MST 2006") : GoString), (Go.str("Sat Mar  7 11:06:39 PST 2015") : GoString)),
		_tp:Time = __tmp__._0,
		_0:stdgo.Error = __tmp__._1;
	_no(("Parse(UnixDate, \"Sat Mar  7 11:06:39 PST 2015\")" : GoString), (_tp == null ? null : _tp.__copy__()));
	_no((Go.str("Unix(1486057371, 0)") : GoString),
		(unix((1486057371 : GoInt64), (0 : GoInt64)) == null ? null : unix((1486057371 : GoInt64), (0 : GoInt64)).__copy__()));
	_yes((Go.str("Now()") : GoString), (now() == null ? null : now().__copy__()));
	var _tu:Time = (unix((1486057371 : GoInt64), (0 : GoInt64)) == null ? null : unix((1486057371 : GoInt64), (0 : GoInt64)).__copy__());
	var _tm:Time = (_tu == null ? null : _tu.__copy__());
	setMono(_tm, (123456 : GoInt64));
	_no((Go.str("tu") : GoString), (_tu == null ? null : _tu.__copy__()));
	_yes((Go.str("tm") : GoString), (_tm == null ? null : _tm.__copy__()));
	_no((Go.str("tu.Add(1)") : GoString), (_tu.add((1 : Duration)) == null ? null : _tu.add((1 : Duration)).__copy__()));
	_no((Go.str("tu.In(UTC)") : GoString), (_tu.in_(utc) == null ? null : _tu.in_(utc).__copy__()));
	_no((Go.str("tu.AddDate(1, 1, 1)") : GoString),
		(_tu.addDate((1 : GoInt), (1 : GoInt), (1 : GoInt)) == null ? null : _tu.addDate((1 : GoInt), (1 : GoInt), (1 : GoInt)).__copy__()));
	_no((Go.str("tu.AddDate(0, 0, 0)") : GoString),
		(_tu.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)) == null ? null : _tu.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)).__copy__()));
	_no((Go.str("tu.Local()") : GoString), (_tu.local() == null ? null : _tu.local().__copy__()));
	_no((Go.str("tu.UTC()") : GoString), (_tu.utc() == null ? null : _tu.utc().__copy__()));
	_no((Go.str("tu.Round(2)") : GoString), (_tu.round((2 : Duration)) == null ? null : _tu.round((2 : Duration)).__copy__()));
	_no((Go.str("tu.Truncate(2)") : GoString), (_tu.truncate((2 : Duration)) == null ? null : _tu.truncate((2 : Duration)).__copy__()));
	_yes((Go.str("tm.Add(1)") : GoString), (_tm.add((1 : Duration)) == null ? null : _tm.add((1 : Duration)).__copy__()));
	_no((Go.str("tm.AddDate(1, 1, 1)") : GoString),
		(_tm.addDate((1 : GoInt), (1 : GoInt), (1 : GoInt)) == null ? null : _tm.addDate((1 : GoInt), (1 : GoInt), (1 : GoInt)).__copy__()));
	_no((Go.str("tm.AddDate(0, 0, 0)") : GoString),
		(_tm.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)) == null ? null : _tm.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)).__copy__()));
	_no((Go.str("tm.In(UTC)") : GoString), (_tm.in_(utc) == null ? null : _tm.in_(utc).__copy__()));
	_no((Go.str("tm.Local()") : GoString), (_tm.local() == null ? null : _tm.local().__copy__()));
	_no((Go.str("tm.UTC()") : GoString), (_tm.utc() == null ? null : _tm.utc().__copy__()));
	_no((Go.str("tm.Round(2)") : GoString), (_tm.round((2 : Duration)) == null ? null : _tm.round((2 : Duration)).__copy__()));
	_no((Go.str("tm.Truncate(2)") : GoString), (_tm.truncate((2 : Duration)) == null ? null : _tm.truncate((2 : Duration)).__copy__()));
}

function testMonotonicAdd(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tm:Time = (unix((1486057371 : GoInt64), (123456 : GoInt64)) == null ? null : unix((1486057371 : GoInt64), (123456 : GoInt64)).__copy__());
	setMono(_tm, ("123456789012345" : GoInt64));
	var _t2:Time = (_tm.add((1e+08 : Duration)) == null ? null : _tm.add((1e+08 : Duration)).__copy__());
	if (_t2.nanosecond() != (100123456 : GoInt)) {
		_t.errorf((Go.str("t2.Nanosecond() = %d, want 100123456") : GoString), Go.toInterface(_t2.nanosecond()));
	};
	if (getMono(_t2) != ("123456889012345" : GoInt64)) {
		_t.errorf((Go.str("t2.mono = %d, want 123456889012345") : GoString), Go.toInterface(getMono(_t2)));
	};
	var _t3:Time = (_tm.add(("-9000000000000000000" : Duration)) == null ? null : _tm.add(("-9000000000000000000" : Duration)).__copy__());
	if (_t3.nanosecond() != (123456 : GoInt)) {
		_t.errorf((Go.str("t3.Nanosecond() = %d, want 123456") : GoString), Go.toInterface(_t3.nanosecond()));
	};
	if (getMono(_t3) != (0 : GoInt64)) {
		_t.errorf((Go.str("t3.mono = %d, want 0 (wall time out of range for monotonic reading)") : GoString), Go.toInterface(getMono(_t3)));
	};
	var _t4:Time = (_tm.add(("9000000000000000000" : Duration)) == null ? null : _tm.add(("9000000000000000000" : Duration)).__copy__());
	if (_t4.nanosecond() != (123456 : GoInt)) {
		_t.errorf((Go.str("t4.Nanosecond() = %d, want 123456") : GoString), Go.toInterface(_t4.nanosecond()));
	};
	if (getMono(_t4) != (0 : GoInt64)) {
		_t.errorf((Go.str("t4.mono = %d, want 0 (wall time out of range for monotonic reading)") : GoString), Go.toInterface(getMono(_t4)));
	};
	var _tn:Time = (now() == null ? null : now().__copy__());
	var _tn1:Time = (_tn.add(("3600000000000" : Duration)) == null ? null : _tn.add(("3600000000000" : Duration)).__copy__());
	sleep((100000000 : Duration));
	var _d:Duration = until((_tn1 == null ? null : _tn1.__copy__()));
	if (_d < ("3540000000000":Duration)) {
		_t.errorf((Go.str("Until(Now().Add(1*Hour)) = %v, wanted at least 59m") : GoString), Go.toInterface(Go.asInterface(_d)));
	};
	var _now:Time = (now() == null ? null : now().__copy__());
	if (_now.after((_tn1 == null ? null : _tn1.__copy__()))) {
		_t.errorf((Go.str("Now().After(Now().Add(1*Hour)) = true, want false") : GoString));
	};
	if (!_tn1.after((_now == null ? null : _now.__copy__()))) {
		_t.errorf((Go.str("Now().Add(1*Hour).After(now) = false, want true") : GoString));
	};
	if (_tn1.before((_now == null ? null : _now.__copy__()))) {
		_t.errorf((Go.str("Now().Add(1*Hour).Before(Now()) = true, want false") : GoString));
	};
	if (!_now.before((_tn1 == null ? null : _tn1.__copy__()))) {
		_t.errorf((Go.str("Now().Before(Now().Add(1*Hour)) = false, want true") : GoString));
	};
}

function testMonotonicSub(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _t1:Time = (unix((1483228799 : GoInt64), (9.95e+08 : GoInt64)) == null ? null : unix((1483228799 : GoInt64), (9.95e+08 : GoInt64)).__copy__());
	setMono(_t1, ("123456789012345" : GoInt64));
	var _t2:Time = (unix((1483228799 : GoInt64), (5e+06 : GoInt64)) == null ? null : unix((1483228799 : GoInt64), (5e+06 : GoInt64)).__copy__());
	setMono(_t2, ("123456799012345" : GoInt64));
	var _t3:Time = (unix((1483228799 : GoInt64), (9.95e+08 : GoInt64)) == null ? null : unix((1483228799 : GoInt64), (9.95e+08 : GoInt64)).__copy__());
	setMono(_t3, ("123457789012345" : GoInt64));
	var _t1w:Time = (_t1.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)) == null ? null : _t1.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)).__copy__());
	if (getMono(_t1w) != (0 : GoInt64)) {
		_t.fatalf((Go.str("AddDate didn\'t strip monotonic clock reading") : GoString));
	};
	var _t2w:Time = (_t2.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)) == null ? null : _t2.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)).__copy__());
	if (getMono(_t2w) != (0 : GoInt64)) {
		_t.fatalf((Go.str("AddDate didn\'t strip monotonic clock reading") : GoString));
	};
	var _t3w:Time = (_t3.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)) == null ? null : _t3.addDate((0 : GoInt), (0 : GoInt), (0 : GoInt)).__copy__());
	if (getMono(_t3w) != (0 : GoInt64)) {
		_t.fatalf((Go.str("AddDate didn\'t strip monotonic clock reading") : GoString));
	};
	var _sub:(GoString, GoString, Time, Time, Time, Time, Duration,
		Duration) -> Void = function(_txs:GoString, _tys:GoString, _tx:Time, _txw:Time, _ty:Time, _tyw:Time, _d:Duration, _dw:Duration):Void {
			var _check:(GoString, Duration, Duration) -> Void = function(_expr:GoString, _d:Duration, _want:Duration):Void {
				if (_d != _want) {
					_t.errorf((Go.str("%s = %v, want %v") : GoString), Go.toInterface(_expr), Go.toInterface(Go.asInterface(_d)),
						Go.toInterface(Go.asInterface(_want)));
				};
			};
			_check(((_txs + (Go.str(".Sub(") : GoString)) + _tys) + (Go.str(")") : GoString), _tx.sub((_ty == null ? null : _ty.__copy__())), _d);
			_check(((_txs + (Go.str("w.Sub(") : GoString)) + _tys) + (Go.str(")") : GoString), _txw.sub((_ty == null ? null : _ty.__copy__())), _dw);
			_check(((_txs + (Go.str(".Sub(") : GoString)) + _tys) + (Go.str("w)") : GoString), _tx.sub((_tyw == null ? null : _tyw.__copy__())), _dw);
			_check(((_txs + (Go.str("w.Sub(") : GoString)) + _tys) + (Go.str("w)") : GoString), _txw.sub((_tyw == null ? null : _tyw.__copy__())), _dw);
		};
	_sub((Go.str("t1") : GoString), (Go.str("t1") : GoString), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()),
		(_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (0 : Duration), (0 : Duration));
	_sub((Go.str("t1") : GoString), (Go.str("t2") : GoString), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()),
		(_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (-10000000 : Duration), (990000000 : Duration));
	_sub((Go.str("t1") : GoString), (Go.str("t3") : GoString), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()),
		(_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (-1000000000 : Duration), (0 : Duration));
	_sub((Go.str("t2") : GoString), (Go.str("t1") : GoString), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()),
		(_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (10000000 : Duration), (-990000000 : Duration));
	_sub((Go.str("t2") : GoString), (Go.str("t2") : GoString), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()),
		(_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (0 : Duration), (0 : Duration));
	_sub((Go.str("t2") : GoString), (Go.str("t3") : GoString), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()),
		(_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (-990000000 : Duration), (-990000000 : Duration));
	_sub((Go.str("t3") : GoString), (Go.str("t1") : GoString), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()),
		(_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (1000000000 : Duration), (0 : Duration));
	_sub((Go.str("t3") : GoString), (Go.str("t2") : GoString), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()),
		(_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (990000000 : Duration), (990000000 : Duration));
	_sub((Go.str("t3") : GoString), (Go.str("t3") : GoString), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()),
		(_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (0 : Duration), (0 : Duration));
	var _cmp:(GoString, GoString, Time, Time, Time, Time, GoInt,
		GoInt) -> Void = function(_txs:GoString, _tys:GoString, _tx:Time, _txw:Time, _ty:Time, _tyw:Time, _c:GoInt, _cw:GoInt):Void {
			var _check:(GoString, Bool, Bool) -> Void = function(_expr:GoString, _b:Bool, _want:Bool):Void {
				if (_b != _want) {
					_t.errorf((Go.str("%s = %v, want %v") : GoString), Go.toInterface(_expr), Go.toInterface(_b), Go.toInterface(_want));
				};
			};
			_check(((_txs + (Go.str(".After(") : GoString)) + _tys) + (Go.str(")") : GoString), _tx.after((_ty == null ? null : _ty.__copy__())),
				_c > (0 : GoInt));
			_check(((_txs + (Go.str("w.After(") : GoString)) + _tys) + (Go.str(")") : GoString), _txw.after((_ty == null ? null : _ty.__copy__())),
				_cw > (0 : GoInt));
			_check(((_txs + (Go.str(".After(") : GoString)) + _tys) + (Go.str("w)") : GoString), _tx.after((_tyw == null ? null : _tyw.__copy__())),
				_cw > (0 : GoInt));
			_check(((_txs + (Go.str("w.After(") : GoString)) + _tys) + (Go.str("w)") : GoString), _txw.after((_tyw == null ? null : _tyw.__copy__())),
				_cw > (0 : GoInt));
			_check(((_txs + (Go.str(".Before(") : GoString)) + _tys) + (Go.str(")") : GoString), _tx.before((_ty == null ? null : _ty.__copy__())),
				_c < (0:GoInt));
			_check(((_txs + (Go.str("w.Before(") : GoString)) + _tys) + (Go.str(")") : GoString), _txw.before((_ty == null ? null : _ty.__copy__())),
				_cw < (0:GoInt));
			_check(((_txs + (Go.str(".Before(") : GoString)) + _tys) + (Go.str("w)") : GoString), _tx.before((_tyw == null ? null : _tyw.__copy__())),
				_cw < (0:GoInt));
			_check(((_txs + (Go.str("w.Before(") : GoString)) + _tys) + (Go.str("w)") : GoString), _txw.before((_tyw == null ? null : _tyw.__copy__())),
				_cw < (0:GoInt));
			_check(((_txs + (Go.str(".Equal(") : GoString)) + _tys) + (Go.str(")") : GoString), _tx.equal((_ty == null ? null : _ty.__copy__())),
				_c == (0 : GoInt));
			_check(((_txs + (Go.str("w.Equal(") : GoString)) + _tys) + (Go.str(")") : GoString), _txw.equal((_ty == null ? null : _ty.__copy__())),
				_cw == (0 : GoInt));
			_check(((_txs + (Go.str(".Equal(") : GoString)) + _tys) + (Go.str("w)") : GoString), _tx.equal((_tyw == null ? null : _tyw.__copy__())),
				_cw == (0 : GoInt));
			_check(((_txs + (Go.str("w.Equal(") : GoString)) + _tys) + (Go.str("w)") : GoString), _txw.equal((_tyw == null ? null : _tyw.__copy__())),
				_cw == (0 : GoInt));
		};
	_cmp((Go.str("t1") : GoString), (Go.str("t1") : GoString), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()),
		(_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (0 : GoInt), (0 : GoInt));
	_cmp((Go.str("t1") : GoString), (Go.str("t2") : GoString), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()),
		(_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (-1 : GoInt), (1 : GoInt));
	_cmp((Go.str("t1") : GoString), (Go.str("t3") : GoString), (_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()),
		(_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (-1 : GoInt), (0 : GoInt));
	_cmp((Go.str("t2") : GoString), (Go.str("t1") : GoString), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()),
		(_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (1 : GoInt), (-1 : GoInt));
	_cmp((Go.str("t2") : GoString), (Go.str("t2") : GoString), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()),
		(_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (0 : GoInt), (0 : GoInt));
	_cmp((Go.str("t2") : GoString), (Go.str("t3") : GoString), (_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()),
		(_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (-1 : GoInt), (-1 : GoInt));
	_cmp((Go.str("t3") : GoString), (Go.str("t1") : GoString), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()),
		(_t1 == null ? null : _t1.__copy__()), (_t1w == null ? null : _t1w.__copy__()), (1 : GoInt), (0 : GoInt));
	_cmp((Go.str("t3") : GoString), (Go.str("t2") : GoString), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()),
		(_t2 == null ? null : _t2.__copy__()), (_t2w == null ? null : _t2w.__copy__()), (1 : GoInt), (1 : GoInt));
	_cmp((Go.str("t3") : GoString), (Go.str("t3") : GoString), (_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()),
		(_t3 == null ? null : _t3.__copy__()), (_t3w == null ? null : _t3w.__copy__()), (0 : GoInt), (0 : GoInt));
}

function testMonotonicOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _t1:Time = (now().add(("-30000000000" : Duration)) == null ? null : now().add(("-30000000000" : Duration)).__copy__());
	var _d:Duration = until((_t1 == null ? null : _t1.__copy__()));
	if ((_d < ("-35000000000":Duration)) || (("-30000000000" : Duration) < _d)) {
		_t.errorf((Go.str("Until(Now().Add(-30s)) = %v, want roughly -30s (-35s to -30s)") : GoString), Go.toInterface(Go.asInterface(_d)));
	};
	_t1 = (now().add(("30000000000" : Duration)) == null ? null : now().add(("30000000000" : Duration)).__copy__());
	_d = until((_t1 == null ? null : _t1.__copy__()));
	if ((_d < ("25000000000":Duration)) || (("30000000000" : Duration) < _d)) {
		_t.errorf((Go.str("Until(Now().Add(-30s)) = %v, want roughly 30s (25s to 30s)") : GoString), Go.toInterface(Go.asInterface(_d)));
	};
	var _t0:Time = (now() == null ? null : now().__copy__());
	_t1 = (_t0.add(("9223372036854775807" : Duration)) == null ? null : _t0.add(("9223372036854775807" : Duration)).__copy__());
	if (getMono(_t1) != (0 : GoInt64)) {
		_t.errorf((Go.str("Now().Add(maxDuration) has monotonic clock reading (%v => %v %d %d)") : GoString), Go.toInterface((_t0.string() : GoString)),
			Go.toInterface((_t1.string() : GoString)), Go.toInterface(_t0.unix()), Go.toInterface(_t1.unix()));
	};
	var _t2:Time = (_t1.add(("-9223372036854775807" : Duration)) == null ? null : _t1.add(("-9223372036854775807" : Duration)).__copy__());
	_d = since((_t2 == null ? null : _t2.__copy__()));
	if ((_d < ("-10000000000":Duration)) || (("10000000000" : Duration) < _d)) {
		_t.errorf((Go.str("Since(Now().Add(max).Add(-max)) = %v, want [-10s, 10s]") : GoString), Go.toInterface(Go.asInterface(_d)));
	};
	_t0 = (now() == null ? null : now().__copy__());
	_t1 = (_t0.add(("3600000000000" : Duration)) == null ? null : _t0.add(("3600000000000" : Duration)).__copy__());
	sleep((100000000 : Duration));
	_t2 = (now().add(("-5000000000" : Duration)) == null ? null : now().add(("-5000000000" : Duration)).__copy__());
	if (!_t1.after((_t2 == null ? null : _t2.__copy__()))) {
		_t.errorf((Go.str("Now().Add(1*Hour).After(Now().Add(-5*Second)) = false, want true\nt1=%v\nt2=%v") : GoString), Go.toInterface(Go.asInterface(_t1)),
			Go.toInterface(Go.asInterface(_t2)));
	};
	if (_t2.after((_t1 == null ? null : _t1.__copy__()))) {
		_t.errorf((Go.str("Now().Add(-5*Second).After(Now().Add(1*Hour)) = true, want false\nt1=%v\nt2=%v") : GoString), Go.toInterface(Go.asInterface(_t1)),
			Go.toInterface(Go.asInterface(_t2)));
	};
	if (_t1.before((_t2 == null ? null : _t2.__copy__()))) {
		_t.errorf((Go.str("Now().Add(1*Hour).Before(Now().Add(-5*Second)) = true, want false\nt1=%v\nt2=%v") : GoString), Go.toInterface(Go.asInterface(_t1)),
			Go.toInterface(Go.asInterface(_t2)));
	};
	if (!_t2.before((_t1 == null ? null : _t1.__copy__()))) {
		_t.errorf((Go.str("Now().Add(-5*Second).Before(Now().Add(1*Hour)) = false, want true\nt1=%v\nt2=%v") : GoString), Go.toInterface(Go.asInterface(_t1)),
			Go.toInterface(Go.asInterface(_t2)));
	};
}

function testMonotonicString(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _t1:Time = (now() == null ? null : now().__copy__());
	_t.logf((Go.str("Now() = %v") : GoString), Go.toInterface(Go.asInterface(_t1)));
	for (_0 => _tt in _monotonicStringTests) {
		var _t1:Time = (now() == null ? null : now().__copy__());
		setMono(_t1, _tt._mono);
		var _s:GoString = (_t1.string() : GoString);
		var _got:GoString = (_s.__slice__(stdgo.strings.Strings.lastIndex(_s, (Go.str(" ") : GoString)) + (1 : GoInt)) : GoString);
		if (_got != _tt._want) {
			_t.errorf((Go.str("with mono=%d: got %q; want %q") : GoString), Go.toInterface(_tt._mono), Go.toInterface(_got), Go.toInterface(_tt._want));
		};
	};
}

function testSleep(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _delay:Duration = (100000000 : Duration);
	Go.routine(() -> {
		var a = function():Void {
			sleep((50000000 : Duration));
			interrupt();
		};
		a();
	});
	var _start:Time = (now() == null ? null : now().__copy__());
	sleep((100000000 : Duration));
	var _delayadj:Duration = (100000000 : Duration);
	if (false) {
		_delayadj = _delayadj - ((17000000 : Duration));
	};
	var _duration:Duration = now().sub((_start == null ? null : _start.__copy__()));
	if (_duration < _delayadj) {
		_t.fatalf((Go.str("Sleep(%s) slept for only %s") : GoString), Go.toInterface(Go.asInterface((100000000 : Duration))),
			Go.toInterface(Go.asInterface(_duration)));
	};
}

/**
	// Test the basic function calling behavior. Correct queueing
	// behavior is tested elsewhere, since After and AfterFunc share
	// the same code.
**/
function testAfterFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _i:GoInt = (10 : GoInt);
	var _c = new Chan<Bool>(0, () -> false);
	var _f:() -> Void = null;
	_f = function():Void {
		_i--;
		if (_i >= (0 : GoInt)) {
			afterFunc((0 : Duration), _f);
			sleep((1000000000 : Duration));
		} else {
			_c.__send__(true);
		};
	};
	afterFunc((0 : Duration), _f);
	_c.__get__();
}

function testAfterStress(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _stop:GoUInt32 = (0 : GoUInt32);
	Go.routine(() -> {
		var a = function():Void {
			while (stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_stop)) == (0 : GoUInt32)) {
				stdgo.runtime.Runtime.gc();
				sleep((1 : Duration));
			};
		};
		a();
	});
	var _ticker = newTicker((1 : Duration));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (100:GoInt), _i++, {
			_ticker.c.__get__();
		});
	};
	_ticker.stop();
	stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_stop), (1 : GoUInt32));
}

function _benchmark(_b:Ref<stdgo.testing.Testing.B>, _bench:(_n:GoInt) -> Void):Void {
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	var _garbageAll = new Slice<Slice<Ref<Timer>>>((stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) : GoInt).toBasic(), 0, ...[
		for (i in 0...(stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) : GoInt).toBasic()) (null : Slice<Ref<Timer>>)
	]);
	for (_i => _ in _garbageAll) {
		_wg.add((1 : GoInt));
		Go.routine(() -> {
			var a = function(_i:GoInt):Void {
				var __deferstack__:Array<Void->Void> = [];
				__deferstack__.unshift(() -> _wg.done());
				try {
					var _garbage = new Slice<Ref<Timer>>((32768 : GoInt).toBasic(), 0, ...[for (i in 0...(32768 : GoInt).toBasic()) (null : Timer)]);
					for (_j => _ in _garbage) {
						_garbage[_j] = afterFunc(("3600000000000" : Duration), null);
					};
					_garbageAll[_i] = _garbage;
					for (defer in __deferstack__) {
						defer();
					};
					{
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				} catch (__exception__) {
					if (!(__exception__.native is AnyInterfaceData))
						throw __exception__;
					Go.recover_exception = __exception__.native;
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			};
			a(_i);
		});
	};
	_wg.wait_();
	_b.resetTimer();
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			_bench((1000 : GoInt));
		};
	});
	_b.stopTimer();
	for (_0 => _garbage in _garbageAll) {
		for (_1 => _t in _garbage) {
			_t.stop();
		};
	};
}

function benchmarkAfterFunc(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _c = new Chan<Bool>(0, () -> false);
		var _f:() -> Void = null;
		_f = function():Void {
			_n--;
			if (_n >= (0 : GoInt)) {
				afterFunc((0 : Duration), _f);
			} else {
				_c.__send__(true);
			};
		};
		afterFunc((0 : Duration), _f);
		_c.__get__();
	});
}

function benchmarkAfter(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				after((1 : Duration)).__get__();
			});
		};
	});
}

function benchmarkStop(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				newTimer((1000000000 : Duration)).stop();
			});
		};
	});
}

function benchmarkSimultaneousAfterFunc(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
		_wg.add(_n);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				afterFunc((0 : Duration), _wg.done);
			});
		};
		_wg.wait_();
	});
}

function benchmarkStartStop(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _timers = new Slice<Ref<Timer>>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) (null : Timer)]);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_timers[_i] = afterFunc(("3600000000000" : Duration), null);
			});
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_timers[_i].stop();
			});
		};
	});
}

function benchmarkReset(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _t = newTimer(("3600000000000" : Duration));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_t.reset(("3600000000000" : Duration));
			});
		};
		_t.stop();
	});
}

function benchmarkSleep(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
		_wg.add(_n);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				Go.routine(() -> {
					var a = function():Void {
						sleep((1 : Duration));
						_wg.done();
					};
					a();
				});
			});
		};
		_wg.wait_();
	});
}

function testAfter(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _delay:Duration = (100000000 : Duration);
	var _start:Time = (now() == null ? null : now().__copy__());
	var _end:Time = (after((100000000 : Duration)).__get__() == null ? null : after((100000000 : Duration)).__get__().__copy__());
	var _delayadj:Duration = (100000000 : Duration);
	if (false) {
		_delayadj = _delayadj - ((17000000 : Duration));
	};
	{
		var _duration:Duration = now().sub((_start == null ? null : _start.__copy__()));
		if (_duration < _delayadj) {
			_t.fatalf((Go.str("After(%s) slept for only %d ns") : GoString), Go.toInterface(Go.asInterface((100000000 : Duration))),
				Go.toInterface(Go.asInterface(_duration)));
		};
	};
	{
		var _min:Time = (_start.add(_delayadj) == null ? null : _start.add(_delayadj).__copy__());
		if (_end.before((_min == null ? null : _min.__copy__()))) {
			_t.fatalf((Go.str("After(%s) expect >= %s, got %s") : GoString), Go.toInterface(Go.asInterface((100000000 : Duration))),
				Go.toInterface(Go.asInterface(_min)), Go.toInterface(Go.asInterface(_end)));
		};
	};
}

function testAfterTick(_t:Ref<stdgo.testing.Testing.T>):Void {
	var count:GoUnTypedInt = (10 : GoUnTypedInt);
	var delta:Duration = (100000000 : Duration);
	if (stdgo.testing.Testing.short()) {
		delta = (10000000 : Duration);
	};
	var _t0:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			after(delta).__get__();
		});
	};
	var _t1:Time = (now() == null ? null : now().__copy__());
	var _d:Duration = _t1.sub((_t0 == null ? null : _t0.__copy__()));
	var _target:Duration = delta * (10 : Duration);
	if (_d < ((_target * (9 : Duration)) / (10 : Duration))) {
		_t.fatalf((Go.str("%d ticks of %s too fast: took %s, expected %s") : GoString), Go.toInterface((10 : GoInt)), Go.toInterface(Go.asInterface(delta)),
			Go.toInterface(Go.asInterface(_d)), Go.toInterface(Go.asInterface(_target)));
	};
	if (!stdgo.testing.Testing.short() && (_d > ((_target * (30 : Duration)) / (10 : Duration)))) {
		_t.fatalf((Go.str("%d ticks of %s too slow: took %s, expected %s") : GoString), Go.toInterface((10 : GoInt)), Go.toInterface(Go.asInterface(delta)),
			Go.toInterface(Go.asInterface(_d)), Go.toInterface(Go.asInterface(_target)));
	};
}

function testAfterStop(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _errs:Slice<GoString> = (null : Slice<GoString>);
	var _logErrs:() -> Void = function():Void {
		for (_0 => _e in _errs) {
			_t.log(Go.toInterface(_e));
		};
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (5:GoInt), _i++, {
			afterFunc((100000000 : Duration), function():Void {});
			var _t0 = newTimer((50000000 : Duration));
			var _c1 = new Chan<Bool>((1 : GoInt).toBasic(), () -> false);
			var _t1 = afterFunc((150000000 : Duration), function():Void {
				_c1.__send__(true);
			});
			var _c2 = after((200000000 : Duration));
			if (!_t0.stop()) {
				_errs = (_errs.__append__((Go.str("failed to stop event 0") : GoString)));
				continue;
			};
			if (!_t1.stop()) {
				_errs = (_errs.__append__((Go.str("failed to stop event 1") : GoString)));
				continue;
			};
			_c2.__get__();
			Go.select([
				_c1.__get__() => {
					_errs = (_errs.__append__((Go.str("event 1 was not stopped") : GoString)));
					continue;
				},
				_t0.c.__get__() => {
					_errs = (_errs.__append__((Go.str("event 0 was not stopped") : GoString)));
					continue;
				},
				{}
			]);
			if (_t1.stop()) {
				_errs = (_errs.__append__((Go.str("Stop returned true twice") : GoString)));
				continue;
			};
			if ((_errs.length) > (0 : GoInt)) {
				_t.logf((Go.str("saw %d errors, ignoring to avoid flakiness") : GoString), Go.toInterface((_errs.length)));
				_logErrs();
			};
			return;
		});
	};
	_t.errorf((Go.str("saw %d errors") : GoString), Go.toInterface((_errs.length)));
	_logErrs();
}

function testAfterQueuing(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _attempts:GoUnTypedInt = (5 : GoUnTypedInt);
	var _err:stdgo.Error = stdgo.errors.Errors.new_((Go.str("!=nil") : GoString));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor((_i < (5:GoInt)) && (_err != null), _i++, {
			var _delta:Duration = ((20 : GoInt) + (_i * (50 : GoInt)) : Duration) * (1000000 : Duration);
			{
				_err = _testAfterQueuing(_delta);
				if (_err != null) {
					_t.logf((Go.str("attempt %v failed: %v") : GoString), Go.toInterface(_i), Go.toInterface(_err));
				};
			};
		});
	};
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
}

function _await(_slot:GoInt, _result:Chan<T_afterResult>, _ac:Chan<Time>):Void {
	_result.__send__((new stdgo.time_test.Time_test.T_afterResult(_slot,
		(_ac.__get__() == null ? null : _ac.__get__().__copy__())) : stdgo.time_test.Time_test.T_afterResult));
}

function _testAfterQueuing(_delta:Duration):Error {
	var _result = new Chan<stdgo.time_test.Time_test.T_afterResult>((_slots.length : GoInt).toBasic(), () -> ({} : stdgo.time_test.Time_test.T_afterResult));
	var _t0:Time = (now() == null ? null : now().__copy__());
	for (_0 => _slot in _slots) {
		Go.routine(() -> _await(_slot, _result, after((_slot : Duration) * _delta)));
	};
	var _order:Slice<GoInt> = (null : Slice<GoInt>);
	var _times:Slice<Time> = (null : Slice<Time>);
	for (_ => _ in _slots) {
		var _r:stdgo.time_test.Time_test.T_afterResult = (_result.__get__() == null ? null : _result.__get__().__copy__());
		_order = (_order.__append__(_r._slot));
		_times = (_times.__append__(_r._t == null ? null : _r._t.__copy__()));
	};
	for (_i => _ in _order) {
		if ((_i > (0 : GoInt)) && (_order[_i] < _order[_i - (1 : GoInt)])) {
			return stdgo.fmt.Fmt.errorf((Go.str("After calls returned out of order: %v") : GoString), Go.toInterface(_order));
		};
	};
	for (_i => _t in _times) {
		var _dt:Duration = _t.sub((_t0 == null ? null : _t0.__copy__()));
		var _target:Duration = (_order[_i] : Duration) * _delta;
		if ((_dt < (_target - (_delta / (2 : Duration)))) || (_dt > (_target + (_delta * (10 : Duration))))) {
			return stdgo.fmt.Fmt.errorf((Go.str("After(%s) arrived at %s, expected [%s,%s]") : GoString), Go.toInterface(Go.asInterface(_target)),
				Go.toInterface(Go.asInterface(_dt)), Go.toInterface(Go.asInterface(_target - (_delta / (2 : Duration)))),
				Go.toInterface(Go.asInterface(_target + (_delta * (10 : Duration)))));
		};
	};
	return (null : stdgo.Error);
}

function testTimerStopStress(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		return;
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (100:GoInt), _i++, {
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					var _timer = afterFunc((2000000000 : Duration), function():Void {
						_t.errorf((Go.str("timer %d was not stopped") : GoString), Go.toInterface(_i));
					});
					sleep((1000000000 : Duration));
					_timer.stop();
				};
				a(_i);
			});
		});
	};
	sleep(("3000000000" : Duration));
}

function testSleepZeroDeadlock(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = stdgo.runtime.Runtime.gomaxprocs((4 : GoInt));
		__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
	};
	try {
		var _c = new Chan<Bool>(0, () -> false);
		Go.routine(() -> {
			var a = function():Void {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (100:GoInt), _i++, {
						stdgo.runtime.Runtime.gc();
					});
				};
				_c.__send__(true);
			};
			a();
		});
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (100:GoInt), _i++, {
				sleep((0 : Duration));
				var _tmp = new Chan<Bool>((1 : GoInt).toBasic(), () -> false);
				_tmp.__send__(true);
				_tmp.__get__();
			});
		};
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _testReset(_d:Duration):Error {
	var _t0 = newTimer((2 : Duration) * _d);
	sleep(_d);
	if (!_t0.reset((3 : Duration) * _d)) {
		return stdgo.errors.Errors.new_((Go.str("resetting unfired timer returned false") : GoString));
	};
	sleep((2 : Duration) * _d);
	Go.select([
		_t0.c.__get__() => {
			return stdgo.errors.Errors.new_((Go.str("timer fired early") : GoString));
		},
		{}
	]);
	sleep((2 : Duration) * _d);
	Go.select([
		_t0.c.__get__() => {},
		{
			return stdgo.errors.Errors.new_((Go.str("reset timer did not fire") : GoString));
		}
	]);
	if (_t0.reset((50000000 : Duration))) {
		return stdgo.errors.Errors.new_((Go.str("resetting expired timer returned true") : GoString));
	};
	return (null : stdgo.Error);
}

function testReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _unit:Duration = (25000000 : Duration);
	var _tries = (new Slice<Duration>(0, 0, (25000000 : Duration), (75000000 : Duration), (175000000 : Duration), (375000000 : Duration)) : Slice<Duration>);
	var _err:Error = (null : stdgo.Error);
	for (_0 => _d in _tries) {
		_err = _testReset(_d);
		if (_err == null) {
			_t.logf((Go.str("passed using duration %v") : GoString), Go.toInterface(Go.asInterface(_d)));
			return;
		};
	};
	_t.error(Go.toInterface(_err));
}

/**
	// Test that sleeping (via Sleep or Timer) for an interval so large it
	// overflows does not result in a short sleep duration. Nor does it interfere
	// with execution of other timers. If it does, timers in this or subsequent
	// tests may not fire.
**/
function testOverflowSleep(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _big:Duration = ((("9223372036854775807" : GoInt64) : GoInt64) : Duration);
	Go.routine(() -> {
		var a = function():Void {
			sleep(("9223372036854775807" : Duration));
			throw Go.toInterface((Go.str("big sleep returned") : GoString));
		};
		a();
	});
	Go.select([
		after((25000000 : Duration)).__get__() => {},
		after(("9223372036854775807" : Duration)).__get__() => {
			_t.fatalf((Go.str("big timeout fired") : GoString));
		}
	]);
	var _neg:Duration = ("-9223372036854775808" : Duration);
	sleep(("-9223372036854775808" : Duration));
	Go.select([
		after((1000000000 : Duration)).__get__() => {
			_t.fatalf((Go.str("negative timeout didn\'t fire") : GoString));
		},
		after(("-9223372036854775808" : Duration)).__get__() => {}
	]);
}

/**
	// Test that a panic while deleting a timer does not leave
	// the timers mutex held, deadlocking a ticker.Stop in a defer.
**/
function testIssue5745(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _ticker = newTicker(("3600000000000" : Duration));
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				_ticker.stop();
				{
					var _r:AnyInterface = Go.toInterface(({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}));
					if (_r == null) {
						_t.error(Go.toInterface((Go.str("Expected panic, but none happened.") : GoString)));
					};
				};
			};
			a();
		});
		var _timer:Ref<Timer> = (null : Timer);
		_timer.stop();
		_t.error(Go.toInterface((Go.str("Should be unreachable.") : GoString)));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testOverflowPeriodRuntimeTimer(_t:Ref<stdgo.testing.Testing.T>):Void {
	checkRuntimeTimerPeriodOverflow();
}

function _checkZeroPanicString(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _e:AnyInterface = Go.toInterface(({
		final r = Go.recover_exception;
		Go.recover_exception = null;
		r;
	}));
	var __tmp__ = try {
		{value: (_e.value : GoString), ok: true};
	} catch (_) {
		{value: ("" : GoString), ok: false};
	}, _s = __tmp__.value, _0 = __tmp__.ok;
	{
		var _want:GoString = (Go.str("called on uninitialized Timer") : GoString);
		if (!stdgo.strings.Strings.contains(_s, _want)) {
			_t.errorf((Go.str("panic = %v; want substring %q") : GoString), Go.toInterface(_e), Go.toInterface(_want));
		};
	};
}

function testZeroTimerResetPanics(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = _t;
		__deferstack__.unshift(() -> _checkZeroPanicString(_a0));
	};
	try {
		var _tr:Timer = ({} : Timer);
		_tr.reset((1 : Duration));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testZeroTimerStopPanics(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = _t;
		__deferstack__.unshift(() -> _checkZeroPanicString(_a0));
	};
	try {
		var _tr:Timer = ({} : Timer);
		_tr.stop();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that zero duration timers aren't missed by the scheduler. Regression test for issue 44868.
**/
function testZeroTimer(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface((Go.str("-short") : GoString)));
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000000:GoInt), _i++, {
			var _s:Time = (now() == null ? null : now().__copy__());
			var _ti = newTimer((0 : Duration));
			_ti.c.__get__();
			{
				var _diff:Duration = since((_s == null ? null : _s.__copy__()));
				if (_diff > (2000000000 : Duration)) {
					_t.errorf((Go.str("Expected time to get value from Timer channel in less than 2 sec, took %v") : GoString),
						Go.toInterface(Go.asInterface(_diff)));
				};
			};
		});
	};
}

/**
	// Test that rapidly moving a timer earlier doesn't cause it to get dropped.
	// Issue 47329.
**/
function testTimerModifiedEarlier(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (false) {
		stdgo.internal.testenv.Testenv.skipFlaky(Go.asInterface(_t), (50470 : GoInt));
	};
	try {
		var _past:Duration = until((unix((0 : GoInt64), (0 : GoInt64)) == null ? null : unix((0 : GoInt64), (0 : GoInt64)).__copy__()));
		var _count:GoInt = (1000 : GoInt);
		var _fail:GoInt = (0 : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _count, _i++, {
				var _timer = newTimer(("3600000000000" : Duration));
				{
					var _j:GoInt = (0 : GoInt);
					Go.cfor(_j < (10:GoInt), _j++, {
						if (!_timer.stop()) {
							_timer.c.__get__();
						};
						_timer.reset(_past);
					});
				};
				var _deadline = newTimer(("10000000000" : Duration));
				__deferstack__.unshift(() -> _deadline.stop());
				var _now:Time = (now() == null ? null : now().__copy__());
				Go.select([
					_deadline.c.__get__() => {
						_t.error(Go.toInterface((Go.str("deadline expired") : GoString)));
					},
					_timer.c.__get__() => {
						{
							var _since:Duration = since((_now == null ? null : _now.__copy__()));
							if (_since > ("8000000000" : Duration)) {
								_t.errorf((Go.str("timer took too long (%v)") : GoString), Go.toInterface(Go.asInterface(_since)));
								_fail++;
							};
						};
					}
				]);
			});
		};
		if (_fail > (0 : GoInt)) {
			_t.errorf((Go.str("%d failures") : GoString), Go.toInterface(_fail));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that rapidly moving timers earlier and later doesn't cause
	// some of the sleep times to be lost.
	// Issue 47762
**/
function testAdjustTimers(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _rnd:Ref<stdgo.math.rand.Rand.Rand> = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(now().unixNano()));
	var _timers = new Slice<Ref<Timer>>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (null : Timer)]);
	var _states = new Slice<GoInt>((_timers.length : GoInt).toBasic(), 0, ...[for (i in 0...(_timers.length : GoInt).toBasic()) (0 : GoInt)]);
	var _indices = _rnd.perm((_timers.length));
	while ((_indices.length) != (0 : GoInt)) {
		var _ii:GoInt = _rnd.intn((_indices.length));
		var _i:GoInt = _indices[_ii];
		var _timer:Ref<Timer> = _timers[_i];
		var _state:GoInt = _states[_i];
		_states[_i]++;
		if (_state == ((0 : GoInt))) {
			_timers[_i] = newTimer((0 : Duration));
		} else if (_state == ((1 : GoInt))) {
			_timer.c.__get__();
		} else if (_state == ((2 : GoInt))) {
			if (_timer.reset(("60000000000" : Duration))) {
				throw Go.toInterface((Go.str("shouldn\'t be active (1)") : GoString));
			};
		} else if (_state == ((4 : GoInt))) {
			if (_timer.reset(("180000000000" : Duration))) {
				throw Go.toInterface((Go.str("shouldn\'t be active (3)") : GoString));
			};
		} else if (_state == ((6 : GoInt))) {
			if (_timer.reset(("120000000000" : Duration))) {
				throw Go.toInterface((Go.str("shouldn\'t be active (2)") : GoString));
			};
		} else if (_state == ((3 : GoInt)) || _state == ((5 : GoInt)) || _state == ((7 : GoInt))) {
			if (!_timer.stop()) {
				_t.logf((Go.str("timer %d state %d Stop returned false") : GoString), Go.toInterface(_i), Go.toInterface(_state));
				_timer.c.__get__();
			};
		} else if (_state == ((8 : GoInt))) {
			if (_timer.reset((0 : Duration))) {
				_t.fatal(Go.toInterface((Go.str("timer.Reset returned true") : GoString)));
			};
		} else if (_state == ((9 : GoInt))) {
			var _now:Time = (now() == null ? null : now().__copy__());
			_timer.c.__get__();
			var _dur:Duration = since((_now == null ? null : _now.__copy__()));
			if (_dur > (750000000 : Duration)) {
				_t.errorf((Go.str("timer %d took %v to complete") : GoString), Go.toInterface(_i), Go.toInterface(Go.asInterface(_dur)));
			};
		} else if (_state == ((10 : GoInt))) {
			_indices[_ii] = _indices[(_indices.length) - (1 : GoInt)];
			_indices = (_indices.__slice__(0, (_indices.length) - (1 : GoInt)) : Slice<GoInt>);
		};
	};
}

/**
	// Benchmark timer latency when the thread that creates the timer is busy with
	// other work and the timers must be serviced by other threads.
	// https://golang.org/issue/38860
**/
function benchmarkParallelTimerLatency(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _gmp:GoInt = stdgo.runtime.Runtime.gomaxprocs((0 : GoInt));
	if ((_gmp < (2:GoInt)) || (stdgo.runtime.Runtime.numCPU() < _gmp)) {
		_b.skip(Go.toInterface((Go.str("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS") : GoString)));
	};
	var _timerCount:GoInt = _gmp - (1 : GoInt);
	var _stats = new Slice<T__struct_7>((_timerCount : GoInt).toBasic(), 0, ...[
		for (i in 0...(_timerCount : GoInt).toBasic()) ({
			_sum:(0 : GoFloat64), _max:((0 : GoInt64) : Duration), _count:(0 : GoInt64), _1:new GoArray<GoInt64>(...[for (i in 0...5) (0 : GoInt64)])
		} : T__struct_7)
	]);
	_warmupScheduler(_gmp);
	_doWork((30000000 : Duration));
	_b.resetTimer();
	var _delay:Duration = (1000000 : Duration);
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	var _count:GoInt32 = (0 : GoInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_wg.add(_timerCount);
			stdgo.sync.atomic.Atomic.storeInt32(Go.pointer(_count), (0 : GoInt32));
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < _timerCount, _j++, {
					var _j:GoInt = _j;
					var _expectedWakeup:Time = (now().add((1000000 : Duration)) == null ? null : now().add((1000000 : Duration)).__copy__());
					afterFunc((1000000 : Duration), function():Void {
						var _late:Duration = since((_expectedWakeup == null ? null : _expectedWakeup.__copy__()));
						if (_late < (0:Duration)) {
							_late = (0 : Duration);
						};
						_stats[_j]._count++;
						_stats[_j]._sum = _stats[_j]._sum + ((_late.nanoseconds() : GoFloat64));
						if (_late > _stats[_j]._max) {
							_stats[_j]._max = _late;
						};
						stdgo.sync.atomic.Atomic.addInt32(Go.pointer(_count), (1 : GoInt32));
						while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_count)) < (_timerCount:GoInt32)) {};
						_wg.done();
					});
				});
			};
			while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_count)) < (_timerCount:GoInt32)) {};
			_wg.wait_();
			_doWork((1000000 : Duration));
		});
	};
	var _total:GoFloat64 = (0 : GoFloat64);
	var _samples:GoFloat64 = (0 : GoFloat64);
	var _max:Duration = (0 : Duration);
	for (_2 => _s in _stats) {
		if (_s._max > _max) {
			_max = _s._max;
		};
		_total = _total + (_s._sum);
		_samples = _samples + ((_s._count : GoFloat64));
	};
	_b.reportMetric((0 : GoFloat64), (Go.str("ns/op") : GoString));
	_b.reportMetric(_total / _samples, (Go.str("avg-late-ns") : GoString));
	_b.reportMetric((_max.nanoseconds() : GoFloat64), (Go.str("max-late-ns") : GoString));
}

/**
	// Benchmark timer latency with staggered wakeup times and varying CPU bound
	// workloads. https://golang.org/issue/38860
**/
function benchmarkStaggeredTickerLatency(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _gmp:GoInt = stdgo.runtime.Runtime.gomaxprocs((0 : GoInt));
	if ((_gmp < (2:GoInt)) || (stdgo.runtime.Runtime.numCPU() < _gmp)) {
		_b.skip(Go.toInterface((Go.str("skipping with GOMAXPROCS < 2 or NumCPU < GOMAXPROCS") : GoString)));
	};
	var _delay:Duration = (3000000 : Duration);
	for (_0 => _dur in (new Slice<Duration>(0, 0, (300000 : Duration), (2000000 : Duration)) : Slice<Duration>)) {
		_b.run(stdgo.fmt.Fmt.sprintf((Go.str("work-dur=%s") : GoString), Go.toInterface(Go.asInterface(_dur))),
			function(_b:Ref<stdgo.testing.Testing.B>):Void {
				{
					var _tickersPerP:GoInt = (1 : GoInt);
					Go.cfor(_tickersPerP < (((3000000 : Duration) / _dur : GoInt) + (1 : GoInt)), _tickersPerP++, {
						var _tickerCount:GoInt = _gmp * _tickersPerP;
						_b.run(stdgo.fmt.Fmt.sprintf((Go.str("tickers-per-P=%d") : GoString), Go.toInterface(_tickersPerP)),
							function(_b:Ref<stdgo.testing.Testing.B>):Void {
								var _stats = new Slice<T__struct_7>((_tickerCount : GoInt).toBasic(), 0, ...[
									for (i in 0...(_tickerCount : GoInt).toBasic()) ({
										_sum:(0 : GoFloat64), _max:((0 : GoInt64) : Duration), _count:(0 : GoInt64),
										_1:new GoArray<GoInt64>(...[for (i in 0...5) (0 : GoInt64)])
									} : T__struct_7)
								]);
								_warmupScheduler(_gmp);
								_b.resetTimer();
								var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
								_wg.add(_tickerCount);
								{
									var _j:GoInt = (0 : GoInt);
									Go.cfor(_j < _tickerCount, _j++, {
										var _j:GoInt = _j;
										_doWork((3000000 : Duration) / (_gmp : Duration));
										var _expectedWakeup:Time = (now().add((3000000 : Duration)) == null ? null : now()
											.add((3000000 : Duration))
											.__copy__());
										var _ticker = newTicker((3000000 : Duration));
										Go.routine(() -> {
											var a = function(_c:GoInt, _ticker:Ref<Ticker>, _firstWake:Time):Void {
												var __deferstack__:Array<Void->Void> = [];
												__deferstack__.unshift(() -> _ticker.stop());
												try {
													Go.cfor(_c > (0 : GoInt), _c--, {
														_ticker.c.__get__();
														var _late:Duration = since((_expectedWakeup == null ? null : _expectedWakeup.__copy__()));
														if (_late < (0:Duration)) {
															_late = (0 : Duration);
														};
														_stats[_j]._count++;
														_stats[_j]._sum = _stats[_j]._sum + ((_late.nanoseconds() : GoFloat64));
														if (_late > _stats[_j]._max) {
															_stats[_j]._max = _late;
														};
														_expectedWakeup = (_expectedWakeup.add((3000000 : Duration)) == null ? null : _expectedWakeup.add((3000000 : Duration))
															.__copy__());
														_doWork(_dur);
													});
													_wg.done();
													for (defer in __deferstack__) {
														defer();
													};
													{
														for (defer in __deferstack__) {
															defer();
														};
														if (Go.recover_exception != null)
															throw Go.recover_exception;
														return;
													};
												} catch (__exception__) {
													if (!(__exception__.native is AnyInterfaceData))
														throw __exception__;
													Go.recover_exception = __exception__.native;
													for (defer in __deferstack__) {
														defer();
													};
													if (Go.recover_exception != null)
														throw Go.recover_exception;
													return;
												};
											};
											a(_b.n, _ticker, (_expectedWakeup == null ? null : _expectedWakeup.__copy__()));
										});
									});
								};
								_wg.wait_();
								var _total:GoFloat64 = (0 : GoFloat64);
								var _samples:GoFloat64 = (0 : GoFloat64);
								var _max:Duration = (0 : Duration);
								for (_2 => _s in _stats) {
									if (_s._max > _max) {
										_max = _s._max;
									};
									_total = _total + (_s._sum);
									_samples = _samples + ((_s._count : GoFloat64));
								};
								_b.reportMetric((0 : GoFloat64), (Go.str("ns/op") : GoString));
								_b.reportMetric(_total / _samples, (Go.str("avg-late-ns") : GoString));
								_b.reportMetric((_max.nanoseconds() : GoFloat64), (Go.str("max-late-ns") : GoString));
							});
					});
				};
			});
	};
}

/**
	// warmupScheduler ensures the scheduler has at least targetThreadCount threads
	// in its thread pool.
**/
function _warmupScheduler(_targetThreadCount:GoInt):Void {
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	var _count:GoInt32 = (0 : GoInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _targetThreadCount, _i++, {
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					stdgo.sync.atomic.Atomic.addInt32(Go.pointer(_count), (1 : GoInt32));
					while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_count)) < (_targetThreadCount:GoInt32)) {};
					_doWork((1000000 : Duration));
					_wg.done();
				};
				a();
			});
		});
	};
	_wg.wait_();
}

function _doWork(_dur:Duration):Void {
	var _start:Time = (now() == null ? null : now().__copy__());
	while (since((_start == null ? null : _start.__copy__())) < _dur) {};
}

function testTicker(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _baseCount:GoInt = (10 : GoInt);
	var _baseDelta:Duration = (20000000 : Duration);
	if (false) {
		_baseCount = (6 : GoInt);
		_baseDelta = (100000000 : Duration);
	};
	var _errs:Slice<GoString> = (null : Slice<GoString>);
	var _logErrs:() -> Void = function():Void {
		for (_0 => _e in _errs) {
			_t.log(Go.toInterface(_e));
		};
	};
	for (_0 => _test in (new Slice<T__struct_8>(0, 0, ({_count: (0 : GoInt), _delta: ((0 : GoInt64) : Duration)} : T__struct_8),
		({_count: (0 : GoInt), _delta: ((0 : GoInt64) : Duration)} : T__struct_8)) : Slice<T__struct_8>)) {
		var _count:GoInt = _test._count, _delta:Duration = _test._delta;
		var _ticker = newTicker(_delta);
		var _t0:Time = (now() == null ? null : now().__copy__());
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_count / (2 : GoInt)), _i++, {
				_ticker.c.__get__();
			});
		};
		_ticker.reset(_delta * (2 : Duration));
		{
			var _i:GoInt = _count / (2 : GoInt);
			Go.cfor(_i < _count, _i++, {
				_ticker.c.__get__();
			});
		};
		_ticker.stop();
		var _t1:Time = (now() == null ? null : now().__copy__());
		var _dt:Duration = _t1.sub((_t0 == null ? null : _t0.__copy__()));
		var _target:Duration = ((3 : Duration) * _delta) * (_count / (2 : GoInt) : Duration);
		var _slop:Duration = (_target * (3 : Duration)) / (10 : Duration);
		if ((_dt < (_target - _slop)) || (_dt > (_target + _slop))) {
			_errs = (_errs.__append__(stdgo.fmt.Fmt.sprintf((Go.str("%d %s ticks then %d %s ticks took %s, expected [%s,%s]") : GoString),
				Go.toInterface(_count / (2 : GoInt)), Go.toInterface(Go.asInterface(_delta)), Go.toInterface(_count / (2 : GoInt)),
				Go.toInterface(Go.asInterface(_delta * (2 : Duration))), Go.toInterface(Go.asInterface(_dt)), Go.toInterface(Go.asInterface(_target - _slop)),
				Go.toInterface(Go.asInterface(_target + _slop)))));
			if (_dt > (_target + _slop)) {
				sleep((500000000 : Duration));
			};
			continue;
		};
		sleep((2 : Duration) * _delta);
		Go.select([
			_ticker.c.__get__() => {
				_errs = (_errs.__append__((Go.str("Ticker did not shut down") : GoString)));
				continue;
			},
			{}
		]);
		if ((_errs.length) > (0 : GoInt)) {
			_t.logf((Go.str("saw %d errors, ignoring to avoid flakiness") : GoString), Go.toInterface((_errs.length)));
			_logErrs();
		};
		return;
	};
	_t.errorf((Go.str("saw %d errors") : GoString), Go.toInterface((_errs.length)));
	_logErrs();
}

/**
	// Issue 21874
**/
function testTickerStopWithDirectInitialization(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _c = new Chan<Time>(0, () -> ({} : Time));
	var _tk = ({c: _c} : Ticker);
	_tk.stop();
}

/**
	// Test that a bug tearing down a ticker has been fixed. This routine should not deadlock.
**/
function testTeardown(_t:Ref<stdgo.testing.Testing.T>):Void {
	var delta:Duration = (100000000 : Duration);
	if (stdgo.testing.Testing.short()) {
		delta = (20000000 : Duration);
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (3:GoInt), _i++, {
			var _ticker = newTicker(delta);
			_ticker.c.__get__();
			_ticker.stop();
		});
	};
}

/**
	// Test the Tick convenience wrapper.
**/
function testTick(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _got = tick((-1 : Duration));
		if (_got != null) {
			_t.errorf((Go.str("Tick(-1) = %v; want nil") : GoString), Go.toInterface(_got));
		};
	};
}

/**
	// Test that NewTicker panics when given a duration less than zero.
**/
function testNewTickerLtZeroDuration(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.errorf((Go.str("NewTicker(-1) should have panicked") : GoString));
				};
			};
		};
		a();
	});
	try {
		newTicker((-1 : Duration));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that Ticker.Reset panics when given a duration less than zero.
**/
function testTickerResetLtZeroDuration(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.errorf((Go.str("Ticker.Reset(0) should have panicked") : GoString));
				};
			};
		};
		a();
	});
	try {
		var _tk = newTicker((1000000000 : Duration));
		_tk.reset((0 : Duration));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function benchmarkTicker(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _ticker = newTicker((1 : Duration));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_ticker.c.__get__();
			});
		};
		_ticker.stop();
	});
}

function benchmarkTickerReset(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _ticker = newTicker((1 : Duration));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_ticker.reset((2 : Duration));
			});
		};
		_ticker.stop();
	});
}

function benchmarkTickerResetNaive(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmark(_b, function(_n:GoInt):Void {
		var _ticker = newTicker((1 : Duration));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				_ticker.stop();
				_ticker = newTicker((2 : Duration));
			});
		};
		_ticker.stop();
	});
}

/**
	// We should be in PST/PDT, but if the time zone files are missing we
	// won't be. The purpose of this test is to at least explain why some of
	// the subsequent tests fail.
**/
function testZoneData(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _lt:Time = (now() == null ? null : now().__copy__());
	{
		var __tmp__ = _lt.zone(),
			_name:GoString = __tmp__._0,
			_off:GoInt = __tmp__._1;
		if ((_off != (-28800 : GoInt)) && (_off != (-25200 : GoInt))) {
			_t.errorf((Go.str("Unable to find US Pacific time zone data for testing; time zone is %q offset %d") : GoString), Go.toInterface(_name),
				Go.toInterface(_off));
			_t.error(Go.toInterface((Go.str("Likely problem: the time zone files have not been installed.") : GoString)));
		};
	};
}

function _same(_t:Time, _u:Ref<T_parsedTime>):Bool {
	var __tmp__ = _t.date(),
		_year:GoInt = __tmp__._0,
		_month:Month = __tmp__._1,
		_day:GoInt = __tmp__._2;
	var __tmp__ = _t.clock(),
		_hour:GoInt = __tmp__._0,
		_min:GoInt = __tmp__._1,
		_sec:GoInt = __tmp__._2;
	var __tmp__ = _t.zone(),
		_name:GoString = __tmp__._0,
		_offset:GoInt = __tmp__._1;
	if ((((((((_year != _u.year) || (_month != _u.month)) || (_day != _u.day)) || (_hour != _u.hour)) || (_min != _u.minute))
		|| (_sec != _u.second))
		|| (_name != _u.zone))
		|| (_offset != _u.zoneOffset)) {
		return false;
	};
	return (((((((_t.year() == _u.year) && (_t.month() == _u.month)) && (_t.day() == _u.day)) && (_t.hour() == _u.hour))
		&& (_t.minute() == _u.minute))
		&& (_t.second() == _u.second))
		&& (_t.nanosecond() == _u.nanosecond))
		&& (_t.weekday() == _u.weekday);
}

function testSecondsToUTC(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _utctests) {
		var _sec:GoInt64 = _test._seconds;
		var _golden = _test._golden;
		var _tm:Time = (unix(_sec, (0 : GoInt64)).utc() == null ? null : unix(_sec, (0 : GoInt64)).utc().__copy__());
		var _newsec:GoInt64 = _tm.unix();
		if (_newsec != _sec) {
			_t.errorf((Go.str("SecondsToUTC(%d).Seconds() = %d") : GoString), Go.toInterface(_sec), Go.toInterface(_newsec));
		};
		if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
			_t.errorf((Go.str("SecondsToUTC(%d):  // %#v") : GoString), Go.toInterface(_sec), Go.toInterface(Go.asInterface(_tm)));
			_t.errorf((Go.str("  want=%+v") : GoString), Go.toInterface(_golden));
			_t.errorf((Go.str("  have=%v") : GoString), Go.toInterface(_tm.format((Go.str("2006-01-02T15:04:05Z07:00 MST") : GoString))));
		};
	};
}

function testNanosecondsToUTC(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _nanoutctests) {
		var _golden = _test._golden;
		var _nsec:GoInt64 = (_test._seconds * (1e+09 : GoInt64)) + (_golden.nanosecond : GoInt64);
		var _tm:Time = (unix((0 : GoInt64), _nsec).utc() == null ? null : unix((0 : GoInt64), _nsec).utc().__copy__());
		var _newnsec:GoInt64 = (_tm.unix() * (1e+09 : GoInt64)) + (_tm.nanosecond() : GoInt64);
		if (_newnsec != _nsec) {
			_t.errorf((Go.str("NanosecondsToUTC(%d).Nanoseconds() = %d") : GoString), Go.toInterface(_nsec), Go.toInterface(_newnsec));
		};
		if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
			_t.errorf((Go.str("NanosecondsToUTC(%d):") : GoString), Go.toInterface(_nsec));
			_t.errorf((Go.str("  want=%+v") : GoString), Go.toInterface(_golden));
			_t.errorf((Go.str("  have=%+v") : GoString), Go.toInterface(_tm.format((Go.str("2006-01-02T15:04:05Z07:00 MST") : GoString))));
		};
	};
}

function testSecondsToLocalTime(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _localtests) {
		var _sec:GoInt64 = _test._seconds;
		var _golden = _test._golden;
		var _tm:Time = (unix(_sec, (0 : GoInt64)) == null ? null : unix(_sec, (0 : GoInt64)).__copy__());
		var _newsec:GoInt64 = _tm.unix();
		if (_newsec != _sec) {
			_t.errorf((Go.str("SecondsToLocalTime(%d).Seconds() = %d") : GoString), Go.toInterface(_sec), Go.toInterface(_newsec));
		};
		if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
			_t.errorf((Go.str("SecondsToLocalTime(%d):") : GoString), Go.toInterface(_sec));
			_t.errorf((Go.str("  want=%+v") : GoString), Go.toInterface(_golden));
			_t.errorf((Go.str("  have=%+v") : GoString), Go.toInterface(_tm.format((Go.str("2006-01-02T15:04:05Z07:00 MST") : GoString))));
		};
	};
}

function testNanosecondsToLocalTime(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _nanolocaltests) {
		var _golden = _test._golden;
		var _nsec:GoInt64 = (_test._seconds * (1e+09 : GoInt64)) + (_golden.nanosecond : GoInt64);
		var _tm:Time = (unix((0 : GoInt64), _nsec) == null ? null : unix((0 : GoInt64), _nsec).__copy__());
		var _newnsec:GoInt64 = (_tm.unix() * (1e+09 : GoInt64)) + (_tm.nanosecond() : GoInt64);
		if (_newnsec != _nsec) {
			_t.errorf((Go.str("NanosecondsToLocalTime(%d).Seconds() = %d") : GoString), Go.toInterface(_nsec), Go.toInterface(_newnsec));
		};
		if (!_same((_tm == null ? null : _tm.__copy__()), _golden)) {
			_t.errorf((Go.str("NanosecondsToLocalTime(%d):") : GoString), Go.toInterface(_nsec));
			_t.errorf((Go.str("  want=%+v") : GoString), Go.toInterface(_golden));
			_t.errorf((Go.str("  have=%+v") : GoString), Go.toInterface(_tm.format((Go.str("2006-01-02T15:04:05Z07:00 MST") : GoString))));
		};
	};
}

function testSecondsToUTCAndBack(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _f:GoInt64->Bool = function(_sec:GoInt64):Bool {
		return unix(_sec, (0 : GoInt64)).utc().unix() == _sec;
	};
	var _f32:GoInt32->Bool = function(_sec:GoInt32):Bool {
		return _f((_sec : GoInt64));
	};
	var _cfg = ({maxCount: (10000 : GoInt)} : stdgo.testing.quick.Quick.Config);
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f32), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

function testNanosecondsToUTCAndBack(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _f:GoInt64->Bool = function(_nsec:GoInt64):Bool {
		var _t:Time = (unix((0 : GoInt64), _nsec).utc() == null ? null : unix((0 : GoInt64), _nsec).utc().__copy__());
		var _ns:GoInt64 = (_t.unix() * (1e+09 : GoInt64)) + (_t.nanosecond() : GoInt64);
		return _ns == _nsec;
	};
	var _f32:GoInt32->Bool = function(_nsec:GoInt32):Bool {
		return _f((_nsec : GoInt64));
	};
	var _cfg = ({maxCount: (10000 : GoInt)} : stdgo.testing.quick.Quick.Config);
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f32), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

function testUnixMilli(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _f:GoInt64->Bool = function(_msec:GoInt64):Bool {
		var _t:Time = (unixMilli(_msec) == null ? null : unixMilli(_msec).__copy__());
		return _t.unixMilli() == _msec;
	};
	var _cfg = ({maxCount: (10000 : GoInt)} : stdgo.testing.quick.Quick.Config);
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

function testUnixMicro(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _f:GoInt64->Bool = function(_usec:GoInt64):Bool {
		var _t:Time = (unixMicro(_usec) == null ? null : unixMicro(_usec).__copy__());
		return _t.unixMicro() == _usec;
	};
	var _cfg = ({maxCount: (10000 : GoInt)} : stdgo.testing.quick.Quick.Config);
	{
		var _err:stdgo.Error = stdgo.testing.quick.Quick.check(Go.toInterface(_f), _cfg);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
}

/**
	// abs returns the absolute time stored in t, as seconds and nanoseconds.
**/
function _abs(_t:Time):{var _0:GoInt64; var _1:GoInt64;} {
	var _sec:GoInt64 = (0 : GoInt64), _nsec:GoInt64 = (0 : GoInt64);
	var _unix:GoInt64 = _t.unix();
	var _nano:GoInt = _t.nanosecond();
	return {_0: _unix + ("62135596800" : GoInt64), _1: (_nano : GoInt64)};
}

/**
	// absString returns abs as a decimal string.
**/
function _absString(_t:Time):GoString {
	var __tmp__ = _abs((_t == null ? null : _t.__copy__())),
		_sec:GoInt64 = __tmp__._0,
		_nsec:GoInt64 = __tmp__._1;
	if (_sec < (0:GoInt64)) {
		_sec = -_sec;
		_nsec = -_nsec;
		if (_nsec < (0:GoInt64)) {
			_nsec = _nsec + ((1e+09 : GoInt64));
			_sec--;
		};
		return stdgo.fmt.Fmt.sprintf((Go.str("-%d%09d") : GoString), Go.toInterface(_sec), Go.toInterface(_nsec));
	};
	return stdgo.fmt.Fmt.sprintf((Go.str("%d%09d") : GoString), Go.toInterface(_sec), Go.toInterface(_nsec));
}

function testTruncateRound(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _bsec:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_),
		_bnsec:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_),
		_bd:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_),
		_bt:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_),
		_br:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_),
		_bq:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_),
		_b1e9:Ref<stdgo.math.big.Big.Int_> = ({} : stdgo.math.big.Big.Int_);
	_b1e9.setInt64((1e+09 : GoInt64));
	var _testOne:(GoInt64, GoInt64, GoInt64) -> Bool = function(_ti:GoInt64, _tns:GoInt64, _di:GoInt64):Bool {
		_t.helper();
		var _t0:Time = (unix(_ti, (_tns : GoInt64)).utc() == null ? null : unix(_ti, (_tns : GoInt64)).utc().__copy__());
		var _d:Duration = (_di : Duration);
		if (_d < (0:Duration)) {
			_d = -_d;
		};
		if (_d <= (0 : Duration)) {
			_d = (1 : Duration);
		};
		var __tmp__ = _abs((_t0 == null ? null : _t0.__copy__())), _sec:GoInt64 = __tmp__._0, _nsec:GoInt64 = __tmp__._1;
		_bsec.setInt64(_sec);
		_bnsec.setInt64(_nsec);
		_bt.mul(_bsec, _b1e9);
		_bt.add(_bt, _bnsec);
		_bd.setInt64((_d : GoInt64));
		_bq.divMod(_bt, _bd, _br);
		var _r:GoInt64 = _br.int64();
		var _t1:Time = (_t0.add(-(_r : Duration)) == null ? null : _t0.add(-(_r : Duration)).__copy__());
		{
			var _trunc:Time = (_t0.truncate(_d) == null ? null : _t0.truncate(_d).__copy__());
			if (_trunc != _t1) {
				_t.errorf((Go.str("Time.Truncate(%s, %s) = %s, want %s\n%v trunc %v =\n%v want\n%v") : GoString),
					Go.toInterface(_t0.format((Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString))), Go.toInterface(Go.asInterface(_d)),
					Go.toInterface(Go.asInterface(_trunc)), Go.toInterface(_t1.format((Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString))),
					Go.toInterface(_absString((_t0 == null ? null : _t0.__copy__()))), Go.toInterface((_d : GoInt64)),
					Go.toInterface(_absString((_trunc == null ? null : _trunc.__copy__()))),
					Go.toInterface(_absString((_t1 == null ? null : _t1.__copy__()))));
				return false;
			};
		};
		if ((_r > ((_d : GoInt64) / (2 : GoInt64))) || ((_r + _r) == (_d : GoInt64))) {
			_t1 = (_t1.add((_d : Duration)) == null ? null : _t1.add((_d : Duration)).__copy__());
		};
		{
			var _rnd:Time = (_t0.round(_d) == null ? null : _t0.round(_d).__copy__());
			if (_rnd != _t1) {
				_t.errorf((Go.str("Time.Round(%s, %s) = %s, want %s\n%v round %v =\n%v want\n%v") : GoString),
					Go.toInterface(_t0.format((Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString))), Go.toInterface(Go.asInterface(_d)),
					Go.toInterface(Go.asInterface(_rnd)), Go.toInterface(_t1.format((Go.str("2006-01-02T15:04:05.999999999Z07:00") : GoString))),
					Go.toInterface(_absString((_t0 == null ? null : _t0.__copy__()))), Go.toInterface((_d : GoInt64)),
					Go.toInterface(_absString((_rnd == null ? null : _rnd.__copy__()))), Go.toInterface(_absString((_t1 == null ? null : _t1.__copy__()))));
				return false;
			};
		};
		return true;
	};
	for (_0 => _tt in _truncateRoundTests) {
		_testOne(_tt._t.unix(), (_tt._t.nanosecond() : GoInt64), (_tt._d : GoInt64));
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (100:GoInt), _i++, {
			{
				var _j:GoInt = (1 : GoInt);
				Go.cfor(_j < (100:GoInt), _j++, {
					_testOne(("62135596800" : GoInt64), (_i : GoInt64), (_j : GoInt64));
					_testOne(("62135596800" : GoInt64), -(_i : GoInt64), (_j : GoInt64));
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
	var _cfg = ({maxCount: (100000 : GoInt)} : stdgo.testing.quick.Quick.Config);
	if (stdgo.testing.Testing.short()) {
		_cfg.maxCount = (1000 : GoInt);
	};
	var _f1:(GoInt64, GoInt32, GoInt32) -> Bool = function(_ti:GoInt64, _tns:GoInt32, _logdi:GoInt32):Bool {
		var _d:Duration = (1 : Duration);
		var _a:GoUInt = (_logdi % (9 : GoInt32) : GoUInt), _b:GoInt32 = (_logdi >> (16 : GoUnTypedInt)) % (9 : GoInt32);
		_d = _d << (_a);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_b:GoInt), _i++, {
				_d = _d * ((5 : Duration));
			});
		};
		_ti = _ti >> ((1 : GoUnTypedInt));
		return _testOne(_ti, (_tns : GoInt64), (_d : GoInt64));
	};
	stdgo.testing.quick.Quick.check(Go.toInterface(_f1), _cfg);
	var _f2:(GoInt64, GoInt32, GoInt32) -> Bool = function(_ti:GoInt64, _tns:GoInt32, _di:GoInt32):Bool {
		var _d:Duration = (_di : Duration) * (1000000000 : Duration);
		if (_d < (0:Duration)) {
			_d = -_d;
		};
		_ti = _ti >> ((1 : GoUnTypedInt));
		return _testOne(_ti, (_tns : GoInt64), (_d : GoInt64));
	};
	stdgo.testing.quick.Quick.check(Go.toInterface(_f2), _cfg);
	var _f3:(GoInt64, GoInt64) -> Bool = function(_tns:GoInt64, _di:GoInt64):Bool {
		_di = _di & (("4294967294" : GoInt64));
		if (_di == (0 : GoInt64)) {
			_di = (2 : GoInt64);
		};
		_tns = _tns - (_tns % _di);
		if (_tns < (0:GoInt64)) {
			_tns = _tns + (_di / (2 : GoInt64));
		} else {
			_tns = _tns - (_di / (2 : GoInt64));
		};
		return _testOne((0 : GoInt64), _tns, _di);
	};
	stdgo.testing.quick.Quick.check(Go.toInterface(_f3), _cfg);
	var _f4:(GoInt64, GoInt32, GoInt64) -> Bool = function(_ti:GoInt64, _tns:GoInt32, _di:GoInt64):Bool {
		_ti = _ti >> ((1 : GoUnTypedInt));
		return _testOne(_ti, (_tns : GoInt64), _di);
	};
	stdgo.testing.quick.Quick.check(Go.toInterface(_f4), _cfg);
}

function testISOWeek(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _wt in _isoWeekTests) {
		var _dt:Time = (date(_wt._year, (_wt._month : Month), _wt._day, (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			utc) == null ? null : date(_wt._year, (_wt._month : Month), _wt._day, (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), utc).__copy__());
		var __tmp__ = _dt.isoweek(),
			_y:GoInt = __tmp__._0,
			_w:GoInt = __tmp__._1;
		if ((_w != _wt._wex) || (_y != _wt._yex)) {
			_t.errorf((Go.str("got %d/%d; expected %d/%d for %d-%02d-%02d") : GoString), Go.toInterface(_y), Go.toInterface(_w), Go.toInterface(_wt._yex),
				Go.toInterface(_wt._wex), Go.toInterface(_wt._year), Go.toInterface(_wt._month), Go.toInterface(_wt._day));
		};
	};
	{
		var _year:GoInt = (1950 : GoInt);
		Go.cfor(_year < (2100:GoInt), _year++, {
			{
				var __tmp__ = date(_year, (1 : Month), (4 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), utc).isoweek(),
					_y:GoInt = __tmp__._0,
					_w:GoInt = __tmp__._1;
				if ((_y != _year) || (_w != (1 : GoInt))) {
					_t.errorf((Go.str("got %d/%d; expected %d/1 for Jan 04") : GoString), Go.toInterface(_y), Go.toInterface(_w), Go.toInterface(_year));
				};
			};
		});
	};
}

function testYearDay(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _loc in _yearDayLocations) {
		for (_0 => _ydt in _yearDayTests) {
			var _dt:Time = (date(_ydt._year, (_ydt._month : Month), _ydt._day, (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date(_ydt._year, (_ydt._month : Month), _ydt._day, (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__());
			var _yday:GoInt = _dt.yearDay();
			if (_yday != _ydt._yday) {
				_t.errorf((Go.str("Date(%d-%02d-%02d in %v).YearDay() = %d, want %d") : GoString), Go.toInterface(_ydt._year), Go.toInterface(_ydt._month),
					Go.toInterface(_ydt._day), Go.toInterface(_loc), Go.toInterface(_yday), Go.toInterface(_ydt._yday));
				continue;
			};
			if ((_ydt._year < (0:GoInt)) || (_ydt._year > (9999 : GoInt))) {
				continue;
			};
			var _f:GoString = stdgo.fmt.Fmt.sprintf((Go.str("%04d-%02d-%02d %03d %+.2d00") : GoString), Go.toInterface(_ydt._year),
				Go.toInterface(_ydt._month), Go.toInterface(_ydt._day), Go.toInterface(_ydt._yday), Go.toInterface((_i - (2 : GoInt)) * (4 : GoInt)));
			var __tmp__ = parse((Go.str("2006-01-02 002 -0700") : GoString), _f),
				_dt1:Time = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.errorf(("Parse(\"2006-01-02 002 -0700\", %q): %v" : GoString), Go.toInterface(_f), Go.toInterface(_err));
				continue;
			};
			if (!_dt1.equal((_dt == null ? null : _dt.__copy__()))) {
				_t.errorf(("Parse(\"2006-01-02 002 -0700\", %q) = %v, want %v" : GoString), Go.toInterface(_f), Go.toInterface(Go.asInterface(_dt1)),
					Go.toInterface(Go.asInterface(_dt)));
			};
		};
	};
}

function testDurationString(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _durationTests) {
		{
			var _str:GoString = (_tt._d.string() : GoString);
			if (_str != _tt._str) {
				_t.errorf((Go.str("Duration(%d).String() = %s, want %s") : GoString), Go.toInterface((_tt._d : GoInt64)), Go.toInterface(_str),
					Go.toInterface(_tt._str));
			};
		};
		if (_tt._d > (0 : Duration)) {
			{
				var _str:GoString = ((-_tt._d).string() : GoString);
				if (_str != ((Go.str("-") : GoString) + _tt._str)) {
					_t.errorf((Go.str("Duration(%d).String() = %s, want %s") : GoString), Go.toInterface((-_tt._d : GoInt64)), Go.toInterface(_str),
						Go.toInterface((Go.str("-") : GoString) + _tt._str));
				};
			};
		};
	};
}

function testDate(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _dateTests) {
		var _time:Time = (date(_tt._year, (_tt._month : Month), _tt._day, _tt._hour, _tt._min, _tt._sec, _tt._nsec,
			_tt._z) == null ? null : date(_tt._year, (_tt._month : Month), _tt._day, _tt._hour, _tt._min, _tt._sec, _tt._nsec, _tt._z).__copy__());
		var _want:Time = (unix(_tt._unix, (0 : GoInt64)) == null ? null : unix(_tt._unix, (0 : GoInt64)).__copy__());
		if (!_time.equal((_want == null ? null : _want.__copy__()))) {
			_t.errorf((Go.str("Date(%d, %d, %d, %d, %d, %d, %d, %s) = %v, want %v") : GoString), Go.toInterface(_tt._year), Go.toInterface(_tt._month),
				Go.toInterface(_tt._day), Go.toInterface(_tt._hour), Go.toInterface(_tt._min), Go.toInterface(_tt._sec), Go.toInterface(_tt._nsec),
				Go.toInterface(_tt._z), Go.toInterface(Go.asInterface(_time)), Go.toInterface(Go.asInterface(_want)));
		};
	};
}

function testAddDate(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _t0:Time = (date((2011 : GoInt), (11 : Month), (18 : GoInt), (7 : GoInt), (56 : GoInt), (35 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2011 : GoInt), (11 : Month), (18 : GoInt), (7 : GoInt), (56 : GoInt), (35 : GoInt), (0 : GoInt), utc).__copy__());
	var _t1:Time = (date((2016 : GoInt), (3 : Month), (19 : GoInt), (7 : GoInt), (56 : GoInt), (35 : GoInt), (0 : GoInt),
		utc) == null ? null : date((2016 : GoInt), (3 : Month), (19 : GoInt), (7 : GoInt), (56 : GoInt), (35 : GoInt), (0 : GoInt), utc).__copy__());
	for (_0 => _at in _addDateTests) {
		var _time:Time = (_t0.addDate(_at._years, _at._months, _at._days) == null ? null : _t0.addDate(_at._years, _at._months, _at._days).__copy__());
		if (!_time.equal((_t1 == null ? null : _t1.__copy__()))) {
			_t.errorf((Go.str("AddDate(%d, %d, %d) = %v, want %v") : GoString), Go.toInterface(_at._years), Go.toInterface(_at._months),
				Go.toInterface(_at._days), Go.toInterface(Go.asInterface(_time)), Go.toInterface(Go.asInterface(_t1)));
		};
	};
}

function testDaysIn(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _daysInTests) {
		var _di:GoInt = daysIn((_tt._month : Month), _tt._year);
		if (_di != _tt._di) {
			_t.errorf((Go.str("got %d; expected %d for %d-%02d") : GoString), Go.toInterface(_di), Go.toInterface(_tt._di), Go.toInterface(_tt._year),
				Go.toInterface(_tt._month));
		};
	};
}

function testAddToExactSecond(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _t1:Time = (now() == null ? null : now().__copy__());
	var _t2:Time = (_t1.add((1000000000 : Duration) - (_t1.nanosecond() : Duration)) == null ? null : _t1.add((1000000000 : Duration)
		- (_t1.nanosecond() : Duration))
		.__copy__());
	var _sec:GoInt = (_t1.second() + (1 : GoInt)) % (60 : GoInt);
	if ((_t2.second() != _sec) || (_t2.nanosecond() != (0 : GoInt))) {
		_t.errorf((Go.str("sec = %d, nsec = %d, want sec = %d, nsec = 0") : GoString), Go.toInterface(_t2.second()), Go.toInterface(_t2.nanosecond()),
			Go.toInterface(_sec));
	};
}

function _equalTimeAndZone(_a:Time, _b:Time):Bool {
	var __tmp__ = _a.zone(),
		_aname:GoString = __tmp__._0,
		_aoffset:GoInt = __tmp__._1;
	var __tmp__ = _b.zone(),
		_bname:GoString = __tmp__._0,
		_boffset:GoInt = __tmp__._1;
	return (_a.equal((_b == null ? null : _b.__copy__())) && (_aoffset == _boffset)) && (_aname == _bname);
}

function testTimeGob(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	var _enc = stdgo.encoding.gob.Gob.newEncoder(Go.asInterface(_b));
	var _dec = stdgo.encoding.gob.Gob.newDecoder(Go.asInterface(_b));
	for (_0 => _tt in _gobTests) {
		var _gobtt:Time = ({} : Time);
		{
			var _err:stdgo.Error = _enc.encode(Go.toInterface(_tt));
			if (_err != null) {
				_t.errorf((Go.str("%v gob Encode error = %q, want nil") : GoString), Go.toInterface(Go.asInterface(_tt)), Go.toInterface(_err));
			} else {
				var _err:stdgo.Error = _dec.decode(Go.toInterface(_gobtt));
				if (_err != null) {
					_t.errorf((Go.str("%v gob Decode error = %q, want nil") : GoString), Go.toInterface(Go.asInterface(_tt)), Go.toInterface(_err));
				} else if (!_equalTimeAndZone((_gobtt == null ? null : _gobtt.__copy__()), (_tt == null ? null : _tt.__copy__()))) {
					_t.errorf((Go.str("Decoded time = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_gobtt)), Go.toInterface(Go.asInterface(_tt)));
				};
			};
		};
		_b.reset();
	};
}

function testInvalidTimeGob(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _invalidEncodingTests) {
		var _ignored:Time = ({} : Time);
		var _err:stdgo.Error = _ignored.gobDecode(_tt._bytes);
		if ((_err == null) || (_err.error() != _tt._want)) {
			_t.errorf((Go.str("time.GobDecode(%#v) error = %v, want %v") : GoString), Go.toInterface(_tt._bytes), Go.toInterface(_err),
				Go.toInterface(_tt._want));
		};
		_err = _ignored.unmarshalBinary(_tt._bytes);
		if ((_err == null) || (_err.error() != _tt._want)) {
			_t.errorf((Go.str("time.UnmarshalBinary(%#v) error = %v, want %v") : GoString), Go.toInterface(_tt._bytes), Go.toInterface(_err),
				Go.toInterface(_tt._want));
		};
	};
}

function testNotGobEncodableTime(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _notEncodableTimes) {
		var __tmp__ = _tt._time.gobEncode(),
			_1:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_err == null) || (_err.error() != _tt._want)) {
			_t.errorf((Go.str("%v GobEncode error = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_tt._time)), Go.toInterface(_err),
				Go.toInterface(_tt._want));
		};
		{
			var __tmp__ = _tt._time.marshalBinary();
			_err = __tmp__._1;
		};
		if ((_err == null) || (_err.error() != _tt._want)) {
			_t.errorf((Go.str("%v MarshalBinary error = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_tt._time)), Go.toInterface(_err),
				Go.toInterface(_tt._want));
		};
	};
}

function testTimeJSON(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _jsonTests) {
		var _jsonTime:Time = ({} : Time);
		{
			var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(Go.asInterface(_tt._time))),
				_jsonBytes:Slice<GoUInt8> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.errorf((Go.str("%v json.Marshal error = %v, want nil") : GoString), Go.toInterface(Go.asInterface(_tt._time)), Go.toInterface(_err));
			} else if ((_jsonBytes : GoString) != _tt._json) {
				_t.errorf((Go.str("%v JSON = %#q, want %#q") : GoString), Go.toInterface(Go.asInterface(_tt._time)), Go.toInterface((_jsonBytes : GoString)),
					Go.toInterface(_tt._json));
			} else {
				_err = stdgo.encoding.json.Json.unmarshal(_jsonBytes, Go.toInterface(_jsonTime));
				if (_err != null) {
					_t.errorf((Go.str("%v json.Unmarshal error = %v, want nil") : GoString), Go.toInterface(Go.asInterface(_tt._time)), Go.toInterface(_err));
				} else if (!_equalTimeAndZone((_jsonTime == null ? null : _jsonTime.__copy__()), (_tt._time == null ? null : _tt._time.__copy__()))) {
					_t.errorf((Go.str("Unmarshaled time = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_jsonTime)),
						Go.toInterface(Go.asInterface(_tt._time)));
				};
			};
		};
	};
}

function testInvalidTimeJSON(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tt:Time = ({} : Time);
	var _err:stdgo.Error = stdgo.encoding.json.Json.unmarshal((("{\"now is the time\":\"buddy\"}" : GoString) : Slice<GoByte>), Go.toInterface(_tt));
	var __tmp__ = try {
		{value: ((_err.__underlying__().value : Dynamic) : Ref<ParseError>), ok: true};
	} catch (_) {
		{value: (null : ParseError), ok: false};
	}, _0 = __tmp__.value, _isParseErr = __tmp__.ok;
	if (!_isParseErr) {
		_t.errorf((Go.str("expected *time.ParseError unmarshaling JSON, got %v") : GoString), Go.toInterface(_err));
	};
}

function testNotJSONEncodableTime(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _notJSONEncodableTimes) {
		var __tmp__ = _tt._time.marshalJSON(),
			_1:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_err == null) || (_err.error() != _tt._want)) {
			_t.errorf((Go.str("%v MarshalJSON error = %v, want %v") : GoString), Go.toInterface(Go.asInterface(_tt._time)), Go.toInterface(_err),
				Go.toInterface(_tt._want));
		};
	};
}

function testParseDuration(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tc in _parseDurationTests) {
		var __tmp__ = parseDuration(_tc._in),
			_d:Duration = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_err != null) || (_d != _tc._want)) {
			_t.errorf((Go.str("ParseDuration(%q) = %v, %v, want %v, nil") : GoString), Go.toInterface(_tc._in), Go.toInterface(Go.asInterface(_d)),
				Go.toInterface(_err), Go.toInterface(Go.asInterface(_tc._want)));
		};
	};
}

function testParseDurationErrors(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tc in _parseDurationErrorTests) {
		var __tmp__ = parseDuration(_tc._in),
			_1:Duration = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null) {
			_t.errorf((Go.str("ParseDuration(%q) = _, nil, want _, non-nil") : GoString), Go.toInterface(_tc._in));
		} else if (!stdgo.strings.Strings.contains(_err.error(), _tc._expect)) {
			_t.errorf((Go.str("ParseDuration(%q) = _, %q, error does not contain %q") : GoString), Go.toInterface(_tc._in), Go.toInterface(_err),
				Go.toInterface(_tc._expect));
		};
	};
}

function testParseDurationRoundTrip(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _max0:Duration = ("9223372036854775807" : Duration);
	var __tmp__ = parseDuration((_max0.string() : GoString)),
		_max1:Duration = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if ((_err != null) || (_max0 != _max1)) {
		_t.errorf((Go.str("round-trip failed: %d => %q => %d, %v") : GoString), Go.toInterface(Go.asInterface(_max0)),
			Go.toInterface((_max0.string() : GoString)), Go.toInterface(Go.asInterface(_max1)), Go.toInterface(_err));
	};
	var _min0:Duration = ("-9223372036854775808" : Duration);
	var __tmp__ = parseDuration((_min0.string() : GoString)),
		_min1:Duration = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if ((_err != null) || (_min0 != _min1)) {
		_t.errorf((Go.str("round-trip failed: %d => %q => %d, %v") : GoString), Go.toInterface(Go.asInterface(_min0)),
			Go.toInterface((_min0.string() : GoString)), Go.toInterface(Go.asInterface(_min1)), Go.toInterface(_err));
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (100:GoInt), _i++, {
			var _d0:Duration = (stdgo.math.rand.Rand.int31() : Duration) * (1000000 : Duration);
			var _s:GoString = (_d0.string() : GoString);
			var __tmp__ = parseDuration(_s),
				_d1:Duration = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if ((_err != null) || (_d0 != _d1)) {
				_t.errorf((Go.str("round-trip failed: %d => %q => %d, %v") : GoString), Go.toInterface(Go.asInterface(_d0)), Go.toInterface(_s),
					Go.toInterface(Go.asInterface(_d1)), Go.toInterface(_err));
			};
		});
	};
}

/**
	// golang.org/issue/4622
**/
function testLocationRace(_t:Ref<stdgo.testing.Testing.T>):Void {
	resetLocalOnceForTest();
	var _c = new Chan<GoString>((1 : GoInt).toBasic(), () -> ("" : GoString));
	Go.routine(() -> {
		var a = function():Void {
			_c.__send__((now().string() : GoString));
		};
		a();
	});
	(now().string() : GoString);
	_c.__get__();
	sleep((100000000 : Duration));
	forceUSPacificForTesting();
}

function testCountMallocs(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface((Go.str("skipping malloc count in short mode") : GoString)));
	};
	if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
		_t.skip(Go.toInterface((Go.str("skipping; GOMAXPROCS>1") : GoString)));
	};
	for (_0 => _mt in _mallocTest) {
		var _allocs:GoInt = (stdgo.testing.Testing.allocsPerRun((100 : GoInt), _mt._fn) : GoInt);
		if (_allocs > _mt._count) {
			_t.errorf((Go.str("%s: %d allocs, want %d") : GoString), Go.toInterface(_mt._desc), Go.toInterface(_allocs), Go.toInterface(_mt._count));
		};
	};
}

function testLoadFixed(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = loadLocation((Go.str("Etc/GMT+1") : GoString)),
		_loc:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var __tmp__ = now().in_(_loc).zone(),
		_name:GoString = __tmp__._0,
		_offset:GoInt = __tmp__._1;
	if (!((_name == (Go.str("GMT+1") : GoString)) || (_name == (Go.str("-01") : GoString))) || (_offset != (-3600 : GoInt))) {
		_t.errorf((Go.str("Now().In(loc).Zone() = %q, %d, want %q or %q, %d") : GoString), Go.toInterface(_name), Go.toInterface(_offset),
			Go.toInterface((Go.str("GMT+1") : GoString)), Go.toInterface((Go.str("-01") : GoString)), Go.toInterface((-3600 : GoInt)));
	};
}

function testSub(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_i => _st in _subTests) {
		var _got:Duration = _st._t.sub((_st._u == null ? null : _st._u.__copy__()));
		if (_got != _st._d) {
			_t.errorf((Go.str("#%d: Sub(%v, %v): got %v; want %v") : GoString), Go.toInterface(_i), Go.toInterface(Go.asInterface(_st._t)),
				Go.toInterface(Go.asInterface(_st._u)), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_st._d)));
		};
	};
}

function testDurationNanoseconds(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _nsDurationTests) {
		{
			var _got:GoInt64 = _tt._d.nanoseconds();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Nanoseconds() = %d; want: %d") : GoString), Go.toInterface(Go.asInterface(_tt._d)), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
}

function testDurationMicroseconds(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _usDurationTests) {
		{
			var _got:GoInt64 = _tt._d.microseconds();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Microseconds() = %d; want: %d") : GoString), Go.toInterface(Go.asInterface(_tt._d)), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
}

function testDurationMilliseconds(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _msDurationTests) {
		{
			var _got:GoInt64 = _tt._d.milliseconds();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Milliseconds() = %d; want: %d") : GoString), Go.toInterface(Go.asInterface(_tt._d)), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
}

function testDurationSeconds(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _secDurationTests) {
		{
			var _got:GoFloat64 = _tt._d.seconds();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Seconds() = %g; want: %g") : GoString), Go.toInterface(Go.asInterface(_tt._d)), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
}

function testDurationMinutes(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _minDurationTests) {
		{
			var _got:GoFloat64 = _tt._d.minutes();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Minutes() = %g; want: %g") : GoString), Go.toInterface(Go.asInterface(_tt._d)), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
}

function testDurationHours(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _hourDurationTests) {
		{
			var _got:GoFloat64 = _tt._d.hours();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Hours() = %g; want: %g") : GoString), Go.toInterface(Go.asInterface(_tt._d)), Go.toInterface(_got),
					Go.toInterface(_tt._want));
			};
		};
	};
}

function testDurationTruncate(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _durationTruncateTests) {
		{
			var _got:Duration = _tt._d.truncate(_tt._m);
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Truncate(%s) = %s; want: %s") : GoString), Go.toInterface(Go.asInterface(_tt._d)),
					Go.toInterface(Go.asInterface(_tt._m)), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_tt._want)));
			};
		};
	};
}

function testDurationRound(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _durationRoundTests) {
		{
			var _got:Duration = _tt._d.round(_tt._m);
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Round(%s) = %s; want: %s") : GoString), Go.toInterface(Go.asInterface(_tt._d)),
					Go.toInterface(Go.asInterface(_tt._m)), Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_tt._want)));
			};
		};
	};
}

function testDurationAbs(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _durationAbsTests) {
		{
			var _got:Duration = _tt._d.abs();
			if (_got != _tt._want) {
				_t.errorf((Go.str("Duration(%s).Abs() = %s; want: %s") : GoString), Go.toInterface(Go.asInterface(_tt._d)),
					Go.toInterface(Go.asInterface(_got)), Go.toInterface(Go.asInterface(_tt._want)));
			};
		};
	};
}

function testDefaultLoc(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _defaultLocTests) {
		var _t1:Time = (new Time() : Time);
		var _t2:Time = ((new Time() : Time).utc() == null ? null : (new Time() : Time).utc().__copy__());
		if (!_tt._f((_t1 == null ? null : _t1.__copy__()), (_t2 == null ? null : _t2.__copy__()))) {
			_t.errorf((Go.str("Time{} and Time{}.UTC() behave differently for %s") : GoString), Go.toInterface(_tt._name));
		};
	};
}

function benchmarkNow(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t = (now() == null ? null : now().__copy__());
		});
	};
}

function benchmarkNowUnixNano(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_u = now().unixNano();
		});
	};
}

function benchmarkNowUnixMilli(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_u = now().unixMilli();
		});
	};
}

function benchmarkNowUnixMicro(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_u = now().unixMicro();
		});
	};
}

function benchmarkFormat(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (unix((1265346057 : GoInt64), (0 : GoInt64)) == null ? null : unix((1265346057 : GoInt64), (0 : GoInt64)).__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.format((Go.str("Mon Jan  2 15:04:05 2006") : GoString));
		});
	};
}

function benchmarkFormatNow(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.format((Go.str("Mon Jan  2 15:04:05 2006") : GoString));
		});
	};
}

function benchmarkMarshalJSON(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.marshalJSON();
		});
	};
}

function benchmarkMarshalText(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.marshalText();
		});
	};
}

function benchmarkParse(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parse((Go.str("Mon Jan _2 15:04:05 2006") : GoString), (Go.str("Mon Jan  2 15:04:05 2006") : GoString));
		});
	};
}

function benchmarkParseDuration(_b:Ref<stdgo.testing.Testing.B>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			parseDuration((Go.str("9007199254.740993ms") : GoString));
			parseDuration((Go.str("9007199254740993ns") : GoString));
		});
	};
}

function benchmarkHour(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.hour();
		});
	};
}

function benchmarkSecond(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.second();
		});
	};
}

function benchmarkYear(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.year();
		});
	};
}

function benchmarkDay(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.day();
		});
	};
}

function benchmarkISOWeek(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _t:Time = (now() == null ? null : now().__copy__());
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_t.isoweek();
		});
	};
}

function testMarshalBinaryZeroTime(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _t0:Time = (new Time() : Time);
	var __tmp__ = _t0.marshalBinary(),
		_enc:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.fatal(Go.toInterface(_err));
	};
	var _t1:Time = (now() == null ? null : now().__copy__());
	{
		var _err:stdgo.Error = _t1.unmarshalBinary(_enc);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	if (_t1 != _t0) {
		_t.errorf((Go.str("t0=%#v\nt1=%#v\nwant identical structures") : GoString), Go.toInterface(Go.asInterface(_t0)), Go.toInterface(Go.asInterface(_t1)));
	};
}

function testMarshalBinaryVersion2(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __tmp__ = parse((Go.str("2006-01-02T15:04:05Z07:00") : GoString), (Go.str("1880-01-01T00:00:00Z") : GoString)),
		_t0:Time = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.errorf((Go.str("Failed to parse time, error = %v") : GoString), Go.toInterface(_err));
	};
	var __tmp__ = loadLocation((Go.str("US/Eastern") : GoString)),
		_loc:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.errorf((Go.str("Failed to load location, error = %v") : GoString), Go.toInterface(_err));
	};
	var _t1:Time = (_t0.in_(_loc) == null ? null : _t0.in_(_loc).__copy__());
	var __tmp__ = _t1.marshalBinary(),
		_b:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		_t.errorf((Go.str("Failed to Marshal, error = %v") : GoString), Go.toInterface(_err));
	};
	var _t2:Time = (new Time() : Time);
	_err = _t2.unmarshalBinary(_b);
	if (_err != null) {
		_t.errorf((Go.str("Failed to Unmarshal, error = %v") : GoString), Go.toInterface(_err));
	};
	if (!(_t0.equal((_t1 == null ? null : _t1.__copy__())) && _t1.equal((_t2 == null ? null : _t2.__copy__())))) {
		if (!_t0.equal((_t1 == null ? null : _t1.__copy__()))) {
			_t.errorf((Go.str("The result t1: %+v after Marshal is not matched original t0: %+v") : GoString), Go.toInterface(Go.asInterface(_t1)),
				Go.toInterface(Go.asInterface(_t0)));
		};
		if (!_t1.equal((_t2 == null ? null : _t2.__copy__()))) {
			_t.errorf((Go.str("The result t2: %+v after Unmarshal is not matched original t1: %+v") : GoString), Go.toInterface(Go.asInterface(_t2)),
				Go.toInterface(Go.asInterface(_t1)));
		};
	};
}

/**
	// Issue 17720: Zero value of time.Month fails to print
**/
function testZeroMonthString(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _got:GoString = ((0 : Month).string() : GoString),
			_want:GoString = (Go.str("%!Month(0)") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("zero month = %q; want %q") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

/**
	// Issue 24692: Out of range weekday panics
**/
function testWeekdayString(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _got:GoString = ((2 : Weekday).string() : GoString),
			_want:GoString = (Go.str("Tuesday") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("Tuesday weekday = %q; want %q") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	{
		var _got:GoString = ((14 : Weekday).string() : GoString),
			_want:GoString = (Go.str("%!Weekday(14)") : GoString);
		if (_got != _want) {
			_t.errorf((Go.str("14th weekday = %q; want %q") : GoString), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function testReadFileLimit(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _zero:GoString = (Go.str("/dev/zero") : GoString);
	{
		var __tmp__ = stdgo.os.Os.stat((Go.str("/dev/zero") : GoString)),
			_0:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.skip(Go.toInterface((Go.str("skipping test without a /dev/zero") : GoString)));
		};
	};
	var __tmp__ = readFile((Go.str("/dev/zero") : GoString)),
		_1:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), (Go.str("is too large") : GoString))) {
		_t.errorf((Go.str("readFile(%q) error = %v; want error containing \'is too large\'") : GoString), Go.toInterface((Go.str("/dev/zero") : GoString)),
			Go.toInterface(_err));
	};
}

/**
	// Issue 25686: hard crash on concurrent timer access.
	// Issue 37400: panic with "racy use of timers"
	// This test deliberately invokes a race condition.
	// We are testing that we don't crash with "fatal error: panic holding locks",
	// and that we also don't panic.
**/
function testConcurrentTimerReset(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _goroutines:GoUnTypedInt = (8 : GoUnTypedInt);
	var _tries:GoUnTypedInt = (1000 : GoUnTypedInt);
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	_wg.add((8 : GoInt));
	var _timer = newTimer(("3600000000000" : Duration));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (8:GoInt), _i++, {
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					var __deferstack__:Array<Void->Void> = [];
					__deferstack__.unshift(() -> _wg.done());
					try {
						{
							var _j:GoInt = (0 : GoInt);
							Go.cfor(_j < (1000:GoInt), _j++, {
								_timer.reset(("3600000000000" : Duration) + (_i * _j : Duration));
							});
						};
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						Go.recover_exception = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				};
				a(_i);
			});
		});
	};
	_wg.wait_();
}

/**
	// Issue 37400: panic with "racy use of timers".
**/
function testConcurrentTimerResetStop(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _goroutines:GoUnTypedInt = (8 : GoUnTypedInt);
	var _tries:GoUnTypedInt = (1000 : GoUnTypedInt);
	var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
	_wg.add((16 : GoInt));
	var _timer = newTimer(("3600000000000" : Duration));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (8:GoInt), _i++, {
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					var __deferstack__:Array<Void->Void> = [];
					__deferstack__.unshift(() -> _wg.done());
					try {
						{
							var _j:GoInt = (0 : GoInt);
							Go.cfor(_j < (1000:GoInt), _j++, {
								_timer.reset(("3600000000000" : Duration) + (_i * _j : Duration));
							});
						};
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						Go.recover_exception = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				};
				a(_i);
			});
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					var __deferstack__:Array<Void->Void> = [];
					__deferstack__.unshift(() -> _wg.done());
					try {
						_timer.stop();
						for (defer in __deferstack__) {
							defer();
						};
						{
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					} catch (__exception__) {
						if (!(__exception__.native is AnyInterfaceData))
							throw __exception__;
						Go.recover_exception = __exception__.native;
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				};
				a(_i);
			});
		});
	};
	_wg.wait_();
}

function testTimeIsDST(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var __tmp__ = loadLocation((Go.str("Australia/Sydney") : GoString)),
			_tzWithDST:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf((Go.str("could not load tz \'Australia/Sydney\': %v") : GoString), Go.toInterface(_err));
		};
		var __tmp__ = loadLocation((Go.str("Australia/Brisbane") : GoString)),
			_tzWithoutDST:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf((Go.str("could not load tz \'Australia/Brisbane\': %v") : GoString), Go.toInterface(_err));
		};
		var _tzFixed = fixedZone((Go.str("FIXED_TIME") : GoString), (12345 : GoInt));
		var _tests = {
			var s:GoArray<T__struct_26> = new GoArray<T__struct_26>(...[
				for (i in 0...8) ({
					_time:({} : Time), _want:false
				} : T__struct_26)
			]);
			s[0] = ({_time: (date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc) == null ? null : date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					utc).__copy__()), _want: false} : T__struct_26);
			s[1] = ({_time: (date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				utc) == null ? null : date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					utc).__copy__()), _want: false} : T__struct_26);
			s[2] = ({_time: (date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_tzWithDST) == null ? null : date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_tzWithDST).__copy__()), _want: true} : T__struct_26);
			s[3] = ({_time: (date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_tzWithDST) == null ? null : date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_tzWithDST).__copy__()), _want: false} : T__struct_26);
			s[4] = ({_time: (date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_tzWithoutDST) == null ? null : date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_tzWithoutDST).__copy__()), _want: false} : T__struct_26);
			s[5] = ({_time: (date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_tzWithoutDST) == null ? null : date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_tzWithoutDST).__copy__()), _want: false} : T__struct_26);
			s[6] = ({_time: (date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_tzFixed) == null ? null : date((2009 : GoInt), (1 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_tzFixed).__copy__()), _want: false} : T__struct_26);
			s[7] = ({_time: (date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_tzFixed) == null ? null : date((2009 : GoInt), (6 : Month), (1 : GoInt), (12 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_tzFixed).__copy__()), _want: false} : T__struct_26);
			s;
		};
		for (_i => _tt in _tests) {
			var _got:Bool = _tt._time.isDST();
			if (_got != _tt._want) {
				_t.errorf((Go.str("#%d:: (%#v).IsDST()=%t, want %t") : GoString), Go.toInterface(_i),
					Go.toInterface(_tt._time.format((Go.str("2006-01-02T15:04:05Z07:00") : GoString))), Go.toInterface(_got), Go.toInterface(_tt._want));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testTimeAddSecOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _maxInt64:GoInt64 = ("9223372036854775807" : GoInt64);
	var _timeExt:GoInt64 = (_maxInt64 - ("62135596800" : GoInt64)) - (50 : GoInt64);
	var _notMonoTime:Time = (unix(_timeExt, (0 : GoInt64)) == null ? null : unix(_timeExt, (0 : GoInt64)).__copy__());
	{
		var _i:GoInt64 = (0 : GoInt64);
		Go.cfor(_i < (100:GoInt64), _i++, {
			var _sec:GoInt64 = _notMonoTime.unix();
			_notMonoTime = (_notMonoTime.add((_i * (1e+09 : GoInt64) : Duration)) == null ? null : _notMonoTime.add((_i * (1e+09 : GoInt64) : Duration))
				.__copy__());
			{
				var _newSec:GoInt64 = _notMonoTime.unix();
				if ((_newSec != (_sec + _i)) && ((_newSec + ("62135596800" : GoInt64)) != _maxInt64)) {
					_t.fatalf((Go.str("time ext: %d overflows with positive delta, overflow threshold: %d") : GoString), Go.toInterface(_newSec),
						Go.toInterface(_maxInt64));
				};
			};
		});
	};
	_maxInt64 = -_maxInt64;
	_notMonoTime = (notMonoNegativeTime == null ? null : notMonoNegativeTime.__copy__());
	{
		var _i:GoInt64 = (0 : GoInt64);
		Go.cfor(_i > (-100 : GoInt64), _i--, {
			var _sec:GoInt64 = _notMonoTime.unix();
			_notMonoTime = (_notMonoTime.add((_i * (1e+09 : GoInt64) : Duration)) == null ? null : _notMonoTime.add((_i * (1e+09 : GoInt64) : Duration))
				.__copy__());
			{
				var _newSec:GoInt64 = _notMonoTime.unix();
				if ((_newSec != (_sec + _i)) && ((_newSec + ("62135596800" : GoInt64)) != _maxInt64)) {
					_t.fatalf((Go.str("time ext: %d overflows with positive delta, overflow threshold: %d") : GoString), Go.toInterface(_newSec),
						Go.toInterface(_maxInt64));
				};
			};
		});
	};
}

/**
	// Issue 49284: time: ParseInLocation incorrectly because of Daylight Saving Time
**/
function testTimeWithZoneTransition(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var __tmp__ = loadLocation((Go.str("Asia/Shanghai") : GoString)),
			_loc:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var _tests = {
			var s:GoArray<T__struct_27> = new GoArray<T__struct_27>(...[
				for (i in 0...8) ({
					_give:({} : Time), _want:({} : Time)
				} : T__struct_27)
			]);
			s[0] = ({_give: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (17 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (17 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (9 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (9 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[1] = ({_give: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (10 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (10 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[2] = ({_give: (date((1991 : GoInt), (4 : Month), (14 : GoInt), (1 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (14 : GoInt), (1 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (17 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (17 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[3] = ({_give: (date((1991 : GoInt), (4 : Month), (14 : GoInt), (3 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (14 : GoInt), (3 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[4] = ({_give: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (16 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (16 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (7 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (7 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[5] = ({_give: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (17 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (17 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (8 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (8 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[6] = ({_give: (date((1991 : GoInt), (9 : Month), (15 : GoInt), (0 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (15 : GoInt), (0 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (15 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (15 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s[7] = ({_give: (date((1991 : GoInt), (9 : Month), (15 : GoInt), (2 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (15 : GoInt), (2 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _want: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					utc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
						utc).__copy__())} : T__struct_27);
			s;
		};
		for (_i => _tt in _tests) {
			if (!_tt._give.equal((_tt._want == null ? null : _tt._want.__copy__()))) {
				_t.errorf((Go.str("#%d:: %#v is not equal to %#v") : GoString), Go.toInterface(_i),
					Go.toInterface(_tt._give.format((Go.str("2006-01-02T15:04:05Z07:00") : GoString))),
					Go.toInterface(_tt._want.format((Go.str("2006-01-02T15:04:05Z07:00") : GoString))));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testZoneBounds(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var __tmp__ = loadLocation((Go.str("Asia/Shanghai") : GoString)),
			_loc:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		for (_0 => _test in _utctests) {
			var _sec:GoInt64 = _test._seconds;
			var _golden = _test._golden;
			var _tm:Time = (unix(_sec, (0 : GoInt64)).utc() == null ? null : unix(_sec, (0 : GoInt64)).utc().__copy__());
			var __tmp__ = _tm.zoneBounds(),
				_start:Time = __tmp__._0,
				_end:Time = __tmp__._1;
			if (!(_start.isZero() && _end.isZero())) {
				_t.errorf((Go.str("ZoneBounds of %+v expects two zero Time, got:\n  start=%v\n  end=%v") : GoString), Go.toInterface(_golden),
					Go.toInterface(Go.asInterface(_start)), Go.toInterface(Go.asInterface(_end)));
			};
		};
		var _beginTime:Time = (date((-2147483648 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_loc) == null ? null : date((-2147483648 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc).__copy__());
		var __tmp__ = _beginTime.zoneBounds(),
			_start:Time = __tmp__._0,
			_end:Time = __tmp__._1;
		if (!_start.isZero() || _end.isZero()) {
			_t.errorf((Go.str("ZoneBounds of %v expects start is zero Time, got:\n  start=%v\n  end=%v") : GoString),
				Go.toInterface(Go.asInterface(_beginTime)), Go.toInterface(Go.asInterface(_start)), Go.toInterface(Go.asInterface(_end)));
		};
		var _foreverTime:Time = (date((2147483647 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_loc) == null ? null : date((2147483647 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc).__copy__());
		{
			var __tmp__ = _foreverTime.zoneBounds();
			_start = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
			_end = (__tmp__._1 == null ? null : __tmp__._1.__copy__());
		};
		if (_start.isZero() || !_end.isZero()) {
			_t.errorf((Go.str("ZoneBounds of %v expects end is zero Time, got:\n  start=%v\n  end=%v") : GoString),
				Go.toInterface(Go.asInterface(_foreverTime)), Go.toInterface(Go.asInterface(_start)), Go.toInterface(Go.asInterface(_end)));
		};
		var _boundOne:Time = (date((1990 : GoInt), (9 : Month), (16 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_loc) == null ? null : date((1990 : GoInt), (9 : Month), (16 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc).__copy__());
		var _boundTwo:Time = (date((1991 : GoInt), (4 : Month), (14 : GoInt), (3 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_loc) == null ? null : date((1991 : GoInt), (4 : Month), (14 : GoInt), (3 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc).__copy__());
		var _boundThree:Time = (date((1991 : GoInt), (9 : Month), (15 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_loc) == null ? null : date((1991 : GoInt), (9 : Month), (15 : GoInt), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc).__copy__());
		var _makeLocalTime:GoInt64->Time = function(_sec:GoInt64):Time {
			return (unix(_sec, (0 : GoInt64)) == null ? null : unix(_sec, (0 : GoInt64)).__copy__());
		};
		var _realTests = {
			var s:GoArray<T__struct_28> = new GoArray<T__struct_28>(...[
				for (i in 0...15) ({
					_giveTime:({} : Time), _wantStart:({} : Time), _wantEnd:({} : Time)
				} : T__struct_28)
			]);
			s[0] = ({_giveTime: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (17 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (17 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _wantStart: (_boundOne == null ? null : _boundOne.__copy__()),
				_wantEnd: (_boundTwo == null ? null : _boundTwo.__copy__())} : T__struct_28);
			s[1] = ({_giveTime: (date((1991 : GoInt), (4 : Month), (13 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (13 : GoInt), (18 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _wantStart: (_boundOne == null ? null : _boundOne.__copy__()),
				_wantEnd: (_boundTwo == null ? null : _boundTwo.__copy__())} : T__struct_28);
			s[2] = ({_giveTime: (date((1991 : GoInt), (4 : Month), (14 : GoInt), (1 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (4 : Month), (14 : GoInt), (1 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _wantStart: (_boundOne == null ? null : _boundOne.__copy__()),
				_wantEnd: (_boundTwo == null ? null : _boundTwo.__copy__())} : T__struct_28);
			s[3] = ({_giveTime: (_boundTwo == null ? null : _boundTwo.__copy__()), _wantStart: (_boundTwo == null ? null : _boundTwo.__copy__()),
				_wantEnd: (_boundThree == null ? null : _boundThree.__copy__())} : T__struct_28);
			s[4] = ({_giveTime: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (16 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (16 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _wantStart: (_boundTwo == null ? null : _boundTwo.__copy__()),
				_wantEnd: (_boundThree == null ? null : _boundThree.__copy__())} : T__struct_28);
			s[5] = ({_giveTime: (date((1991 : GoInt), (9 : Month), (14 : GoInt), (17 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (14 : GoInt), (17 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _wantStart: (_boundTwo == null ? null : _boundTwo.__copy__()),
				_wantEnd: (_boundThree == null ? null : _boundThree.__copy__())} : T__struct_28);
			s[6] = ({_giveTime: (date((1991 : GoInt), (9 : Month), (15 : GoInt), (0 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
				_loc) == null ? null : date((1991 : GoInt), (9 : Month), (15 : GoInt), (0 : GoInt), (50 : GoInt), (0 : GoInt), (0 : GoInt),
					_loc).__copy__()), _wantStart: (_boundTwo == null ? null : _boundTwo.__copy__()),
				_wantEnd: (_boundThree == null ? null : _boundThree.__copy__())} : T__struct_28);
			s[7] = ({_giveTime: (_makeLocalTime((0 : GoInt64)) == null ? null : _makeLocalTime((0 : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime((-5756400 : GoInt64)) == null ? null : _makeLocalTime((-5756400 : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime((9972000 : GoInt64)) == null ? null : _makeLocalTime((9972000 : GoInt64)).__copy__())} : T__struct_28);
			s[8] = ({_giveTime: (_makeLocalTime((1221681866 : GoInt64)) == null ? null : _makeLocalTime((1221681866 : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime((1205056800 : GoInt64)) == null ? null : _makeLocalTime((1205056800 : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime((1225616400 : GoInt64)) == null ? null : _makeLocalTime((1225616400 : GoInt64)).__copy__())} : T__struct_28);
			s[9] = ({_giveTime: (_makeLocalTime(("2152173599" : GoInt64)) == null ? null : _makeLocalTime(("2152173599" : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime((2145916800 : GoInt64)) == null ? null : _makeLocalTime((2145916800 : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime(("2152173600" : GoInt64)) == null ? null : _makeLocalTime(("2152173600" : GoInt64)).__copy__())} : T__struct_28);
			s[10] = ({_giveTime: (_makeLocalTime(("2152173600" : GoInt64)) == null ? null : _makeLocalTime(("2152173600" : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime(("2152173600" : GoInt64)) == null ? null : _makeLocalTime(("2152173600" : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime(("2172733200" : GoInt64)) == null ? null : _makeLocalTime(("2172733200" : GoInt64)).__copy__())} : T__struct_28);
			s[11] = ({_giveTime: (_makeLocalTime(("2152173601" : GoInt64)) == null ? null : _makeLocalTime(("2152173601" : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime(("2152173600" : GoInt64)) == null ? null : _makeLocalTime(("2152173600" : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime(("2172733200" : GoInt64)) == null ? null : _makeLocalTime(("2172733200" : GoInt64)).__copy__())} : T__struct_28);
			s[12] = ({_giveTime: (_makeLocalTime(("2159200800" : GoInt64)) == null ? null : _makeLocalTime(("2159200800" : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime(("2152173600" : GoInt64)) == null ? null : _makeLocalTime(("2152173600" : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime(("2172733200" : GoInt64)) == null ? null : _makeLocalTime(("2172733200" : GoInt64)).__copy__())} : T__struct_28);
			s[13] = ({_giveTime: (_makeLocalTime(("2172733199" : GoInt64)) == null ? null : _makeLocalTime(("2172733199" : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime(("2152173600" : GoInt64)) == null ? null : _makeLocalTime(("2152173600" : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime(("2172733200" : GoInt64)) == null ? null : _makeLocalTime(("2172733200" : GoInt64)).__copy__())} : T__struct_28);
			s[14] = ({_giveTime: (_makeLocalTime(("2172733200" : GoInt64)) == null ? null : _makeLocalTime(("2172733200" : GoInt64)).__copy__()),
				_wantStart: (_makeLocalTime(("2172733200" : GoInt64)) == null ? null : _makeLocalTime(("2172733200" : GoInt64)).__copy__()),
				_wantEnd: (_makeLocalTime(("2177452800" : GoInt64)) == null ? null : _makeLocalTime(("2177452800" : GoInt64)).__copy__())} : T__struct_28);
			s;
		};
		for (_i => _tt in _realTests) {
			var __tmp__ = _tt._giveTime.zoneBounds(),
				_start:Time = __tmp__._0,
				_end:Time = __tmp__._1;
			if (!_start.equal((_tt._wantStart == null ? null : _tt._wantStart.__copy__()))
				|| !_end.equal((_tt._wantEnd == null ? null : _tt._wantEnd.__copy__()))) {
				_t.errorf((Go.str("#%d:: ZoneBounds of %v expects right bounds:\n  got start=%v\n  want start=%v\n  got end=%v\n  want end=%v") : GoString),
					Go.toInterface(_i), Go.toInterface(Go.asInterface(_tt._giveTime)), Go.toInterface(Go.asInterface(_start)),
					Go.toInterface(Go.asInterface(_tt._wantStart)), Go.toInterface(Go.asInterface(_end)), Go.toInterface(Go.asInterface(_tt._wantEnd)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testEmbeddedTZData(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = stdgo.time.Time.disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		for (_0 => _zone in _zones) {
			var __tmp__ = stdgo.time.Time.loadLocation(_zone),
				_ref:Ref<Location> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.errorf((Go.str("LoadLocation(%q): %v") : GoString), Go.toInterface(_zone), Go.toInterface(_err));
				continue;
			};
			var __tmp__ = stdgo.time.Time.loadFromEmbeddedTZData(_zone),
				_embedded:GoString = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.errorf((Go.str("LoadFromEmbeddedTZData(%q): %v") : GoString), Go.toInterface(_zone), Go.toInterface(_err));
				continue;
			};
			var __tmp__ = stdgo.time.Time.loadLocationFromTZData(_zone, (_embedded : Slice<GoByte>)),
				_sample:Ref<Location> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.errorf((Go.str("LoadLocationFromTZData failed for %q: %v") : GoString), Go.toInterface(_zone), Go.toInterface(_err));
				continue;
			};
			var _v1:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_ref))
				.elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_ref))
				.elem()
				.__copy__());
			var _v2:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_sample))
				.elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_sample))
				.elem()
				.__copy__());
			var _typ:stdgo.reflect.Reflect.Type = _v1.type();
			var _nf:GoInt = _typ.numField();
			var _found:GoInt = (0 : GoInt);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _nf, _i++, {
					var _ft:stdgo.reflect.Reflect.StructField = (_typ.field(_i) == null ? null : _typ.field(_i).__copy__());
					if ((_ft.name != (Go.str("name") : GoString)) && (_ft.name != (Go.str("zone") : GoString))) {
						continue;
					};
					_found++;
					if (!_equal(_t, (_v1.field(_i) == null ? null : _v1.field(_i).__copy__()), (_v2.field(_i) == null ? null : _v2.field(_i).__copy__()))) {
						_t.errorf((Go.str("zone %s: system and embedded tzdata field %s differs") : GoString), Go.toInterface(_zone),
							Go.toInterface(_ft.name));
					};
				});
			};
			if (_found != (2 : GoInt)) {
				_t.errorf((Go.str("test must be updated for change to time.Location struct") : GoString));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// equal is a small version of reflect.DeepEqual that we use to
	// compare the values of zoneinfo unexported fields.
**/
function _equal(_t:Ref<stdgo.testing.Testing.T>, _f1:stdgo.reflect.Reflect.Value, _f2:stdgo.reflect.Reflect.Value):Bool {
	if (_f1.type().kind() == ((23 : stdgo.reflect.Reflect.Kind))) {
		if (_f1.len() != _f2.len()) {
			return false;
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _f1.len(), _i++, {
				if (!_equal(_t, (_f1.index(_i) == null ? null : _f1.index(_i).__copy__()), (_f2.index(_i) == null ? null : _f2.index(_i).__copy__()))) {
					return false;
				};
			});
		};
		return true;
	} else if (_f1.type().kind() == ((25 : stdgo.reflect.Reflect.Kind))) {
		var _nf:GoInt = _f1.type().numField();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _nf, _i++, {
				if (!_equal(_t, (_f1.field(_i) == null ? null : _f1.field(_i).__copy__()), (_f2.field(_i) == null ? null : _f2.field(_i).__copy__()))) {
					return false;
				};
			});
		};
		return true;
	} else if (_f1.type().kind() == ((24 : stdgo.reflect.Reflect.Kind))) {
		return (_f1.string() : GoString) == (_f2.string() : GoString);
	} else if (_f1.type().kind() == ((1 : stdgo.reflect.Reflect.Kind))) {
		return _f1.bool_() == _f2.bool_();
	} else if (_f1.type().kind() == ((2 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((3 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((4 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((5 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((6 : stdgo.reflect.Reflect.Kind))) {
		return _f1.int() == _f2.int();
	} else if (_f1.type().kind() == ((7 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((8 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((9 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((10 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((11 : stdgo.reflect.Reflect.Kind))
		|| _f1.type().kind() == ((12 : stdgo.reflect.Reflect.Kind))) {
		return _f1.uint() == _f2.uint();
	} else {
		_t.errorf((Go.str("test internal error: unsupported kind %v") : GoString), Go.toInterface(Go.asInterface(_f1.type().kind())));
		return true;
	};
}

function testEnvVarUsage(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	stdgo.time.Time.resetZoneinfoForTesting();
	try {
		var _testZoneinfo:GoString = (Go.str("foo.zip") : GoString);
		var _env:GoString = (Go.str("ZONEINFO") : GoString);
		_t.setenv((Go.str("ZONEINFO") : GoString), (Go.str("foo.zip") : GoString));
		stdgo.time.Time.loadLocation((Go.str("Asia/Jerusalem") : GoString));
		__deferstack__.unshift(() -> stdgo.time.Time.resetZoneinfoForTesting());
		{
			var _zoneinfo = stdgo.time.Time.zoneinfoForTesting();
			if ((Go.str("foo.zip") : GoString) != _zoneinfo.value) {
				_t.errorf((Go.str("zoneinfo does not match env variable: got %q want %q") : GoString), Go.toInterface(_zoneinfo.value),
					Go.toInterface((Go.str("foo.zip") : GoString)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testBadLocationErrMsg(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.time.Time.resetZoneinfoForTesting();
	var _loc:GoString = (Go.str("Asia/SomethingNotExist") : GoString);
	var _want:stdgo.Error = stdgo.errors.Errors.new_((Go.str("unknown time zone ") : GoString) + _loc);
	var __tmp__ = stdgo.time.Time.loadLocation(_loc),
		_0:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err.error() != _want.error()) {
		_t.errorf((Go.str("LoadLocation(%q) error = %v; want %v") : GoString), Go.toInterface(_loc), Go.toInterface(_err), Go.toInterface(_want));
	};
}

function testLoadLocationValidatesNames(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.time.Time.resetZoneinfoForTesting();
	var _env:GoString = (Go.str("ZONEINFO") : GoString);
	_t.setenv((Go.str("ZONEINFO") : GoString), (Go.str() : GoString));
	var _bad = (new Slice<GoString>(0, 0, (Go.str("/usr/foo/Foo") : GoString), (Go.str("\\UNC\x0Coo") : GoString), (Go.str("..") : GoString),
		(Go.str("a..") : GoString)) : Slice<GoString>);
	for (_0 => _v in _bad) {
		var __tmp__ = stdgo.time.Time.loadLocation(_v),
			_1:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != stdgo.time.Time.errLocation) {
			_t.errorf((Go.str("LoadLocation(%q) error = %v; want ErrLocation") : GoString), Go.toInterface(_v), Go.toInterface(_err));
		};
	};
}

function testVersion3(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = stdgo.time.Time.disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var __tmp__ = stdgo.time.Time.loadLocation((Go.str("Asia/Jerusalem") : GoString)),
			_0:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that we get the correct results for times before the first
	// transition time. To do this we explicitly check early dates in a
	// couple of specific timezones.
**/
function testFirstZone(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = stdgo.time.Time.disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var _format:GoString = (Go.str("Mon, 02 Jan 2006 15:04:05 -0700 (MST)") : GoString);
		var _tests:Slice<T__struct_29> = (new Slice<T__struct_29>(0, 0, ({
			_zone: (Go.str("PST8PDT") : GoString),
			_unix: (-1633269601 : GoInt64),
			_want1: (Go.str("Sun, 31 Mar 1918 01:59:59 -0800 (PST)") : GoString),
			_want2: (Go.str("Sun, 31 Mar 1918 03:00:00 -0700 (PDT)") : GoString)
		} : T__struct_29), ({
			_zone: (Go.str("Pacific/Fakaofo") : GoString),
			_unix: (1325242799 : GoInt64),
			_want1: (Go.str("Thu, 29 Dec 2011 23:59:59 -1100 (-11)") : GoString),
			_want2: (Go.str("Sat, 31 Dec 2011 00:00:00 +1300 (+13)") : GoString)
			} : T__struct_29)) : Slice<T__struct_29>);
		for (_0 => _test in _tests) {
			var __tmp__ = stdgo.time.Time.loadLocation(_test._zone),
				_z:Ref<Location> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			var _s:GoString = stdgo.time.Time.unix(_test._unix, (0 : GoInt64)).in_(_z).format((Go.str("Mon, 02 Jan 2006 15:04:05 -0700 (MST)") : GoString));
			if (_s != _test._want1) {
				_t.errorf((Go.str("for %s %d got %q want %q") : GoString), Go.toInterface(_test._zone), Go.toInterface(_test._unix), Go.toInterface(_s),
					Go.toInterface(_test._want1));
			};
			_s = stdgo.time.Time.unix(_test._unix + (1 : GoInt64), (0 : GoInt64)).in_(_z).format((Go.str("Mon, 02 Jan 2006 15:04:05 -0700 (MST)") : GoString));
			if (_s != _test._want2) {
				_t.errorf((Go.str("for %s %d got %q want %q") : GoString), Go.toInterface(_test._zone), Go.toInterface(_test._unix), Go.toInterface(_s),
					Go.toInterface(_test._want2));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testLocationNames(_t:Ref<stdgo.testing.Testing.T>):Void {
	if ((stdgo.time.Time.local.string() : GoString) != (Go.str("Local") : GoString)) {
		_t.errorf(("invalid Local location name: got %q want \"Local\"" : GoString), Go.toInterface(stdgo.time.Time.local));
	};
	if ((stdgo.time.Time.utc.string() : GoString) != (Go.str("UTC") : GoString)) {
		_t.errorf(("invalid UTC location name: got %q want \"UTC\"" : GoString), Go.toInterface(stdgo.time.Time.utc));
	};
}

function testLoadLocationFromTZData(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = stdgo.time.Time.disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var _locationName:GoString = (Go.str("Asia/Jerusalem") : GoString);
		var __tmp__ = stdgo.time.Time.loadLocation((Go.str("Asia/Jerusalem") : GoString)),
			_reference:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var __tmp__ = stdgo.time.Time.gorootZoneSource(stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t))),
			_gorootSource:GoString = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_t.fatal(Go.toInterface((Go.str("Failed to locate tzinfo source in GOROOT.") : GoString)));
		};
		var __tmp__ = stdgo.time.Time.loadTzinfo((Go.str("Asia/Jerusalem") : GoString), _gorootSource),
			_tzinfo:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var __tmp__ = stdgo.time.Time.loadLocationFromTZData((Go.str("Asia/Jerusalem") : GoString), _tzinfo),
			_sample:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_reference), Go.toInterface(_sample))) {
			_t.errorf((Go.str("return values of LoadLocationFromTZData and LoadLocation don\'t match") : GoString));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Issue 30099.
**/
function testEarlyLocation(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _undo:() -> Void = stdgo.time.Time.disablePlatformSources();
	try {
		__deferstack__.unshift(() -> _undo());
		var _locName:GoString = (Go.str("America/New_York") : GoString);
		var __tmp__ = stdgo.time.Time.loadLocation((Go.str("America/New_York") : GoString)),
			_loc:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
		var _d:Time = (stdgo.time.Time.date((1900 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt),
			_loc) == null ? null : stdgo.time.Time.date((1900 : GoInt), (1 : Month), (1 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), (0 : GoInt), _loc)
			.__copy__());
		var __tmp__ = _d.zone(),
			_tzName:GoString = __tmp__._0,
			_tzOffset:GoInt = __tmp__._1;
		{
			var _want:GoString = (Go.str("EST") : GoString);
			if (_tzName != _want) {
				_t.errorf((Go.str("Zone name == %s, want %s") : GoString), Go.toInterface(_tzName), Go.toInterface(_want));
			};
		};
		{
			var _want:GoInt = (-18000 : GoInt);
			if (_tzOffset != _want) {
				_t.errorf((Go.str("Zone offset == %d, want %d") : GoString), Go.toInterface(_tzOffset), Go.toInterface(_want));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testMalformedTZData(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _issue29437:GoString = (Go.str("TZif", 0, "000000000000000", 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "00") : GoString);
	var __tmp__ = stdgo.time.Time.loadLocationFromTZData((Go.str("abc") : GoString), (_issue29437 : Slice<GoByte>)),
		_0:Ref<Location> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err == null) {
		_t.error(Go.toInterface((Go.str("expected error, got none") : GoString)));
	};
}

function testLoadLocationFromTZDataSlim(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _slimTests) {
		var __tmp__ = stdgo.os.Os.readFile((Go.str("testdata/") : GoString) + _test._fileName),
			_tzData:Slice<GoUInt8> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			continue;
		};
		var __tmp__ = stdgo.time.Time.loadLocationFromTZData(_test._zoneName, _tzData),
			_reference:Ref<Location> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			_t.error(Go.toInterface(_err));
			continue;
		};
		var _d:Time = (_test._date(_reference) == null ? null : _test._date(_reference).__copy__());
		var __tmp__ = _d.zone(),
			_tzName:GoString = __tmp__._0,
			_tzOffset:GoInt = __tmp__._1;
		if (_tzName != _test._wantName) {
			_t.errorf((Go.str("Zone name == %s, want %s") : GoString), Go.toInterface(_tzName), Go.toInterface(_test._wantName));
		};
		if (_tzOffset != _test._wantOffset) {
			_t.errorf((Go.str("Zone offset == %d, want %d") : GoString), Go.toInterface(_tzOffset), Go.toInterface(_test._wantOffset));
		};
	};
}

function testTzset(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in (new Slice<T__struct_31>(0, 0, ({
		_inStr: (Go.str() : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: (0 : GoInt64),
		_name: (Go.str() : GoString),
		_off: (0 : GoInt),
		_start: (0 : GoInt64),
		_end: (0 : GoInt64),
		_isDST: false,
		_ok: false
	} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2159200800" : GoInt64),
		_name: (Go.str("PDT") : GoString),
		_off: (-25200 : GoInt),
		_start: ("2152173600" : GoInt64),
		_end: ("2172733200" : GoInt64),
		_isDST: true,
		_ok: true
		} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2152173599" : GoInt64),
		_name: (Go.str("PST") : GoString),
		_off: (-28800 : GoInt),
		_start: (2145916800 : GoInt64),
		_end: ("2152173600" : GoInt64),
		_isDST: false,
		_ok: true
		} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2152173600" : GoInt64),
		_name: (Go.str("PDT") : GoString),
		_off: (-25200 : GoInt),
		_start: ("2152173600" : GoInt64),
		_end: ("2172733200" : GoInt64),
		_isDST: true,
		_ok: true
		} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2152173601" : GoInt64),
		_name: (Go.str("PDT") : GoString),
		_off: (-25200 : GoInt),
		_start: ("2152173600" : GoInt64),
		_end: ("2172733200" : GoInt64),
		_isDST: true,
		_ok: true
		} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2172733199" : GoInt64),
		_name: (Go.str("PDT") : GoString),
		_off: (-25200 : GoInt),
		_start: ("2152173600" : GoInt64),
		_end: ("2172733200" : GoInt64),
		_isDST: true,
		_ok: true
		} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2172733200" : GoInt64),
		_name: (Go.str("PST") : GoString),
		_off: (-28800 : GoInt),
		_start: ("2172733200" : GoInt64),
		_end: ("2177452800" : GoInt64),
		_isDST: false,
		_ok: true
		} : T__struct_31), ({
		_inStr: (Go.str("PST8PDT,M3.2.0,M11.1.0") : GoString),
		_inEnd: (0 : GoInt64),
		_inSec: ("2172733201" : GoInt64),
		_name: (Go.str("PST") : GoString),
		_off: (-28800 : GoInt),
		_start: ("2172733200" : GoInt64),
		_end: ("2177452800" : GoInt64),
		_isDST: false,
		_ok: true
		} : T__struct_31)) : Slice<T__struct_31>)) {
		var __tmp__ = stdgo.time.Time.tzset(_test._inStr, _test._inEnd, _test._inSec),
			_name:GoString = __tmp__._0,
			_off:GoInt = __tmp__._1,
			_start:GoInt64 = __tmp__._2,
			_end:GoInt64 = __tmp__._3,
			_isDST:Bool = __tmp__._4,
			_ok:Bool = __tmp__._5;
		if ((((((_name != _test._name) || (_off != _test._off)) || (_start != _test._start)) || (_end != _test._end))
			|| (_isDST != _test._isDST))
			|| (_ok != _test._ok)) {
			_t.errorf((Go.str("tzset(%q, %d, %d) = %q, %d, %d, %d, %t, %t, want %q, %d, %d, %d, %t, %t") : GoString), Go.toInterface(_test._inStr),
				Go.toInterface(_test._inEnd), Go.toInterface(_test._inSec), Go.toInterface(_name), Go.toInterface(_off), Go.toInterface(_start),
				Go.toInterface(_end), Go.toInterface(_isDST), Go.toInterface(_ok), Go.toInterface(_test._name), Go.toInterface(_test._off),
				Go.toInterface(_test._start), Go.toInterface(_test._end), Go.toInterface(_test._isDST), Go.toInterface(_test._ok));
		};
	};
}

function testTzsetName(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in (new Slice<T__struct_32>(0, 0, ({
		_in: (Go.str() : GoString),
		_name: (Go.str() : GoString),
		_out: (Go.str() : GoString),
		_ok: false
	} : T__struct_32), ({
		_in: (Go.str("X") : GoString),
		_name: (Go.str() : GoString),
		_out: (Go.str() : GoString),
		_ok: false
		} : T__struct_32), ({
		_in: (Go.str("PST") : GoString),
		_name: (Go.str("PST") : GoString),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_32), ({
		_in: (Go.str("PST8PDT") : GoString),
		_name: (Go.str("PST") : GoString),
		_out: (Go.str("8PDT") : GoString),
		_ok: true
		} : T__struct_32), ({
		_in: (Go.str("PST-08") : GoString),
		_name: (Go.str("PST") : GoString),
		_out: (Go.str("-08") : GoString),
		_ok: true
		} : T__struct_32), ({
		_in: (Go.str("<A+B>+08") : GoString),
		_name: (Go.str("A+B") : GoString),
		_out: (Go.str("+08") : GoString),
		_ok: true
		} : T__struct_32)) : Slice<T__struct_32>)) {
		var __tmp__ = stdgo.time.Time.tzsetName(_test._in),
			_name:GoString = __tmp__._0,
			_out:GoString = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (((_name != _test._name) || (_out != _test._out)) || (_ok != _test._ok)) {
			_t.errorf((Go.str("tzsetName(%q) = %q, %q, %t, want %q, %q, %t") : GoString), Go.toInterface(_test._in), Go.toInterface(_name),
				Go.toInterface(_out), Go.toInterface(_ok), Go.toInterface(_test._name), Go.toInterface(_test._out), Go.toInterface(_test._ok));
		};
	};
}

function testTzsetOffset(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in (new Slice<T__struct_33>(0, 0, ({
		_in: (Go.str() : GoString),
		_off: (0 : GoInt),
		_out: (Go.str() : GoString),
		_ok: false
	} : T__struct_33), ({
		_in: (Go.str("X") : GoString),
		_off: (0 : GoInt),
		_out: (Go.str() : GoString),
		_ok: false
		} : T__struct_33), ({
		_in: (Go.str("+") : GoString),
		_off: (0 : GoInt),
		_out: (Go.str() : GoString),
		_ok: false
		} : T__struct_33), ({
		_in: (Go.str("+08") : GoString),
		_off: (28800 : GoInt),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_33), ({
		_in: (Go.str("-01:02:03") : GoString),
		_off: (-3723 : GoInt),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_33), ({
		_in: (Go.str("01") : GoString),
		_off: (3600 : GoInt),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_33), ({
		_in: (Go.str("100") : GoString),
		_off: (360000 : GoInt),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_33), ({
		_in: (Go.str("1000") : GoString),
		_off: (0 : GoInt),
		_out: (Go.str() : GoString),
		_ok: false
		} : T__struct_33), ({
		_in: (Go.str("8PDT") : GoString),
		_off: (28800 : GoInt),
		_out: (Go.str("PDT") : GoString),
		_ok: true
		} : T__struct_33)) : Slice<T__struct_33>)) {
		var __tmp__ = stdgo.time.Time.tzsetOffset(_test._in),
			_off:GoInt = __tmp__._0,
			_out:GoString = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (((_off != _test._off) || (_out != _test._out)) || (_ok != _test._ok)) {
			_t.errorf((Go.str("tzsetName(%q) = %d, %q, %t, want %d, %q, %t") : GoString), Go.toInterface(_test._in), Go.toInterface(_off),
				Go.toInterface(_out), Go.toInterface(_ok), Go.toInterface(_test._off), Go.toInterface(_test._out), Go.toInterface(_test._ok));
		};
	};
}

function testTzsetRule(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in (new Slice<T__struct_34>(0, 0, ({
		_in: (Go.str() : GoString),
		_r: (new Rule() : Rule),
		_out: (Go.str() : GoString),
		_ok: false
	} : T__struct_34), ({
		_in: (Go.str("X") : GoString),
		_r: (new Rule() : Rule),
		_out: (Go.str() : GoString),
		_ok: false
		} : T__struct_34), ({
		_in: (Go.str("J10") : GoString),
		_r: ({kind: (0 : RuleKind), day: (10 : GoInt), time: (7200 : GoInt)} : Rule),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_34), ({
		_in: (Go.str("20") : GoString),
		_r: ({kind: (1 : RuleKind), day: (20 : GoInt), time: (7200 : GoInt)} : Rule),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_34), ({
		_in: (Go.str("M1.2.3") : GoString),
		_r: ({
			kind: (2 : RuleKind),
			mon: (1 : GoInt),
			week: (2 : GoInt),
			day: (3 : GoInt),
			time: (7200 : GoInt)
		} : Rule),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_34), ({
		_in: (Go.str("30/03:00:00") : GoString),
		_r: ({kind: (1 : RuleKind), day: (30 : GoInt), time: (10800 : GoInt)} : Rule),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_34), ({
		_in: (Go.str("M4.5.6/03:00:00") : GoString),
		_r: ({
			kind: (2 : RuleKind),
			mon: (4 : GoInt),
			week: (5 : GoInt),
			day: (6 : GoInt),
			time: (10800 : GoInt)
		} : Rule),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_34), ({
		_in: (Go.str("M4.5.7/03:00:00") : GoString),
		_r: (new Rule() : Rule),
		_out: (Go.str() : GoString),
		_ok: false
		} : T__struct_34), ({
		_in: (Go.str("M4.5.6/-04") : GoString),
		_r: ({
			kind: (2 : RuleKind),
			mon: (4 : GoInt),
			week: (5 : GoInt),
			day: (6 : GoInt),
			time: (-14400 : GoInt)
		} : Rule),
		_out: (Go.str() : GoString),
		_ok: true
		} : T__struct_34)) : Slice<T__struct_34>)) {
		var __tmp__ = stdgo.time.Time.tzsetRule(_test._in),
			_r:Rule = __tmp__._0,
			_out:GoString = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if (((_r != _test._r) || (_out != _test._out)) || (_ok != _test._ok)) {
			_t.errorf((Go.str("tzsetName(%q) = %#v, %q, %t, want %#v, %q, %t") : GoString), Go.toInterface(_test._in), Go.toInterface(_r),
				Go.toInterface(_out), Go.toInterface(_ok), Go.toInterface(_test._r), Go.toInterface(_test._out), Go.toInterface(_test._ok));
		};
	};
}

@:keep var _ = {
	try {
		if (stdgo.time.Time.zoneinfoForTesting() != null) {
			throw Go.toInterface(stdgo.fmt.Fmt.errorf((Go.str("zoneinfo initialized before first LoadLocation") : GoString)));
		};
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
