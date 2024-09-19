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
function _setbits(_h:stdgo.Ref<_internal.runtime_test.Runtime_test_HashSet.HashSet>, _b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt, _k:stdgo.GoInt):Void {
        _h._addB(_b);
        if (_k == ((0 : stdgo.GoInt))) {
            return;
        };
        {
            var _j = (_i : stdgo.GoInt);
            stdgo.Go.cfor((_j < ((_b.length) * (8 : stdgo.GoInt) : stdgo.GoInt) : Bool), _j++, {
                _b[(_j / (8 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j / (8 : stdgo.GoInt) : stdgo.GoInt)] | (((1 : stdgo.GoUInt8) << ((_j & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _internal.runtime_test.Runtime_test__setbits._setbits(_h, _b, (_j + (1 : stdgo.GoInt) : stdgo.GoInt), (_k - (1 : stdgo.GoInt) : stdgo.GoInt));
                _b[(_j / (8 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j / (8 : stdgo.GoInt) : stdgo.GoInt)] & ((-1 ^ (((1 : stdgo.GoUInt8) << ((_j & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt8)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            });
        };
    }
