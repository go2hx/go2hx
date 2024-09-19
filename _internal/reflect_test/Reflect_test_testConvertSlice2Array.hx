package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testConvertSlice2Array(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _p = (new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _pt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_p)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _ov = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_s))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _v = (_ov.convert(_pt)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_v.canAddr()) {
            _t.fatalf(("convert slice to non-empty array returns a addressable copy array" : stdgo.GoString));
        };
        for (_i => _ in _s) {
            _ov.index(_i).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__());
        };
        for (_i => _ in _s) {
            if (_v.index(_i).int_() != ((0i64 : stdgo.GoInt64))) {
                _t.fatalf(("slice (%v) mutation visible in converted result (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ov)), stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
            };
        };
    }
