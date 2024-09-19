package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
var _parseTimeZoneTests : stdgo.Slice<_internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest> = (new stdgo.Slice<_internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest>(29, 29, ...[
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("gmt hi there" : stdgo.GoString), (0 : stdgo.GoInt), false) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT hi there" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT+12 hi there" : stdgo.GoString), (6 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT+00 hi there" : stdgo.GoString), (6 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT+" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT+3" : stdgo.GoString), (5 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT+a" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT+3a" : stdgo.GoString), (5 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT-5 hi there" : stdgo.GoString), (5 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("GMT-51 hi there" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("ChST hi there" : stdgo.GoString), (4 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("MeST hi there" : stdgo.GoString), (4 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("MSDx" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("MSDY" : stdgo.GoString), (0 : stdgo.GoInt), false) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("ESAST hi" : stdgo.GoString), (5 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("ESASTT hi" : stdgo.GoString), (0 : stdgo.GoInt), false) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("ESATY hi" : stdgo.GoString), (0 : stdgo.GoInt), false) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("WITA hi" : stdgo.GoString), (4 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("+03 hi" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("-04 hi" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("+00" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("-11" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("-12" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("-23" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("-24" : stdgo.GoString), (0 : stdgo.GoInt), false) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("+13" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("+14" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("+23" : stdgo.GoString), (3 : stdgo.GoInt), true) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest),
(new _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest(("+24" : stdgo.GoString), (0 : stdgo.GoInt), false) : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : _internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest)])) : stdgo.Slice<_internal.time_test.Time_test_ParseTimeZoneTest.ParseTimeZoneTest>);
