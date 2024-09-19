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
function testEmptyKeyAndValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = ({
            final x = new stdgo.GoMap.GoIntMap<_internal.runtime_test.Runtime_test_T_empty.T_empty>();
            x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_empty.T_empty);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, _internal.runtime_test.Runtime_test_T_empty.T_empty>);
        var _b = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_empty.T_empty, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_empty.T_empty", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_empty.T_empty, stdgo.GoInt>);
        var _c = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_empty.T_empty, _internal.runtime_test.Runtime_test_T_empty.T_empty>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_empty.T_empty", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }));
            x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_empty.T_empty);
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_empty.T_empty, _internal.runtime_test.Runtime_test_T_empty.T_empty>);
        _a[(0 : stdgo.GoInt)] = (new _internal.runtime_test.Runtime_test_T_empty.T_empty() : _internal.runtime_test.Runtime_test_T_empty.T_empty);
        _b[(new _internal.runtime_test.Runtime_test_T_empty.T_empty() : _internal.runtime_test.Runtime_test_T_empty.T_empty)] = (0 : stdgo.GoInt);
        _b[(new _internal.runtime_test.Runtime_test_T_empty.T_empty() : _internal.runtime_test.Runtime_test_T_empty.T_empty)] = (1 : stdgo.GoInt);
        _c[(new _internal.runtime_test.Runtime_test_T_empty.T_empty() : _internal.runtime_test.Runtime_test_T_empty.T_empty)] = (new _internal.runtime_test.Runtime_test_T_empty.T_empty() : _internal.runtime_test.Runtime_test_T_empty.T_empty);
        if ((_a.length) != ((1 : stdgo.GoInt))) {
            _t.errorf(("empty value insert problem" : stdgo.GoString));
        };
        if ((_b[(new _internal.runtime_test.Runtime_test_T_empty.T_empty() : _internal.runtime_test.Runtime_test_T_empty.T_empty)] ?? (0 : stdgo.GoInt)) != ((1 : stdgo.GoInt))) {
            _t.errorf(("empty key returned wrong value" : stdgo.GoString));
        };
    }
