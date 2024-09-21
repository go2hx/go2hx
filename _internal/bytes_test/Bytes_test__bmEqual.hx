package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _bmEqual(_equal:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Bool):(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.GoInt) -> Void {
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
            if (((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
                _internal.bytes_test.Bytes_test__bmbuf._bmbuf = (new stdgo.Slice<stdgo.GoUInt8>(((2 : stdgo.GoInt) * _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _buf1 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf2 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__(_n, ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _eq = (_equal(_buf1, _buf2) : Bool);
                    if (!_eq) {
                        _b.fatal(stdgo.Go.toInterface(("bad equal" : stdgo.GoString)));
                    };
                });
            };
            _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
