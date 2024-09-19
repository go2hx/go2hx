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
function testFinalizerType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ch = (new stdgo.Chan<Bool>((10 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _finalize = function(_x:stdgo.Pointer<stdgo.GoInt>):Void {
            if (_x.value != ((97531 : stdgo.GoInt))) {
                _t.errorf(("finalizer %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x.value), stdgo.Go.toInterface((97531 : stdgo.GoInt)));
            };
            _ch.__send__(true);
        };
        var _finalizerTests:stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_20.T__struct_20> = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_20.T__struct_20>(6, 6, ...[({ _convert : function(_x:stdgo.Pointer<stdgo.GoInt>):stdgo.AnyInterface {
            return stdgo.Go.toInterface(_x);
        }, _finalizer : stdgo.Go.toInterface(function(_v:stdgo.Pointer<stdgo.GoInt>):Void {
            _finalize(_v);
        }) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20), ({ _convert : function(_x:stdgo.Pointer<stdgo.GoInt>):stdgo.AnyInterface {
            return stdgo.Go.toInterface(new _internal.runtime_test.Runtime_test_Tintptr.Tintptr(() -> (_x.value : stdgo.GoInt), v -> (_x.value = (v : stdgo.GoInt) : stdgo.GoInt)));
        }, _finalizer : stdgo.Go.toInterface(function(_v:_internal.runtime_test.Runtime_test_Tintptr.Tintptr):Void {
            _finalize(_v);
        }) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20), ({ _convert : function(_x:stdgo.Pointer<stdgo.GoInt>):stdgo.AnyInterface {
            return stdgo.Go.toInterface(new _internal.runtime_test.Runtime_test_Tintptr.Tintptr(() -> (_x.value : stdgo.GoInt), v -> (_x.value = (v : stdgo.GoInt) : stdgo.GoInt)));
        }, _finalizer : stdgo.Go.toInterface(function(_v:stdgo.Pointer<stdgo.GoInt>):Void {
            _finalize(_v);
        }) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20), ({ _convert : function(_x:stdgo.Pointer<stdgo.GoInt>):stdgo.AnyInterface {
            return stdgo.Go.toInterface(new stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>(() -> (_x.value : _internal.runtime_test.Runtime_test_Tint.Tint), v -> (_x.value = (v : stdgo.GoInt) : _internal.runtime_test.Runtime_test_Tint.Tint)));
        }, _finalizer : stdgo.Go.toInterface(function(_v:stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>):Void {
            _finalize(new stdgo.Pointer<stdgo.GoInt>(() -> (_v.value : stdgo.GoInt), v -> (_v.value = (v : _internal.runtime_test.Runtime_test_Tint.Tint) : stdgo.GoInt)));
        }) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20), ({ _convert : function(_x:stdgo.Pointer<stdgo.GoInt>):stdgo.AnyInterface {
            return stdgo.Go.toInterface(new stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>(() -> (_x.value : _internal.runtime_test.Runtime_test_Tint.Tint), v -> (_x.value = (v : stdgo.GoInt) : _internal.runtime_test.Runtime_test_Tint.Tint)));
        }, _finalizer : stdgo.Go.toInterface(function(_v:_internal.runtime_test.Runtime_test_Tinter.Tinter):Void {
            _finalize(new stdgo.Pointer<stdgo.GoInt>(() -> ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_v) : stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>)) : stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>).value : stdgo.GoInt), v -> ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_v) : stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>)) : stdgo.Pointer<_internal.runtime_test.Runtime_test_Tint.Tint>).value = (v : _internal.runtime_test.Runtime_test_Tint.Tint) : stdgo.GoInt)));
        }) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20), ({ _convert : function(_x:stdgo.Pointer<stdgo.GoInt>):stdgo.AnyInterface {
            return stdgo.Go.toInterface(_x);
        }, _finalizer : stdgo.Go.toInterface(function(_v:stdgo.AnyInterface):stdgo.GoArray<stdgo.GoInt64> {
            stdgo.Go.print("");
            _finalize((stdgo.Go.typeAssert((_v : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>));
            return (new stdgo.GoArray<stdgo.GoInt64>(4, 4, ...[]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__();
        }) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _convert : null, _finalizer : (null : stdgo.AnyInterface) } : _internal.runtime_test.Runtime_test_T__struct_20.T__struct_20)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_20.T__struct_20>);
        for (__6 => _tt in _finalizerTests) {
            var _done = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {};
                    var _v = stdgo.Go.pointer((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_testFinalizerType___localname___T_1675.T_testFinalizerType___localname___T_1675)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testFinalizerType___localname___T_1675.T_testFinalizerType___localname___T_1675>)._v);
                    _v.value = (97531 : stdgo.GoInt);
                    stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(_tt._convert(_v), _tt._finalizer);
                    _v = (null : stdgo.Pointer<stdgo.GoInt>);
                    _done.__send__(true);
                };
                a();
            });
            _done.__get__();
            stdgo._internal.runtime.Runtime_gc.gc();
            _ch.__get__();
        };
    }
