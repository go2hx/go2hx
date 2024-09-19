package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Format_pad():Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Sat Mar 7 11:06:39 PST 2015" : stdgo.GoString)), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _do = (function(_name:stdgo.GoString, _layout:stdgo.GoString, _want:stdgo.GoString):Void {
            var _got = (_t.format(_layout?.__copy__())?.__copy__() : stdgo.GoString);
            if (_want != (_got)) {
                stdgo._internal.fmt.Fmt_printf.printf(("error: for %q got %q; expected %q\n" : stdgo.GoString), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                return;
            };
            stdgo._internal.fmt.Fmt_printf.printf(("%-16s %q gives %q\n" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got));
        } : (stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        _do(("Unix" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Sat Mar  7 11:06:39 PST 2015" : stdgo.GoString));
        _do(("No pad" : stdgo.GoString), ("<2>" : stdgo.GoString), ("<7>" : stdgo.GoString));
        _do(("Spaces" : stdgo.GoString), ("<_2>" : stdgo.GoString), ("< 7>" : stdgo.GoString));
        _do(("Zeros" : stdgo.GoString), ("<02>" : stdgo.GoString), ("<07>" : stdgo.GoString));
        _do(("Suppressed pad" : stdgo.GoString), ("04:05" : stdgo.GoString), ("06:39" : stdgo.GoString));
    }
