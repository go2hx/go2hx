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
function testFindBitRange64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = (function(_x:stdgo.GoUInt64, _n:stdgo.GoUInt, _result:stdgo.GoUInt):Void {
            var _i = (stdgo._internal.runtime.Runtime_findBitRange64.findBitRange64(_x, _n) : stdgo.GoUInt);
            if (((_result == (-1u32 : stdgo.GoUInt)) && (_i < (64u32 : stdgo.GoUInt) : Bool) : Bool)) {
                _t.errorf(("case (%016x, %d): got %d, want failure" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
            } else if (((_result != (-1u32 : stdgo.GoUInt)) && (_i != _result) : Bool)) {
                _t.errorf(("case (%016x, %d): got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_result));
            };
        } : (stdgo.GoUInt64, stdgo.GoUInt, stdgo.GoUInt) -> Void);
        {
            var _i = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_i <= (64u32 : stdgo.GoUInt) : Bool), _i++, {
                _check((-1i64 : stdgo.GoUInt64), _i, (0u32 : stdgo.GoUInt));
            });
        };
        {
            var _i = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            stdgo.Go.cfor((_i <= (64u32 : stdgo.GoUInt) : Bool), _i++, {
                _check((0i64 : stdgo.GoUInt64), _i, (-1u32 : stdgo.GoUInt));
            });
        };
        _check((-9223372036854775808i64 : stdgo.GoUInt64), (1u32 : stdgo.GoUInt), (63u32 : stdgo.GoUInt));
        _check((-4611684918898917376i64 : stdgo.GoUInt64), (2u32 : stdgo.GoUInt), (62u32 : stdgo.GoUInt));
        _check((-4611684918898786304i64 : stdgo.GoUInt64), (2u32 : stdgo.GoUInt), (16u32 : stdgo.GoUInt));
        _check((-2305839710661836800i64 : stdgo.GoUInt64), (3u32 : stdgo.GoUInt), (61u32 : stdgo.GoUInt));
        _check((-2305839710661574656i64 : stdgo.GoUInt64), (3u32 : stdgo.GoUInt), (16u32 : stdgo.GoUInt));
        _check((-277081207930880i64 : stdgo.GoUInt64), (16u32 : stdgo.GoUInt), (48u32 : stdgo.GoUInt));
        _check((-277081207865345i64 : stdgo.GoUInt64), (16u32 : stdgo.GoUInt), (0u32 : stdgo.GoUInt));
        _check((1152644423398957055i64 : stdgo.GoUInt64), (16u32 : stdgo.GoUInt), (-1u32 : stdgo.GoUInt));
    }
