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
function testRuntimePanicWithRuntimeError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = {
            var s:stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(6, 6, ...[for (i in 0 ... 6) null]);
            s[0] = function():Void {
                var _m:stdgo.GoMap<stdgo.GoUInt64, Bool> = (null : stdgo.GoMap<stdgo.GoUInt64, Bool>);
                _m[(1234i64 : stdgo.GoUInt64)] = true;
            };
            s[1] = function():Void {
                var _ch = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                if (_ch != null) _ch.__close__();
                if (_ch != null) _ch.__close__();
            };
            s[2] = function():Void {
                var _ch:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0> = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                if (_ch != null) _ch.__close__();
                _ch.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
            };
            s[3] = function():Void {
                var _s:stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                var __blank__ = _s[(2 : stdgo.GoInt)];
            };
            s[4] = function():Void {
                var _n = (-1 : stdgo.GoInt);
                var __blank__ = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            };
            s[5] = function():Void {
                if ((null : stdgo.Chan<Bool>) != null) (null : stdgo.Chan<Bool>).__close__();
            };
            s;
        };
        for (_i => _fn in _testCases) {
            var _got = (_internal.runtime_test.Runtime_test__panicValue._panicValue(_fn) : stdgo.AnyInterface);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_got : stdgo._internal.runtime.Runtime_Error.Error)) : stdgo._internal.runtime.Runtime_Error.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.runtime.Runtime_Error.Error), _1 : false };
                }, __6 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("test #%d: recovered value %v(type %T) does not implement runtime.Error" : stdgo.GoString), stdgo.Go.toInterface(_i), _got, _got);
                };
            };
        };
    }
