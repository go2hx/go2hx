package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testReflectMethodTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p = (new _internal.reflect_test.Reflect_test_Point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_Point.Point);
        var _m = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).methodByName(("GCMethod" : stdgo.GoString))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _i = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_m.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((5 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        if (_i != ((8i64 : stdgo.GoInt64))) {
            _t.errorf(("Call returned %d; want 8" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
    }
