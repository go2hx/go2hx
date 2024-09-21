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
function exampleAppendInt():Void {
        var _b10 = (("int (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b10 = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b10, (-42i64 : stdgo.GoInt64), (10 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("int (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b16 = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b16, (-42i64 : stdgo.GoInt64), (16 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
