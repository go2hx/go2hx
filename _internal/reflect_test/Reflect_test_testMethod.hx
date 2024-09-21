package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (new _internal.reflect_test.Reflect_test_Point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point);
        var _i = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).method((1 : stdgo.GoInt)).func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((10 : stdgo.GoInt)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        if (_i != ((250i64 : stdgo.GoInt64))) {
            _t.errorf(("Type Method returned %d; want 250" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        var __tmp__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("Dist" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_Method.Method = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("method by name failed" : stdgo.GoString));
        };
        _i = _m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((11 : stdgo.GoInt)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((275i64 : stdgo.GoInt64))) {
            _t.errorf(("Type MethodByName returned %d; want 275" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("NoArgs" : stdgo.GoString));
            _m = __tmp__._0?.__copy__();
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _t.fatalf(("method by name failed" : stdgo.GoString));
        };
        var _n = (_m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>)).length : stdgo.GoInt);
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("NoArgs returned %d values; want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _i = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).method((1 : stdgo.GoInt)).func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>))))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((12 : stdgo.GoInt)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((300i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Type Method returned %d; want 300" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("Dist" : stdgo.GoString));
            _m = __tmp__._0?.__copy__();
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _t.fatalf(("ptr method by name failed" : stdgo.GoString));
        };
        _i = _m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>))))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((13 : stdgo.GoInt)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((325i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Type MethodByName returned %d; want 325" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("NoArgs" : stdgo.GoString));
            _m = __tmp__._0?.__copy__();
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _t.fatalf(("method by name failed" : stdgo.GoString));
        };
        _n = (_m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>)).length);
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("NoArgs returned %d values; want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("AA" : stdgo.GoString));
            _ok = __tmp__._1;
        };
        if (_ok) {
            _t.errorf(("MethodByName(\"AA\") should have failed" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("ZZ" : stdgo.GoString));
            _ok = __tmp__._1;
        };
        if (_ok) {
            _t.errorf(("MethodByName(\"ZZ\") should have failed" : stdgo.GoString));
        };
        var _tfunc = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.GoInt -> stdgo.GoInt))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Value Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((14 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((350i64 : stdgo.GoInt64))) {
            _t.errorf(("Value Method returned %d; want 350" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Value MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((15 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((375i64 : stdgo.GoInt64))) {
            _t.errorf(("Value MethodByName returned %d; want 375" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).method((1 : stdgo.GoInt))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Pointer Value Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((16 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((400i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Value Method returned %d; want 400" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Pointer Value MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((17 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((425i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Value MethodByName returned %d; want 425" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        var _x:_internal.reflect_test.Reflect_test_T__interface_0.T__interface_0 = stdgo.Go.asInterface(_p);
        var _pv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.reflect_test.Reflect_test_T__interface_0.T__interface_0>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _v = _pv.method((0 : stdgo.GoInt))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Interface Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((18 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((450i64 : stdgo.GoInt64))) {
            _t.errorf(("Interface Method returned %d; want 450" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = _pv.methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Interface MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((19 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((475i64 : stdgo.GoInt64))) {
            _t.errorf(("Interface MethodByName returned %d; want 475" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
    }
