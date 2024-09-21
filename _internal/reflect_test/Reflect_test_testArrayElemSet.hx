package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testArrayElemSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _v.index((4 : stdgo.GoInt)).setInt((123i64 : stdgo.GoInt64));
        var _s = (_internal.reflect_test.Reflect_test__valueToString._valueToString(_v?.__copy__())?.__copy__() : stdgo.GoString);
        {};
        if (_s != (("[10]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString))) {
            _t.errorf(("[10]int: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("[10]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString)));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)))?.__copy__();
        _v.index((4 : stdgo.GoInt)).setInt((123i64 : stdgo.GoInt64));
        _s = _internal.reflect_test.Reflect_test__valueToString._valueToString(_v?.__copy__())?.__copy__();
        {};
        if (_s != (("[]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString))) {
            _t.errorf(("[]int: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("[]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString)));
        };
    }
