package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function exampleParseBool():Void {
        var _v = ("true" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool(_v?.__copy__()), _s:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
