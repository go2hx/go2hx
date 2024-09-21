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
function testMapAppendAssignment(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Slice<stdgo.GoInt>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.Slice<stdgo.GoInt>>);
        _m[(0 : stdgo.GoInt)] = (null : stdgo.Slice<stdgo.GoInt>);
        _m[(0 : stdgo.GoInt)] = ((_m[(0 : stdgo.GoInt)] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__((12345 : stdgo.GoInt)));
        _m[(0 : stdgo.GoInt)] = ((_m[(0 : stdgo.GoInt)] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__((67890 : stdgo.GoInt)));
        {
            final __tmp__0 = !_internal.runtime_test.Runtime_test__sinkAppend._sinkAppend;
            final __tmp__1 = ((_m[(0 : stdgo.GoInt)] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__((123 : stdgo.GoInt), (456 : stdgo.GoInt)));
            final __tmp__2 = _m;
            final __tmp__3 = (0 : stdgo.GoInt);
            _internal.runtime_test.Runtime_test__sinkAppend._sinkAppend = __tmp__0;
            __tmp__2[__tmp__3] = __tmp__1;
        };
        var _a = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _m[(0 : stdgo.GoInt)] = ((_m[(0 : stdgo.GoInt)] ?? (null : stdgo.Slice<stdgo.GoInt>)).__append__(...(_a : Array<stdgo.GoInt>)));
        var _want = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(12345 : stdgo.GoInt), (67890 : stdgo.GoInt), (123 : stdgo.GoInt), (456 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _got = (_m[(0 : stdgo.GoInt)] ?? (null : stdgo.Slice<stdgo.GoInt>));
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
