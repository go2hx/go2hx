package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleParseInLocation():Void {
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Europe/Berlin" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        {};
        var __tmp__ = stdgo._internal.time.Time_parseInLocation.parseInLocation(("Jan 2, 2006 at 3:04pm (MST)" : stdgo.GoString), ("Jul 9, 2012 at 5:02am (CEST)" : stdgo.GoString), _loc), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, __3:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {};
        {
            var __tmp__ = stdgo._internal.time.Time_parseInLocation.parseInLocation(("2006-Jan-02" : stdgo.GoString), ("2012-Jul-09" : stdgo.GoString), _loc);
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
    }
