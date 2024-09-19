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
function benchmarkBigKeyMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_BigKey.BigKey, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_BigKey.BigKey", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, 3), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_BigKey.BigKey, Bool>);
        var _k = ((new stdgo.GoArray<stdgo.GoInt64>(3, 3, ...[(3i64 : stdgo.GoInt64), (4i64 : stdgo.GoInt64), (5i64 : stdgo.GoInt64)]).__setNumber64__() : _internal.runtime_test.Runtime_test_BigKey.BigKey)?.__copy__() : _internal.runtime_test.Runtime_test_BigKey.BigKey);
        _m[_k] = true;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = (_m[_k] ?? false);
            });
        };
    }
