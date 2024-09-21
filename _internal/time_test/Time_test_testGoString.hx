package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testGoString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__goStringTests._goStringTests) {
            if (_tt._in.goString() != (_tt._want)) {
                _t.errorf(("GoString (%q): got %q want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._in)), stdgo.Go.toInterface(_tt._in.goString()), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
