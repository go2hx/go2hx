package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _totitle = stdgo._internal.bytes.Bytes_toUpperSpecial.toUpperSpecial(stdgo._internal.unicode.Unicode_azeriCase.azeriCase, _str);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((("Original : " : stdgo.GoString) + (_str : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((("ToUpper : " : stdgo.GoString) + (_totitle : stdgo.GoString)?.__copy__() : stdgo.GoString)));
    }
