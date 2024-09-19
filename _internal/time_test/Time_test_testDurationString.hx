package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDurationString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__durationTests._durationTests) {
            {
                var _str = ((_tt._d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_str != (_tt._str)) {
                    _t.errorf(("Duration(%d).String() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface((_tt._d : stdgo.GoInt64)), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_tt._str));
                };
            };
            if ((_tt._d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                {
                    var _str = ((-_tt._d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_str != ((("-" : stdgo.GoString) + _tt._str?.__copy__() : stdgo.GoString))) {
                        _t.errorf(("Duration(%d).String() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface((-_tt._d : stdgo.GoInt64)), stdgo.Go.toInterface(_str), stdgo.Go.toInterface((("-" : stdgo.GoString) + _tt._str?.__copy__() : stdgo.GoString)));
                    };
                };
            };
        };
    }
