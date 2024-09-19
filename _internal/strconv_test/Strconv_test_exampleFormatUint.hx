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
function exampleFormatUint():Void {
        var _v = ((42i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _s10 = (stdgo._internal.strconv.Strconv_formatUint.formatUint(_v, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16 = (stdgo._internal.strconv.Strconv_formatUint.formatUint(_v, (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
