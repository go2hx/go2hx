package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseDurationErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tc in _internal.time_test.Time_test__parseDurationErrorTests._parseDurationErrorTests) {
            var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(_tc._in?.__copy__()), __3:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("ParseDuration(%q) = _, nil, want _, non-nil" : stdgo.GoString), stdgo.Go.toInterface(_tc._in));
            } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _tc._expect?.__copy__())) {
                _t.errorf(("ParseDuration(%q) = _, %q, error does not contain %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tc._expect));
            };
        };
    }
