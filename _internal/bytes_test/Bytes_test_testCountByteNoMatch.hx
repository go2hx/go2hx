package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testCountByteNoMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _windows = (new stdgo.Slice<stdgo.GoInt>(14, 14, ...[
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(15 : stdgo.GoInt),
(16 : stdgo.GoInt),
(17 : stdgo.GoInt),
(31 : stdgo.GoInt),
(32 : stdgo.GoInt),
(33 : stdgo.GoInt),
(63 : stdgo.GoInt),
(64 : stdgo.GoInt),
(65 : stdgo.GoInt),
(128 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_b.length) : Bool), _i++, {
                for (__0 => _window in _windows) {
                    if ((_window > ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length) : Bool)) {
                        _window = ((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).length);
                    };
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _window : Bool), _j++, {
                            _b[(_i + _j : stdgo.GoInt)] = (100 : stdgo.GoUInt8);
                        });
                    };
                    var _p = (stdgo._internal.bytes.Bytes_count.count((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                    if (_p != ((0 : stdgo.GoInt))) {
                        _t.errorf(("TestCountByteNoMatch(%q, 0) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + _window : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_p));
                    };
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _window : Bool), _j++, {
                            _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        });
                    };
                };
            });
        };
    }
