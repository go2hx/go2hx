package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_AppendFormat():Void {
        var _t = (stdgo._internal.time.Time_date.date((2017 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (4 : stdgo.GoInt), (11 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _text = (("Time: " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _text = _t.appendFormat(_text, ("3:04PM" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_text : stdgo.GoString)));
    }
