package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleDecodeRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt_printf.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
