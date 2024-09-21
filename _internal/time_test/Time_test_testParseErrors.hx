package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__parseErrorTests._parseErrorTests) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_test._format?.__copy__(), _test._value?.__copy__()), __3:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("expected error for %q %q" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._value));
            } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._expect?.__copy__())) {
                _t.errorf(("expected error with %q for %q %q; got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expect), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_err));
            };
        };
    }
