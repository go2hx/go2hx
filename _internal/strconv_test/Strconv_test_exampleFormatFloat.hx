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
function exampleFormatFloat():Void {
        var _v = (3.1415926535 : stdgo.GoFloat64);
        var _s32 = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_v, (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_s32));
        var _s64 = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_v, (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_s64));
        var _fmt64 = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_v, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_fmt64), stdgo.Go.toInterface(_fmt64));
    }
