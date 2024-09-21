package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMalformedTZData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _issue29437 = (stdgo.Go.str("TZif",
0,
"000000000000000",
0,
0,
0,
1,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"00")?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(("abc" : stdgo.GoString), (_issue29437 : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error, got none" : stdgo.GoString)));
        };
    }
