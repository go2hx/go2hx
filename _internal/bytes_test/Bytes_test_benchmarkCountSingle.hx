package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkCountSingle(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.bytes_test.Bytes_test__benchBytes._benchBytes(_b, _internal.bytes_test.Bytes_test__indexSizes._indexSizes, function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _n:stdgo.GoInt):Void {
            var _buf = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _step = (8 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i = (_i + (_step) : stdgo.GoInt), {
                    _buf[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                });
            };
            var _expect = ((((_buf.length) + ((_step - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) / _step : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _j = (stdgo._internal.bytes.Bytes_count.count(_buf, (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_j != (_expect)) {
                        _b.fatal(stdgo.Go.toInterface(("bad count" : stdgo.GoString)), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_expect));
                    };
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i++, {
                    _buf[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                });
            };
        });
    }
