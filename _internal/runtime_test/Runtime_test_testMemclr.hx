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
function testMemclr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _size = (512 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _size = (144 : stdgo.GoInt);
        };
        var _mem = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                _mem[(_i : stdgo.GoInt)] = (238 : stdgo.GoUInt8);
            });
        };
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < _size : Bool), _n++, {
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= (_size - _n : stdgo.GoInt) : Bool), _x++, {
                        stdgo._internal.runtime.Runtime_memclrBytes.memclrBytes((_mem.__slice__(_x, (_x + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _x : Bool), _i++, {
                                if (_mem[(_i : stdgo.GoInt)] != ((238 : stdgo.GoUInt8))) {
                                    _t.fatalf(("overwrite prefix mem[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_mem[(_i : stdgo.GoInt)]));
                                };
                            });
                        };
                        {
                            var _i = (_x : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_x + _n : stdgo.GoInt) : Bool), _i++, {
                                if (_mem[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                                    _t.fatalf(("failed clear mem[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_mem[(_i : stdgo.GoInt)]));
                                };
                                _mem[(_i : stdgo.GoInt)] = (238 : stdgo.GoUInt8);
                            });
                        };
                        {
                            var _i = (_x + _n : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _size : Bool), _i++, {
                                if (_mem[(_i : stdgo.GoInt)] != ((238 : stdgo.GoUInt8))) {
                                    _t.fatalf(("overwrite suffix mem[%d] = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_mem[(_i : stdgo.GoInt)]));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
