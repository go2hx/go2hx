package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkCount(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.bytes_test.Bytes_test__benchBytes._benchBytes(_b, _internal.bytes_test.Bytes_test__indexSizes._indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (stdgo._internal.bytes.Bytes_count.count(_buf, (_buf.__slice__((_n - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != ((1 : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        });
    }
