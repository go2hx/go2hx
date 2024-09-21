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
function testCollisions(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("Skipping in short mode" : stdgo.GoString)));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (16 : stdgo.GoInt) : Bool), _j++, {
                        if (_j == (_i)) {
                            continue;
                        };
                        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
                        var _m = ({
                            final x = new stdgo.GoMap.GoIntMap<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>();
                            x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoUInt16, _internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                        {
                            var _n = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_n < (65536 : stdgo.GoInt) : Bool), _n++, {
                                _a[(_i : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
                                _a[(_j : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                                _m[(stdgo._internal.runtime.Runtime_bytesHash.bytesHash((_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUIntptr)) : stdgo.GoUInt16)] = (new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0);
                            });
                        };
                        var _avg = (41427 : stdgo.GoInt);
                        var _stdDev = (123 : stdgo.GoInt);
                        if ((((_m.length) < (_avg - ((40 : stdgo.GoInt) * _stdDev : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((_m.length) > (_avg + ((40 : stdgo.GoInt) * _stdDev : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                            _t.errorf(("bad number of collisions i=%d j=%d outputs=%d out of 65536\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface((_m.length)));
                        };
                    });
                };
            });
        };
    }
