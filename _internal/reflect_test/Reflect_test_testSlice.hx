package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_xs)).slice((3 : stdgo.GoInt), (5 : stdgo.GoInt)).interface_() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        if ((_v.length) != ((2 : stdgo.GoInt))) {
            _t.errorf(("len(xs.Slice(3, 5)) = %d" : stdgo.GoString), stdgo.Go.toInterface((_v.length)));
        };
        if (_v.capacity != ((5 : stdgo.GoInt))) {
            _t.errorf(("cap(xs.Slice(3, 5)) = %d" : stdgo.GoString), stdgo.Go.toInterface(_v.capacity));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((_xs.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)))) {
            _t.errorf(("xs.Slice(3, 5)[0:5] = %v" : stdgo.GoString), stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        };
        var _xa = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xa) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem().slice((2 : stdgo.GoInt), (5 : stdgo.GoInt)).interface_() : stdgo.Slice<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        if ((_v.length) != ((3 : stdgo.GoInt))) {
            _t.errorf(("len(xa.Slice(2, 5)) = %d" : stdgo.GoString), stdgo.Go.toInterface((_v.length)));
        };
        if (_v.capacity != ((6 : stdgo.GoInt))) {
            _t.errorf(("cap(xa.Slice(2, 5)) = %d" : stdgo.GoString), stdgo.Go.toInterface(_v.capacity));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((_xa.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)))) {
            _t.errorf(("xs.Slice(2, 5)[0:6] = %v" : stdgo.GoString), stdgo.Go.toInterface((_v.__slice__((0 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
        };
        var _s = ("0123456789" : stdgo.GoString);
        var _vs = ((stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_s)).slice((3 : stdgo.GoInt), (5 : stdgo.GoInt)).interface_() : stdgo.GoString)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_vs != ((_s.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString))) {
            _t.errorf(("s.Slice(3, 5) = %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_vs), stdgo.Go.toInterface((_s.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString)));
        };
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_xs) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _rv = _rv.slice((3 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__();
        var _ptr2 = (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        _rv = _rv.slice((5 : stdgo.GoInt), (5 : stdgo.GoInt))?.__copy__();
        var _ptr3 = (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (_ptr3 != (_ptr2)) {
            _t.errorf(("xs.Slice(3,4).Slice3(5,5).UnsafePointer() = %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(_ptr3), stdgo.Go.toInterface(_ptr2));
        };
    }
