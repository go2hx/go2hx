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
function exampleAppendFloat():Void {
        var _b32 = (("float32:" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b32 = stdgo._internal.strconv.Strconv_appendFloat.appendFloat(_b32, (3.1415926535 : stdgo.GoFloat64), (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b32 : stdgo.GoString)));
        var _b64 = (("float64:" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b64 = stdgo._internal.strconv.Strconv_appendFloat.appendFloat(_b64, (3.1415926535 : stdgo.GoFloat64), (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b64 : stdgo.GoString)));
    }
