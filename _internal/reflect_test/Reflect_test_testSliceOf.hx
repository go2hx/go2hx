package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSliceOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _st = (stdgo._internal.reflect.Reflect_sliceOf.sliceOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : _internal.reflect_test.Reflect_test_T_testSliceOf___localname___T_136372.T_testSliceOf___localname___T_136372)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var __0 = ((_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("[]reflect_test.T" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("SliceOf(T(1)).String()=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _v = (stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_st, (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _v.len() : Bool), _i++, {
                _v.index(_i).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((_i : _internal.reflect_test.Reflect_test_T_testSliceOf___localname___T_136372.T_testSliceOf___localname___T_136372)))?.__copy__());
                stdgo._internal.runtime.Runtime_gc.gc();
            });
        };
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_())?.__copy__() : stdgo.GoString);
        var _want = ("[0 1 2 3 4 5 6 7 8 9]" : stdgo.GoString);
        if (_s != (_want)) {
            _t.errorf(("constructed slice = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
        };
        {};
        _internal.reflect_test.Reflect_test__checkSameType._checkSameType(_t, stdgo._internal.reflect.Reflect_sliceOf.sliceOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((1 : _internal.reflect_test.Reflect_test_T_testSliceOf___localname___T1_136851.T_testSliceOf___localname___T1_136851)))), stdgo.Go.toInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_T_testSliceOf___localname___T1_136851.T_testSliceOf___localname___T1_136851>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_T_testSliceOf___localname___T1_136851.T_testSliceOf___localname___T1_136851>)));
    }
