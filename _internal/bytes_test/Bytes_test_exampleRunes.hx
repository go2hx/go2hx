package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleRunes():Void {
        var _rs = stdgo._internal.bytes.Bytes_runes.runes((("go gopher" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        for (__0 => _r in _rs) {
            stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
    }
