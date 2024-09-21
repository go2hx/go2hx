package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleEncodeRune():Void {
        var _r = (19990 : stdgo.GoInt32);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, _r) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_buf));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_n));
    }
