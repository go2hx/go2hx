package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseDuration(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tc in _internal.time_test.Time_test__parseDurationTests._parseDurationTests) {
            var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(_tc._in?.__copy__()), _d:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_d != _tc._want) : Bool)) {
                _t.errorf(("ParseDuration(%q) = %v, %v, want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tc._want)));
            };
        };
    }
