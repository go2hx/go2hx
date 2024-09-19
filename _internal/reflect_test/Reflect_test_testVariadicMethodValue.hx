package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testVariadicMethodValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (new _internal.reflect_test.Reflect_test_Point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point);
        var _points = (new stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point>(3, 3, ...[(new _internal.reflect_test.Reflect_test_Point.Point((20 : stdgo.GoInt), (21 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point), (new _internal.reflect_test.Reflect_test_Point.Point((22 : stdgo.GoInt), (23 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point), (new _internal.reflect_test.Reflect_test_Point.Point((24 : stdgo.GoInt), (25 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_Point.Point)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point>);
        var _want = (_p.totalDist(_points[(0 : stdgo.GoInt)], _points[(1 : stdgo.GoInt)], _points[(2 : stdgo.GoInt)]) : stdgo.GoInt64);
        var _tfunc = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : (_internal.reflect_test.Reflect_test_Point.Point, stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point>) -> stdgo.GoInt))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var _tt = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).method((4 : stdgo.GoInt)).type : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Variadic Method Type from TypeOf is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _tfunc = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point> -> stdgo.GoInt)));
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).method((4 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Variadic Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        var _i = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(3, 3, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_points[(0 : stdgo.GoInt)])))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_points[(1 : stdgo.GoInt)])))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_points[(2 : stdgo.GoInt)])))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        if (_i != (_want)) {
            _t.errorf(("Variadic Method returned %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).callSlice((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_points))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != (_want)) {
            _t.errorf(("Variadic Method CallSlice returned %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
        };
        var _f = (stdgo.Go.typeAssert((_v.interface_() : stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point> -> stdgo.GoInt)) : stdgo.Slice<_internal.reflect_test.Reflect_test_Point.Point> -> stdgo.GoInt);
        _i = (_f(_points[(0 : stdgo.GoInt)], _points[(1 : stdgo.GoInt)], _points[(2 : stdgo.GoInt)]) : stdgo.GoInt64);
        if (_i != (_want)) {
            _t.errorf(("Variadic Method Interface returned %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
        };
        _i = (_f(...(_points : Array<_internal.reflect_test.Reflect_test_Point.Point>)) : stdgo.GoInt64);
        if (_i != (_want)) {
            _t.errorf(("Variadic Method Interface Slice returned %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want));
        };
    }
