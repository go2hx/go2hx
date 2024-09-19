package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleFullRune():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(228 : stdgo.GoUInt8), (184 : stdgo.GoUInt8), (150 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_buf)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))));
    }
