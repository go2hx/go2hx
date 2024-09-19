package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFormatSingleDigits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _time = (stdgo._internal.time.Time_date.date((2001 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (700000000 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _test = (new _internal.time_test.Time_test_FormatTest.FormatTest(("single digit format" : stdgo.GoString), ("3:4:5" : stdgo.GoString), ("4:5:6" : stdgo.GoString)) : _internal.time_test.Time_test_FormatTest.FormatTest);
        var _result = (_time.format(_test._format?.__copy__())?.__copy__() : stdgo.GoString);
        if (_result != (_test._result)) {
            _t.errorf(("%s expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_result));
        };
    }
