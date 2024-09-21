package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testInterfaceSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_Point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>);
        var _s:_internal.reflect_test.Reflect_test_T__struct_65.T__struct_65 = ({ i : (null : stdgo.AnyInterface), p : (null : _internal.reflect_test.Reflect_test_T__interface_0.T__interface_0) } : _internal.reflect_test.Reflect_test_T__struct_65.T__struct_65);
        var _sv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__struct_65.T__struct_65>)))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _sv.field((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__());
        {
            var _q = (stdgo.Go.typeAssert((_s.i : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>);
            if (_q != (_p)) {
                _t.errorf(("i: have %p want %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
            };
        };
        var _pv = (_sv.field((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _pv.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__());
        {
            var _q = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s.p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>);
            if (_q != (_p)) {
                _t.errorf(("i: have %p want %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
            };
        };
        var _i = (_pv.method((0 : stdgo.GoInt)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((10 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        if (_i != ((250i64 : stdgo.GoInt64))) {
            _t.errorf(("Interface Method returned %d; want 250" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
    }
