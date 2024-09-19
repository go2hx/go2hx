package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testTypeOfTypeOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _check = (function(_name:stdgo.GoString, _typ:stdgo._internal.reflect.Reflect_Type_.Type_):Void {
            {
                var _underlying = ((stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_typ)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_underlying != (("*reflect.rtype" : stdgo.GoString))) {
                    _t.errorf(("%v returned %v, not *reflect.rtype" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_underlying));
                };
            };
        } : (stdgo.GoString, stdgo._internal.reflect.Reflect_Type_.Type_) -> Void);
        {};
        _check(("TypeOf" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573))));
        _check(("ArrayOf" : stdgo.GoString), stdgo._internal.reflect.Reflect_arrayOf.arrayOf((10 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573)))));
        _check(("ChanOf" : stdgo.GoString), stdgo._internal.reflect.Reflect_chanOf.chanOf((3 : stdgo._internal.reflect.Reflect_ChanDir.ChanDir), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573)))));
        _check(("FuncOf" : stdgo.GoString), stdgo._internal.reflect.Reflect_funcOf.funcOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>(1, 1, ...[stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573)))]) : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>), (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Type_.Type_>), false));
        _check(("MapOf" : stdgo.GoString), stdgo._internal.reflect.Reflect_mapOf.mapOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573))), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573)))));
        _check(("PtrTo" : stdgo.GoString), stdgo._internal.reflect.Reflect_pointerTo.pointerTo(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573)))));
        _check(("SliceOf" : stdgo.GoString), stdgo._internal.reflect.Reflect_sliceOf.sliceOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573() : _internal.reflect_test.Reflect_test_T_testTypeOfTypeOf___localname___T_192573.T_testTypeOfTypeOf___localname___T_192573)))));
    }
