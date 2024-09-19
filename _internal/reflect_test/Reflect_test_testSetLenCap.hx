package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSetLenCap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _xa = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _vs = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xs) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            _vs.setLen((10 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            _vs.setCap((10 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            _vs.setLen((-1 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            _vs.setCap((-1 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            _vs.setCap((6 : stdgo.GoInt));
        });
        _vs.setLen((5 : stdgo.GoInt));
        if (((_xs.length != (5 : stdgo.GoInt)) || (_xs.capacity != (8 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("after SetLen(5), len, cap = %d, %d, want 5, 8" : stdgo.GoString), stdgo.Go.toInterface((_xs.length)), stdgo.Go.toInterface(_xs.capacity));
        };
        _vs.setCap((6 : stdgo.GoInt));
        if (((_xs.length != (5 : stdgo.GoInt)) || (_xs.capacity != (6 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("after SetCap(6), len, cap = %d, %d, want 5, 6" : stdgo.GoString), stdgo.Go.toInterface((_xs.length)), stdgo.Go.toInterface(_xs.capacity));
        };
        _vs.setCap((5 : stdgo.GoInt));
        if (((_xs.length != (5 : stdgo.GoInt)) || (_xs.capacity != (5 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("after SetCap(5), len, cap = %d, %d, want 5, 5" : stdgo.GoString), stdgo.Go.toInterface((_xs.length)), stdgo.Go.toInterface(_xs.capacity));
        };
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            _vs.setCap((4 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            _vs.setLen((6 : stdgo.GoInt));
        });
        var _va = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xa) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            _va.setLen((8 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            _va.setCap((8 : stdgo.GoInt));
        });
    }
