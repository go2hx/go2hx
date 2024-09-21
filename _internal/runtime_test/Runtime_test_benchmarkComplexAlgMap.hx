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
function benchmarkComplexAlgMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_ComplexAlgKey.ComplexAlgKey, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_ComplexAlgKey.ComplexAlgKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([
{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "__6", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind) }, optional : false },
{ name : "__7", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false },
{ name : "__8", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_g", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_h", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_ComplexAlgKey.ComplexAlgKey, Bool>);
        var _k:_internal.runtime_test.Runtime_test_ComplexAlgKey.ComplexAlgKey = ({} : _internal.runtime_test.Runtime_test_ComplexAlgKey.ComplexAlgKey);
        _m[_k] = true;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = (_m[_k] ?? false);
            });
        };
    }
