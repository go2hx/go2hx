package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testArrayOfDirectIface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            {};
            var _i1 = (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(1, 1, ...[]) : _internal.reflect_test.Reflect_test_T_testArrayOfDirectIface___localname___T_135295.T_testArrayOfDirectIface___localname___T_135295)))).interface_() : stdgo.AnyInterface);
            var _v1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_i1) : stdgo.Ref<stdgo.AnyInterface>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _p1 = (_v1.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            var _i2 = (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_arrayOf.arrayOf((1 : stdgo.GoInt), stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt8)))))).interface_() : stdgo.AnyInterface);
            var _v2 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_i2) : stdgo.Ref<stdgo.AnyInterface>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _p2 = (_v2.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            if (_p1 != ((0 : stdgo.GoUIntptr))) {
                _t.errorf(("got p1=%v. want=%v" : stdgo.GoString), stdgo.Go.toInterface(_p1), (null : stdgo.AnyInterface));
            };
            if (_p2 != ((0 : stdgo.GoUIntptr))) {
                _t.errorf(("got p2=%v. want=%v" : stdgo.GoString), stdgo.Go.toInterface(_p2), (null : stdgo.AnyInterface));
            };
        };
        {
            {};
            var _i1 = (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0, ...[]) : _internal.reflect_test.Reflect_test_T_testArrayOfDirectIface___localname___T_135665.T_testArrayOfDirectIface___localname___T_135665)))).interface_() : stdgo.AnyInterface);
            var _v1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_i1) : stdgo.Ref<stdgo.AnyInterface>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _p1 = (_v1.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            var _i2 = (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_arrayOf.arrayOf((0 : stdgo.GoInt), stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt8)))))).interface_() : stdgo.AnyInterface);
            var _v2 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_i2) : stdgo.Ref<stdgo.AnyInterface>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _p2 = (_v2.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            if (_p1 == ((0 : stdgo.GoUIntptr))) {
                _t.errorf(("got p1=%v. want=not-%v" : stdgo.GoString), stdgo.Go.toInterface(_p1), (null : stdgo.AnyInterface));
            };
            if (_p2 == ((0 : stdgo.GoUIntptr))) {
                _t.errorf(("got p2=%v. want=not-%v" : stdgo.GoString), stdgo.Go.toInterface(_p2), (null : stdgo.AnyInterface));
            };
        };
    }
