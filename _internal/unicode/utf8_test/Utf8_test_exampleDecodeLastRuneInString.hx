package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleDecodeLastRuneInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRuneInString.decodeLastRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt_printf.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(0, ((_str.length) - _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
