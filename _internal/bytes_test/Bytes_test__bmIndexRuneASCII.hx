package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _bmIndexRuneASCII(_index:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt32) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.GoInt) -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (_index(_buf, (120 : stdgo.GoInt32)) : stdgo.GoInt);
                    if (_j != ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        _b.fatal(stdgo.Go.toInterface(("bad index" : stdgo.GoString)), stdgo.Go.toInterface(_j));
                    };
                });
            };
            _buf[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
