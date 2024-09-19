package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _b1 = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _b2 = (("Hello, Gophers" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (stdgo._internal.bytes.Bytes_compare.compare(_b1, _b2) != ((-1 : stdgo.GoInt))) {
                    _b.fatal(stdgo.Go.toInterface(("b1 < b2 failed" : stdgo.GoString)));
                };
            });
        };
    }
