package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testNoonIs12PM(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _noon = (stdgo._internal.time.Time_date.date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {};
        var _got = (_noon.format(("3:04PM" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_got != (("12:00PM" : stdgo.GoString))) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("12:00PM" : stdgo.GoString)));
        };
        _got = _noon.format(("03:04PM" : stdgo.GoString))?.__copy__();
        if (_got != (("12:00PM" : stdgo.GoString))) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("12:00PM" : stdgo.GoString)));
        };
    }
