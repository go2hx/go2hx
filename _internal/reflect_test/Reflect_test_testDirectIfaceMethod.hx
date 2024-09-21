package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testDirectIfaceMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (42 : stdgo.GoInt);
        var _v = (new _internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT(stdgo.Go.pointer(_x)) : _internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT);
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var __tmp__ = _typ.methodByName(("M" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_Method.Method = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("cannot find method M" : stdgo.GoString));
        };
        var _in = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        var _out = _m.func.call(_in);
        {
            var _got = (_out[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_got != ((42i64 : stdgo.GoInt64))) {
                _t.errorf(("Call with value receiver got %d, want 42" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        var _pv = (stdgo.Go.setRef(_v) : stdgo.Ref<_internal.reflect_test.Reflect_test_DirectIfaceT.DirectIfaceT>);
        _typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_pv)));
        {
            var __tmp__ = _typ.methodByName(("M" : stdgo.GoString));
            _m = __tmp__._0?.__copy__();
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _t.fatalf(("cannot find method M" : stdgo.GoString));
        };
        _in = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_pv)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        _out = _m.func.call(_in);
        {
            var _got = (_out[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_got != ((42i64 : stdgo.GoInt64))) {
                _t.errorf(("Call with pointer receiver got %d, want 42" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
