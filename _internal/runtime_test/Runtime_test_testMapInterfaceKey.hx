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
function testMapInterfaceKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                _m[stdgo.Go.toInterface(_i)] = true;
            });
        };
        _m[stdgo.Go.toInterface(({ _f32 : (1 : stdgo.GoFloat64) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _f32 : (1 : stdgo.GoFloat64) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("f32 not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _f64 : (1 : stdgo.GoFloat64) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _f64 : (1 : stdgo.GoFloat64) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("f64 not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _c64 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _c64 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("c64 not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _c128 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _c128 : ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("c128 not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _s : ("foo" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _s : ("foo" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("string not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _i0 : stdgo.Go.toInterface(("foo" : stdgo.GoString)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _i0 : stdgo.Go.toInterface(("foo" : stdgo.GoString)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("interface{} not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _i1 : stdgo.Go.asInterface((5 : _internal.runtime_test.Runtime_test_T_canString.T_canString)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _i1 : stdgo.Go.asInterface((5 : _internal.runtime_test.Runtime_test_T_canString.T_canString)) } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("interface{String() string} not found" : stdgo.GoString));
        };
        _m[stdgo.Go.toInterface(({ _a : (new stdgo.GoArray<stdgo.GoString>(4, 4, ...[("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("baz" : stdgo.GoString), ("bop" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__() } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] = true;
        if (!(_m[stdgo.Go.toInterface(({ _a : (new stdgo.GoArray<stdgo.GoString>(4, 4, ...[("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("baz" : stdgo.GoString), ("bop" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__() } : _internal.runtime_test.Runtime_test_T_testMapInterfaceKey___localname___GrabBag_27933.T_testMapInterfaceKey___localname___GrabBag_27933))] ?? false)) {
            throw stdgo.Go.toInterface(("array not found" : stdgo.GoString));
        };
    }
