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
function testAppendSliceGrowth(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        var _check = (function(_want:stdgo.GoInt):Void {
            if (_x.capacity != (_want)) {
                _t.errorf(("len=%d, cap=%d, want cap=%d" : stdgo.GoString), stdgo.Go.toInterface((_x.length)), stdgo.Go.toInterface(_x.capacity), stdgo.Go.toInterface(_want));
            };
        } : stdgo.GoInt -> Void);
        _check((0 : stdgo.GoInt));
        var _want = (1 : stdgo.GoInt);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (100 : stdgo.GoInt) : Bool), _i++, {
                _x = (_x.__append__(...(_internal.runtime_test.Runtime_test_one.one : Array<stdgo.GoInt64>)));
                _check(_want);
                if ((_i & ((_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _want = ((2 : stdgo.GoInt) * _i : stdgo.GoInt);
                };
            });
        };
    }
