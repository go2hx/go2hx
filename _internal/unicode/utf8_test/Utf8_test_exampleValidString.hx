package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleValidString():Void {
        var _valid = ("Hello, 世界" : stdgo.GoString);
        var _invalid = (((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_validString.validString(_valid?.__copy__())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_validString.validString(_invalid?.__copy__())));
    }
