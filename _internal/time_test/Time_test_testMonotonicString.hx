package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMonotonicString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        _t.logf(("Now() = %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
        for (__10 => _tt in _internal.time_test.Time_test__monotonicStringTests._monotonicStringTests) {
            var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            stdgo._internal.time.Time_setMono.setMono((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>), _tt._mono);
            var _s = ((_t1.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _got = ((_s.__slice__((stdgo._internal.strings.Strings_lastIndex.lastIndex(_s?.__copy__(), (" " : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("with mono=%d: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._mono), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
