package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Format():Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39 PST 2015" : stdgo.GoString)), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("Asia/Shanghai" : stdgo.GoString)), _tz:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("default format:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Unix format:" : stdgo.GoString)), stdgo.Go.toInterface(_t.format(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Same, in UTC:" : stdgo.GoString)), stdgo.Go.toInterface(_t.utc().format(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("in Shanghai with seconds:" : stdgo.GoString)), stdgo.Go.toInterface(_t.in_(_tz).format(("2006-01-02T15:04:05 -070000" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("in Shanghai with colon seconds:" : stdgo.GoString)), stdgo.Go.toInterface(_t.in_(_tz).format(("2006-01-02T15:04:05 -07:00:00" : stdgo.GoString))));
        var _do = (function(_name:stdgo.GoString, _layout:stdgo.GoString, _want:stdgo.GoString):Void {
            var _got = (_t.format(_layout?.__copy__())?.__copy__() : stdgo.GoString);
            if (_want != (_got)) {
                stdgo._internal.fmt.Fmt_printf.printf(("error: for %q got %q; expected %q\n" : stdgo.GoString), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                return;
            };
            stdgo._internal.fmt.Fmt_printf.printf(("%-16s %q gives %q\n" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_layout), stdgo.Go.toInterface(_got));
        } : (stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        stdgo._internal.fmt.Fmt_printf.printf(("\nFormats:\n\n" : stdgo.GoString));
        _do(("Basic full date" : stdgo.GoString), ("Mon Jan 2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39 PST 2015" : stdgo.GoString));
        _do(("Basic short date" : stdgo.GoString), ("2006/01/02" : stdgo.GoString), ("2015/02/25" : stdgo.GoString));
        _do(("AM/PM" : stdgo.GoString), ("3PM==3pm==15h" : stdgo.GoString), ("11AM==11am==11h" : stdgo.GoString));
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39.1234 PST 2015" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        _do(("No fraction" : stdgo.GoString), ("Mon Jan _2 15:04:05 MST 2006" : stdgo.GoString), ("Wed Feb 25 11:06:39 PST 2015" : stdgo.GoString));
        _do(("0s for fraction" : stdgo.GoString), ("15:04:05.00000" : stdgo.GoString), ("11:06:39.12340" : stdgo.GoString));
        _do(("9s for fraction" : stdgo.GoString), ("15:04:05.99999999" : stdgo.GoString), ("11:06:39.1234" : stdgo.GoString));
    }
