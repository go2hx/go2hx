package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDurationRound(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__durationRoundTests._durationRoundTests) {
            {
                var _got = (_tt._d.round(_tt._m) : stdgo._internal.time.Time_Duration.Duration);
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Round(%s) = %s; want: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._m)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._want)));
                };
            };
        };
    }
