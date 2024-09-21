package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testLocationNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if ((stdgo._internal.time.Time_local.local.string() : stdgo.GoString) != (("Local" : stdgo.GoString))) {
            _t.errorf(("invalid Local location name: got %q want \"Local\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_local.local)));
        };
        if ((stdgo._internal.time.Time_utc.utc.string() : stdgo.GoString) != (("UTC" : stdgo.GoString))) {
            _t.errorf(("invalid UTC location name: got %q want \"UTC\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_utc.utc)));
        };
    }
