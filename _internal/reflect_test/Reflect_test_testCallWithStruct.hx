package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallWithStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__returnEmpty._returnEmpty)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if (((_r.length != (1 : stdgo.GoInt)) || !((_r[(0 : stdgo.GoInt)].type().string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct() : _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct))).string() : String)) : Bool)) {
            _t.errorf(("returning empty struct returned %#v instead" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
        _r = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__takesEmpty._takesEmpty)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct() : _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((_r.length) != ((0 : stdgo.GoInt))) {
            _t.errorf(("takesEmpty returned values: %#v" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
        _r = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__returnNonEmpty._returnNonEmpty)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((42 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((((_r.length) != ((1 : stdgo.GoInt)) || !((_r[(0 : stdgo.GoInt)].type().string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((new _internal.reflect_test.Reflect_test_T_nonEmptyStruct.T_nonEmptyStruct() : _internal.reflect_test.Reflect_test_T_nonEmptyStruct.T_nonEmptyStruct))).string() : String)) : Bool) || (_r[(0 : stdgo.GoInt)].field((0 : stdgo.GoInt)).int_() != (42i64 : stdgo.GoInt64)) : Bool)) {
            _t.errorf(("returnNonEmpty returned %#v" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
        _r = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__takesNonEmpty._takesNonEmpty)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(({ _member : (42 : stdgo.GoInt) } : _internal.reflect_test.Reflect_test_T_nonEmptyStruct.T_nonEmptyStruct)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((((_r.length) != ((1 : stdgo.GoInt)) || !((_r[(0 : stdgo.GoInt)].type().string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : stdgo.GoInt))).string() : String)) : Bool) || (_r[(0 : stdgo.GoInt)].int_() != (42i64 : stdgo.GoInt64)) : Bool)) {
            _t.errorf(("takesNonEmpty returned %#v" : stdgo.GoString), stdgo.Go.toInterface(_r));
        };
    }
