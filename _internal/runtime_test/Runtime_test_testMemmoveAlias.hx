package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testMemmoveAlias(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
            _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
        };
        _t.parallel();
        var _size = (256 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _size = (144 : stdgo.GoInt);
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _buf[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            });
        };
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= _size : Bool), _n++, {
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= (_size - _n : stdgo.GoInt) : Bool), _x++, {
                        {
                            var _y = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_y <= (_size - _n : stdgo.GoInt) : Bool), _y++, {
                                stdgo.Go.copySlice((_buf.__slice__(_y, (_y + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_buf.__slice__(_x, (_x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _y : Bool), _i++, {
                                        if (_buf[(_i : stdgo.GoInt)] != ((_i : stdgo.GoUInt8))) {
                                            _t.fatalf(("prefix buf[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf[(_i : stdgo.GoInt)]));
                                        };
                                    });
                                };
                                {
                                    var _i = (_y : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < (_y + _n : stdgo.GoInt) : Bool), _i++, {
                                        if (_buf[(_i : stdgo.GoInt)] != ((((_i - _y : stdgo.GoInt) + _x : stdgo.GoInt) : stdgo.GoUInt8))) {
                                            _t.fatalf(("copied buf[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf[(_i : stdgo.GoInt)]));
                                        };
                                        _buf[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                                    });
                                };
                                {
                                    var _i = (_y + _n : stdgo.GoInt);
                                    stdgo.Go.cfor((_i < _size : Bool), _i++, {
                                        if (_buf[(_i : stdgo.GoInt)] != ((_i : stdgo.GoUInt8))) {
                                            _t.fatalf(("suffix buf[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf[(_i : stdgo.GoInt)]));
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
