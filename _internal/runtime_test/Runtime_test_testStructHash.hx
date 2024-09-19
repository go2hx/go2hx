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
function testStructHash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function():Void {
            {};
            var _m = ({
                final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_testStructHash___localname___key_15851.T_testStructHash___localname___key_15851, Bool>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_testStructHash___localname___key_15851.T_testStructHash___localname___key_15851", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_g", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_h", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_testStructHash___localname___key_15851.T_testStructHash___localname___key_15851, Bool>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    var _k:_internal.runtime_test.Runtime_test_T_testStructHash___localname___key_15851.T_testStructHash___localname___key_15851 = ({} : _internal.runtime_test.Runtime_test_T_testStructHash___localname___key_15851.T_testStructHash___localname___key_15851);
                    var _cnt = (0 : stdgo.GoInt);
                    if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._a = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._b = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (4 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._c = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._d = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (16 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._e = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (32 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._f = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (64 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._g = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if ((_i & (128 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _k._h = ("foo" : stdgo.GoString);
                        _cnt++;
                    };
                    if (_cnt == ((4 : stdgo.GoInt))) {
                        _m[_k] = true;
                    };
                });
            };
            if ((_m.length) != ((70 : stdgo.GoInt))) {
                _t.errorf(("bad test: (8 choose 4) should be 70, not %d" : stdgo.GoString), stdgo.Go.toInterface((_m.length)));
            };
        } : () -> Void);
        {
            var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), _f) : stdgo.GoFloat64);
            if ((_n > (6 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("too many allocs %f - hash not balanced" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
