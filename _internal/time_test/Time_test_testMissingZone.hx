package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMissingZone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan 02 15:04:05 -0700 2006" : stdgo.GoString), ("Thu Feb 02 16:10:03 -0500 2006" : stdgo.GoString)), _time:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _expect = ("Thu Feb  2 16:10:03 -0500 2006" : stdgo.GoString);
        var _str = (_time.format(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_str != (_expect)) {
            _t.errorf(("got %s; expect %s" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expect));
        };
    }
