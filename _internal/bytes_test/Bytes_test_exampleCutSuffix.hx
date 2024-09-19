package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleCutSuffix():Void {
        var _show = (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes_cutSuffix.cutSuffix((_s : stdgo.Slice<stdgo.GoUInt8>), (_sep : stdgo.Slice<stdgo.GoUInt8>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt_printf.printf(("CutSuffix(%q, %q) = %q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sep), stdgo.Go.toInterface(_before), stdgo.Go.toInterface(_found));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
    }
