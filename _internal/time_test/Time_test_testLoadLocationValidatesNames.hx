package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testLoadLocationValidatesNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.time.Time_resetZoneinfoForTesting.resetZoneinfoForTesting();
        {};
        _t.setenv(("ZONEINFO" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        var _bad = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("/usr/foo/Foo" : stdgo.GoString), ("\\UNC\x0Coo" : stdgo.GoString), (".." : stdgo.GoString), ("a.." : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__10 => _v in _bad) {
            var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(_v?.__copy__()), __11:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.time.Time_errLocation.errLocation))) {
                _t.errorf(("LoadLocation(%q) error = %v; want ErrLocation" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_err));
            };
        };
    }
