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
function exampleAppendUint():Void {
        var _b10 = (("uint (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b10 = stdgo._internal.strconv.Strconv_appendUint.appendUint(_b10, (42i64 : stdgo.GoUInt64), (10 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("uint (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b16 = stdgo._internal.strconv.Strconv_appendUint.appendUint(_b16, (42i64 : stdgo.GoUInt64), (16 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
