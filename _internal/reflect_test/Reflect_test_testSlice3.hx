package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSlice3(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_xs)).slice3((3 : stdgo.GoInt), (5 : stdgo.GoInt), (7 : stdgo.GoInt)).interface_() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        if ((_v.length) != ((2 : stdgo.GoInt))) {
            _t.errorf(("len(xs.Slice3(3, 5, 7)) = %d" : stdgo.GoString), stdgo.Go.toInterface((_v.length)));
        };
        if (_v.capacity != ((4 : stdgo.GoInt))) {
            _t.errorf(("cap(xs.Slice3(3, 5, 7)) = %d" : stdgo.GoString), stdgo.Go.toInterface(_v.capacity));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((_xs.__slice__((3 : stdgo.GoInt), (7 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)))) {
            _t.errorf(("xs.Slice3(3, 5, 7)[0:4] = %v" : stdgo.GoString), stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        };
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xs) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((1 : stdgo.GoInt), (1 : stdgo.GoInt), (11 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((2 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        var _xa = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xa) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem().slice3((2 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)).interface_() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        if ((_v.length) != ((3 : stdgo.GoInt))) {
            _t.errorf(("len(xa.Slice(2, 5, 6)) = %d" : stdgo.GoString), stdgo.Go.toInterface((_v.length)));
        };
        if (_v.capacity != ((4 : stdgo.GoInt))) {
            _t.errorf(("cap(xa.Slice(2, 5, 6)) = %d" : stdgo.GoString), stdgo.Go.toInterface(_v.capacity));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((_xa.__slice__((2 : stdgo.GoInt), (6 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)))) {
            _t.errorf(("xs.Slice(2, 5, 6)[0:4] = %v" : stdgo.GoString), stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        };
        _rv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xa) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem()?.__copy__();
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((1 : stdgo.GoInt), (1 : stdgo.GoInt), (11 : stdgo.GoInt));
        });
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((2 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        var _s = ("hello world" : stdgo.GoString);
        _rv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_s))).elem()?.__copy__();
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            _rv.slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        });
        _rv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xs) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__();
        _rv = _rv.slice3((3 : stdgo.GoInt), (5 : stdgo.GoInt), (7 : stdgo.GoInt))?.__copy__();
        var _ptr2 = (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        _rv = _rv.slice3((4 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__();
        var _ptr3 = (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (_ptr3 != (_ptr2)) {
            _t.errorf(("xs.Slice3(3,5,7).Slice3(4,4,4).UnsafePointer() = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_ptr3), stdgo.Go.toInterface(_ptr2));
        };
    }
