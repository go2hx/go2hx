package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMethodValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (new _internal.reflect_test.Reflect_test_Point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point);
        var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var __0 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_Point.Point((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point)))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value), __1 = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_Point.Point((2 : stdgo.GoInt), (2 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point)))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
var _p2 = __1, _p1 = __0;
            if (_p1.pointer() != (_p2.pointer())) {
                _t.errorf(("methodValueCall mismatched: %v - %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_p2)));
            };
        };
        var _tfunc = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.GoInt -> stdgo.GoInt))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Value Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((10 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((250i64 : stdgo.GoInt64))) {
            _t.errorf(("Value Method returned %d; want 250" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Value MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((11 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((275i64 : stdgo.GoInt64))) {
            _t.errorf(("Value MethodByName returned %d; want 275" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        (stdgo.Go.typeAssert((_v.interface_() : () -> Void)) : () -> Void)();
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).method((1 : stdgo.GoInt))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Pointer Value Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((12 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((300i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Value Method returned %d; want 300" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Pointer Value MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((13 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((325i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Value MethodByName returned %d; want 325" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        (stdgo.Go.typeAssert((_v.interface_() : () -> Void)) : () -> Void)();
        var _pp = (stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>);
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_pp) : stdgo.Ref<stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>>))).elem().method((1 : stdgo.GoInt))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Pointer Pointer Value Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((14 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((350i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Pointer Value Method returned %d; want 350" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_pp) : stdgo.Ref<stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>>))).elem().methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Pointer Pointer Value MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((15 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((375i64 : stdgo.GoInt64))) {
            _t.errorf(("Pointer Pointer Value MethodByName returned %d; want 375" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        var _s:_internal.reflect_test.Reflect_test_T__struct_64.T__struct_64 = ({ x : stdgo.Go.asInterface(_p) } : _internal.reflect_test.Reflect_test_T__struct_64.T__struct_64);
        var _pv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_s))).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _v = _pv.method((0 : stdgo.GoInt))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Interface Method Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((16 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((400i64 : stdgo.GoInt64))) {
            _t.errorf(("Interface Method returned %d; want 400" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        _v = _pv.methodByName(("Dist" : stdgo.GoString))?.__copy__();
        {
            var _tt = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                _t.errorf(("Interface MethodByName Type is %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_tt), stdgo.Go.toInterface(_tfunc));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueOf.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((17 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_();
        if (_i != ((425i64 : stdgo.GoInt64))) {
            _t.errorf(("Interface MethodByName returned %d; want 425" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        var _m64 = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("Int64Method" : stdgo.GoString)).interface_() : stdgo.GoInt64 -> stdgo.GoInt64)) : stdgo.GoInt64 -> stdgo.GoInt64);
        {
            var _x = (_m64((123i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_x != ((123i64 : stdgo.GoInt64))) {
                _t.errorf(("Int64Method returned %d; want 123" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
        var _m32 = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p) : stdgo.Ref<_internal.reflect_test.Reflect_test_Point.Point>)))).methodByName(("Int32Method" : stdgo.GoString)).interface_() : stdgo.GoInt32 -> stdgo.GoInt32)) : stdgo.GoInt32 -> stdgo.GoInt32);
        {
            var _x = (_m32((456 : stdgo.GoInt32)) : stdgo.GoInt32);
            if (_x != ((456 : stdgo.GoInt32))) {
                _t.errorf(("Int32Method returned %d; want 456" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
