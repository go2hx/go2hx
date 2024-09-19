package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testEmbeddedMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_OuterInt.OuterInt>)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (((_typ.numMethod() != (1 : stdgo.GoInt)) || (_typ.method((0 : stdgo.GoInt)).func.unsafePointer() != stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test_OuterInt_static_extension.OuterInt_static_extension.m)).unsafePointer()) : Bool)) {
            _t.errorf(("Wrong method table for OuterInt: (m=%p)" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test_OuterInt_static_extension.OuterInt_static_extension.m));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _typ.numMethod() : Bool), _i++, {
                    var _m = (_typ.method(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Method.Method);
                    _t.errorf(("\t%d: %s %p\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_m.name), stdgo.Go.toInterface(_m.func.unsafePointer()));
                });
            };
        };
        var _i = (stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_InnerInt.InnerInt((3 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_InnerInt.InnerInt)) : stdgo.Ref<_internal.reflect_test.Reflect_test_InnerInt.InnerInt>);
        {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_i))).method((0 : stdgo.GoInt)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_v != ((3i64 : stdgo.GoInt64))) {
                _t.errorf(("i.M() = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_v));
            };
        };
        var _o = (stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_OuterInt.OuterInt((1 : stdgo.GoInt), (new _internal.reflect_test.Reflect_test_InnerInt.InnerInt((2 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_InnerInt.InnerInt)) : _internal.reflect_test.Reflect_test_OuterInt.OuterInt)) : stdgo.Ref<_internal.reflect_test.Reflect_test_OuterInt.OuterInt>);
        {
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_o))).method((0 : stdgo.GoInt)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_v != ((2i64 : stdgo.GoInt64))) {
                _t.errorf(("i.M() = %d, want 2" : stdgo.GoString), stdgo.Go.toInterface(_v));
            };
        };
        var _f = _internal.reflect_test.Reflect_test_OuterInt_static_extension.OuterInt_static_extension.m;
        {
            var _v = (_f(_o) : stdgo.GoInt);
            if (_v != ((2 : stdgo.GoInt))) {
                _t.errorf(("f(o) = %d, want 2" : stdgo.GoString), stdgo.Go.toInterface(_v));
            };
        };
    }
