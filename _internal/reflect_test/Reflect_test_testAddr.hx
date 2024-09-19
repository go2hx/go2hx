package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAddr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p:_internal.reflect_test.Reflect_test_S9.S9 = ({} : _internal.reflect_test.Reflect_test_S9.S9);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_S9.S9>)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _v = _v.elem()?.__copy__();
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.field((0 : stdgo.GoInt))?.__copy__();
        _v.setInt((2i64 : stdgo.GoInt64));
        if (_p.x != ((2 : stdgo.GoInt))) {
            _t.errorf(("Addr.Elem.Set failed to set value" : stdgo.GoString));
        };
        var _q = (stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_S9.S9>);
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_q) : stdgo.Ref<stdgo.Ref<_internal.reflect_test.Reflect_test_S9.S9>>))).elem()?.__copy__();
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.field((0 : stdgo.GoInt))?.__copy__();
        _v.setInt((3i64 : stdgo.GoInt64));
        if (_p.x != ((3 : stdgo.GoInt))) {
            _t.errorf(("Addr.Elem.Set failed to set value" : stdgo.GoString));
        };
        var _qq = (_p?.__copy__() : _internal.reflect_test.Reflect_test_S9.S9);
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_qq) : stdgo.Ref<_internal.reflect_test.Reflect_test_S9.S9>))).elem()?.__copy__();
        var _v0 = (_v?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _v = _v.addr()?.__copy__();
        _v = _v.elem()?.__copy__();
        _v = _v.field((0 : stdgo.GoInt))?.__copy__();
        _v.setInt((4i64 : stdgo.GoInt64));
        if (_p.x != ((3 : stdgo.GoInt))) {
            _t.errorf(("somehow value Set changed original p" : stdgo.GoString));
        };
        _p = (stdgo.Go.typeAssert((_v0.interface_() : _internal.reflect_test.Reflect_test_S9.S9)) : _internal.reflect_test.Reflect_test_S9.S9)?.__copy__();
        if (_p.x != ((4 : stdgo.GoInt))) {
            _t.errorf(("Addr.Elem.Set valued to set value in top value" : stdgo.GoString));
        };
        var _s:_internal.reflect_test.Reflect_test_T__struct_71.T__struct_71 = ({ b : (null : stdgo.Pointer<Bool>) } : _internal.reflect_test.Reflect_test_T__struct_71.T__struct_71);
        var _ps = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_71.T__struct_71>)))).elem().field((0 : stdgo.GoInt)).addr().interface_() : stdgo.AnyInterface);
        ((stdgo.Go.typeAssert((_ps : stdgo.Pointer<stdgo.Pointer<Bool>>)) : stdgo.Pointer<stdgo.Pointer<Bool>>)).value = stdgo.Go.pointer(false);
        if (_s.b == null) {
            _t.errorf(("Addr.Interface direct assignment failed" : stdgo.GoString));
        };
    }
