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
function testAtoi(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            final __value__ = (32 : stdgo.GoInt);
            if (__value__ == ((32 : stdgo.GoInt))) {
                for (_i => _ in _internal.runtime_test.Runtime_test__atoi32tests._atoi32tests) {
                    var _test = (stdgo.Go.setRef(_internal.runtime_test.Runtime_test__atoi32tests._atoi32tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_atoi32Test.T_atoi32Test>);
                    var __tmp__ = stdgo._internal.runtime.Runtime_atoi.atoi(_test._in?.__copy__()), _out:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_test._out != (_out : stdgo.GoInt32)) || (_test._ok != _ok) : Bool)) {
                        _t.errorf(("atoi(%q) = (%v, %v) want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
                    };
                };
            } else if (__value__ == ((64 : stdgo.GoInt))) {
                for (_i => _ in _internal.runtime_test.Runtime_test__atoi64tests._atoi64tests) {
                    var _test = (stdgo.Go.setRef(_internal.runtime_test.Runtime_test__atoi64tests._atoi64tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_atoi64Test.T_atoi64Test>);
                    var __tmp__ = stdgo._internal.runtime.Runtime_atoi.atoi(_test._in?.__copy__()), _out:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (((_test._out != (_out : stdgo.GoInt64)) || (_test._ok != _ok) : Bool)) {
                        _t.errorf(("atoi(%q) = (%v, %v) want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
                    };
                };
            };
        };
    }
