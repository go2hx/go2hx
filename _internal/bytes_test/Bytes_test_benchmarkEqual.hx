package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
            var _buf1 = (_buf.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf2 = (_buf.__slice__((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _eq = (stdgo._internal.bytes.Bytes_equal.equal(_buf1, _buf2) : Bool);
                    if (!_eq) {
                        _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                    };
                });
            };
        });
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (6 : stdgo.GoInt), (9 : stdgo.GoInt), (15 : stdgo.GoInt), (16 : stdgo.GoInt), (20 : stdgo.GoInt), (32 : stdgo.GoInt), (4096 : stdgo.GoInt), (4194304 : stdgo.GoInt), (67108864 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _internal.bytes_test.Bytes_test__benchBytes._benchBytes(_b, _sizes, _internal.bytes_test.Bytes_test__bmEqual._bmEqual(stdgo._internal.bytes.Bytes_equal.equal));
    }
