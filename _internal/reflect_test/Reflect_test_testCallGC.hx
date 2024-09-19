package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function(_a:stdgo.GoString, _b:stdgo.GoString, _c:stdgo.GoString, _d:stdgo.GoString, _e:stdgo.GoString):Void {} : (stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        var _g = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            stdgo._internal.runtime.Runtime_gc.gc();
            return (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        };
        var _typ = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_f)).type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _f2 = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_typ, _g).interface_() : (stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void)) : (stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        _f2(("four" : stdgo.GoString), ("five5" : stdgo.GoString), ("six666" : stdgo.GoString), ("seven77" : stdgo.GoString), ("eight888" : stdgo.GoString));
    }
