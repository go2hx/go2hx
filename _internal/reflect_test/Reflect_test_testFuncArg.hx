package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testFuncArg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f1 = (function(_i:stdgo.GoInt, _f:stdgo.GoInt -> stdgo.GoInt):stdgo.GoInt {
            return _f(_i);
        } : (stdgo.GoInt, stdgo.GoInt -> stdgo.GoInt) -> stdgo.GoInt);
        var _f2 = (function(_i:stdgo.GoInt):stdgo.GoInt {
            return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        } : stdgo.GoInt -> stdgo.GoInt);
        var _r = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_f1)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((100 : stdgo.GoInt)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_f2))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if (_r[(0 : stdgo.GoInt)].int_() != ((101i64 : stdgo.GoInt64))) {
            _t.errorf(("function returned %d, want 101" : stdgo.GoString), stdgo.Go.toInterface(_r[(0 : stdgo.GoInt)].int_()));
        };
    }
