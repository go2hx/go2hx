package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _d = (1000000i64 : stdgo._internal.time.Time_Duration.Duration);
        {};
        while (true) {
            var _err = (_internal.time_test.Time_test__testReset._testReset(_d) : stdgo.Error);
            if (_err == null) {
                break;
            };
            _d = (_d * ((2i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
            if ((_d > (10000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _t.error(stdgo.Go.toInterface(_err));
            };
            _t.logf(("%v; trying duration %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
    }
