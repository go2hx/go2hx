package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMakeFuncInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fn = (function(_i:stdgo.GoInt):stdgo.GoInt {
            return _i;
        } : stdgo.GoInt -> stdgo.GoInt);
        var _incr = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(((_in[(0 : stdgo.GoInt)].int_() + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        };
        var _fv = (stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_fn)), _incr)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_fn) : stdgo.Ref<stdgo.GoInt -> stdgo.GoInt>))).elem().set(_fv?.__copy__());
        {
            var _r = (_fn((2 : stdgo.GoInt)) : stdgo.GoInt);
            if (_r != ((3 : stdgo.GoInt))) {
                _t.errorf(("Call returned %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        {
            var _r = (_fv.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((14 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_r != ((15i64 : stdgo.GoInt64))) {
                _t.errorf(("Call returned %d, want 15" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        {
            var _r = ((stdgo.Go.typeAssert((_fv.interface_() : stdgo.GoInt -> stdgo.GoInt)) : stdgo.GoInt -> stdgo.GoInt)((26 : stdgo.GoInt)) : stdgo.GoInt);
            if (_r != ((27 : stdgo.GoInt))) {
                _t.errorf(("Call returned %d, want 27" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
