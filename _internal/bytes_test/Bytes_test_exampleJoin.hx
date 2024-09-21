package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleJoin():Void {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[(("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("bar" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (("baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        stdgo._internal.fmt.Fmt_printf.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_join.join(_s, ((", " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
