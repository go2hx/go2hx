package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testLoadFixed(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Etc/GMT+1" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.time.Time_now.now().in_(_loc).zone(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((!(((_name == ("GMT+1" : stdgo.GoString)) || (_name == ("-01" : stdgo.GoString)) : Bool)) || (_offset != (-3600 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Now().In(loc).Zone() = %q, %d, want %q or %q, %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(("GMT+1" : stdgo.GoString)), stdgo.Go.toInterface(("-01" : stdgo.GoString)), stdgo.Go.toInterface((-3600 : stdgo.GoInt)));
        };
    }
