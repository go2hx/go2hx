package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testZoneData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _lt = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {
            var __tmp__ = _lt.zone(), _name:stdgo.GoString = __tmp__._0, _off:stdgo.GoInt = __tmp__._1;
            if (((_off != (-28800 : stdgo.GoInt)) && (_off != (-25200 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Unable to find US Pacific time zone data for testing; time zone is %q offset %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_off));
                _t.error(stdgo.Go.toInterface(("Likely problem: the time zone files have not been installed." : stdgo.GoString)));
            };
        };
    }
