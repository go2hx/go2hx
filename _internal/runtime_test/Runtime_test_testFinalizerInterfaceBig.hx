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
function testFinalizerInterfaceBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ch = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _done = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var _v = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_bigValue.T_bigValue((-2401053088876216593i64 : stdgo.GoUInt64), true, ("It matters not how strait the gate" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_bigValue.T_bigValue)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_bigValue.T_bigValue>);
                var _old = ((_v : _internal.runtime_test.Runtime_test_T_bigValue.T_bigValue)?.__copy__() : _internal.runtime_test.Runtime_test_T_bigValue.T_bigValue);
                stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(function(_v:stdgo.AnyInterface):Void {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<_internal.runtime_test.Runtime_test_T_bigValue.T_bigValue>)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_bigValue.T_bigValue>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_bigValue.T_bigValue>), _1 : false };
                    }, _i = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.errorf(("finalizer called with type %T, want *bigValue" : stdgo.GoString), _v);
                    };
                    if (stdgo.Go.toInterface((_i : _internal.runtime_test.Runtime_test_T_bigValue.T_bigValue)) != stdgo.Go.toInterface(_old)) {
                        _t.errorf(("finalizer called with %+v, want %+v" : stdgo.GoString), stdgo.Go.toInterface((_i : _internal.runtime_test.Runtime_test_T_bigValue.T_bigValue)), stdgo.Go.toInterface(_old));
                    };
                    if (_ch != null) _ch.__close__();
                }));
                _v = null;
                _done.__send__(true);
            };
            a();
        });
        _done.__get__();
        stdgo._internal.runtime.Runtime_gc.gc();
        _ch.__get__();
    }
