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
function testSizeof(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _tests:stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_30.T__struct_30> = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_30.T__struct_30>(2, 2, ...[({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.Runtime_T_g.T_g() : stdgo._internal.runtime.Runtime_T_g.T_g))), __32bit : (252 : stdgo.GoUIntptr), __64bit : (408 : stdgo.GoUIntptr) } : _internal.runtime_test.Runtime_test_T__struct_30.T__struct_30), ({ _val : stdgo.Go.toInterface((new stdgo._internal.runtime.Runtime_T_sudog.T_sudog() : stdgo._internal.runtime.Runtime_T_sudog.T_sudog)), __32bit : (56 : stdgo.GoUIntptr), __64bit : (88 : stdgo.GoUIntptr) } : _internal.runtime_test.Runtime_test_T__struct_30.T__struct_30)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _val : (null : stdgo.AnyInterface), __32bit : (0 : stdgo.GoUIntptr), __64bit : (0 : stdgo.GoUIntptr) } : _internal.runtime_test.Runtime_test_T__struct_30.T__struct_30)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_30.T__struct_30>);
        for (__6 => _tt in _tests) {
            var _want = (_tt.__32bit : stdgo.GoUIntptr);
            if (false) {
                _want = _tt.__64bit;
            };
            var _got = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_tt._val).size() : stdgo.GoUIntptr);
            if (_want != (_got)) {
                _t.errorf(("unsafe.Sizeof(%T) = %d, want %d" : stdgo.GoString), _tt._val, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
