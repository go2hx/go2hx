package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testSub(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _st in _internal.time_test.Time_test__subTests._subTests) {
            var _got = (_st._t.sub(_st._u?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
            if (_got != (_st._d)) {
                _t.errorf(("#%d: Sub(%v, %v): got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._u)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_st._d)));
            };
        };
    }
