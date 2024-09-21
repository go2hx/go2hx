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
function testGCTestIsReachable(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>), __1:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
var _half = __1, _all = __0;
        var _want:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                var _p = (stdgo.Go.toInterface(stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoInt>))) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                _all = (_all.__append__(_p));
                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _half = (_half.__append__(_p));
                    _want = (_want | (((1i64 : stdgo.GoUInt64) << _i : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            });
        };
        var _got = (stdgo._internal.runtime.Runtime_gctestIsReachable.gctestIsReachable(...(_all : Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>)) : stdgo.GoUInt64);
        if (_want != (_got)) {
            _t.fatalf(("did not get expected reachable set; want %b, got %b" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_half));
    }
