package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _formatTests : stdgo.Slice<_internal.time_test.Time_test_FormatTest.FormatTest> = (new stdgo.Slice<_internal.time_test.Time_test_FormatTest.FormatTest>(29, 29, ...[
(new _internal.time_test.Time_test_FormatTest.FormatTest(("ANSIC" : stdgo.GoString), ("Mon Jan _2 15:04:05 2006" : stdgo.GoString), ("Wed Feb  4 21:00:57 2009" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("UnixDate" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb  4 21:00:57 PST 2009" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RubyDate" : stdgo.GoString), ("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Wed Feb 04 21:00:57 -0800 2009" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RFC822" : stdgo.GoString), ("02 Jan 06 15:04 MST" : stdgo.GoString), ("04 Feb 09 21:00 PST" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RFC850" : stdgo.GoString), ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString), ("Wednesday, 04-Feb-09 21:00:57 PST" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RFC1123" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), ("Wed, 04 Feb 2009 21:00:57 PST" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RFC1123Z" : stdgo.GoString), ("Mon, 02 Jan 2006 15:04:05 -0700" : stdgo.GoString), ("Wed, 04 Feb 2009 21:00:57 -0800" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RFC3339" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2009-02-04T21:00:57-08:00" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("RFC3339Nano" : stdgo.GoString), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString), ("2009-02-04T21:00:57.0123456-08:00" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Kitchen" : stdgo.GoString), ("3:04PM" : stdgo.GoString), ("9:00PM" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("am/pm" : stdgo.GoString), ("3pm" : stdgo.GoString), ("9pm" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("AM/PM" : stdgo.GoString), ("3PM" : stdgo.GoString), ("9PM" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("two-digit year" : stdgo.GoString), ("06 01 02" : stdgo.GoString), ("09 02 04" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Janet" : stdgo.GoString), ("Hi Janet, the Month is January" : stdgo.GoString), ("Hi Janet, the Month is February" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Stamp" : stdgo.GoString), ("Jan _2 15:04:05" : stdgo.GoString), ("Feb  4 21:00:57" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("StampMilli" : stdgo.GoString), ("Jan _2 15:04:05.000" : stdgo.GoString), ("Feb  4 21:00:57.012" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("StampMicro" : stdgo.GoString), ("Jan _2 15:04:05.000000" : stdgo.GoString), ("Feb  4 21:00:57.012345" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("StampNano" : stdgo.GoString), ("Jan _2 15:04:05.000000000" : stdgo.GoString), ("Feb  4 21:00:57.012345600" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("DateTime" : stdgo.GoString), ("2006-01-02 15:04:05" : stdgo.GoString), ("2009-02-04 21:00:57" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("DateOnly" : stdgo.GoString), ("2006-01-02" : stdgo.GoString), ("2009-02-04" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("TimeOnly" : stdgo.GoString), ("15:04:05" : stdgo.GoString), ("21:00:57" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("YearDay" : stdgo.GoString), ("Jan  2 002 __2 2" : stdgo.GoString), ("Feb  4 035  35 4" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Year" : stdgo.GoString), ("2006 6 06 _6 __6 ___6" : stdgo.GoString), ("2009 6 09 _6 __6 ___6" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Month" : stdgo.GoString), ("Jan January 1 01 _1" : stdgo.GoString), ("Feb February 2 02 _2" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("DayOfMonth" : stdgo.GoString), ("2 02 _2 __2" : stdgo.GoString), ("4 04  4  35" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("DayOfWeek" : stdgo.GoString), ("Mon Monday" : stdgo.GoString), ("Wed Wednesday" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Hour" : stdgo.GoString), ("15 3 03 _3" : stdgo.GoString), ("21 9 09 _9" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Minute" : stdgo.GoString), ("4 04 _4" : stdgo.GoString), ("0 00 _0" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest),
(new _internal.time_test.Time_test_FormatTest.FormatTest(("Second" : stdgo.GoString), ("5 05 _5" : stdgo.GoString), ("57 57 _57" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : _internal.time_test.Time_test_FormatTest.FormatTest)])) : stdgo.Slice<_internal.time_test.Time_test_FormatTest.FormatTest>);
