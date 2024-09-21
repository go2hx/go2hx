package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function exampleEncodeRune_outOfRange():Void {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32), (65533 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _c in _runes) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _size = (stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, _c) : stdgo.GoInt);
            stdgo._internal.fmt.Fmt_printf.printf(("%d: %d %[2]s %d\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_size));
        };
    }
