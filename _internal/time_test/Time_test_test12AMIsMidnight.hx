package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function test12AMIsMidnight(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("3:04PM" : stdgo.GoString), ("12:00AM" : stdgo.GoString)), _midnight:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_midnight.hour() != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %d; expect 0" : stdgo.GoString), stdgo.Go.toInterface(_midnight.hour()));
        };
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("03:04PM" : stdgo.GoString), ("12:00AM" : stdgo.GoString));
            _midnight = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_midnight.hour() != ((0 : stdgo.GoInt))) {
            _t.errorf(("got %d; expect 0" : stdgo.GoString), stdgo.Go.toInterface(_midnight.hour()));
        };
    }
