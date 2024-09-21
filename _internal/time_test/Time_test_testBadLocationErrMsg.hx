package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testBadLocationErrMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.time.Time_resetZoneinfoForTesting.resetZoneinfoForTesting();
        var _loc = ("Asia/SomethingNotExist" : stdgo.GoString);
        var _want = (stdgo._internal.errors.Errors_new_.new_((("unknown time zone " : stdgo.GoString) + _loc?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Error);
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(_loc?.__copy__()), __2:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err.error() != (_want.error())) {
            _t.errorf(("LoadLocation(%q) error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
    }
