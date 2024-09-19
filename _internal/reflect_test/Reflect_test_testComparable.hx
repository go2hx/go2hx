package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testComparable(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__7 => _tt in _internal.reflect_test.Reflect_test__comparableTests._comparableTests) {
            {
                var _ok = (_tt._typ.comparable_() : Bool);
                if (_ok != (_tt._ok)) {
                    _t.errorf(("TypeOf(%v).Comparable() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._typ), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
