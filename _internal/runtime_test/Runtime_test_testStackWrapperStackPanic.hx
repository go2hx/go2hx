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
function testStackWrapperStackPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.run(("sigpanic" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _internal.runtime_test.Runtime_test__testStackWrapperPanic._testStackWrapperPanic(_t, function():Void {
                _internal.runtime_test.Runtime_test_I_static_extension.I_static_extension.m((null : _internal.runtime_test.Runtime_test_I.I));
            }, ("runtime_test.I.M" : stdgo.GoString));
        });
        _t.run(("panicwrap" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _wrapper = _internal.runtime_test.Runtime_test_T_structWithMethod_static_extension.T_structWithMethod_static_extension._nop;
            _internal.runtime_test.Runtime_test__testStackWrapperPanic._testStackWrapperPanic(_t, function():Void {
                _wrapper(null);
            }, ("runtime_test.(*structWithMethod).nop" : stdgo.GoString));
        });
    }
