package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleValid():Void {
        var _valid = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _invalid = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_valid.valid(_valid)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_valid.valid(_invalid)));
    }
