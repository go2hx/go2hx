package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMakeFuncStackCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _target = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
            stdgo._internal.runtime.Runtime_gc.gc();
            _internal.reflect_test.Reflect_test__useStack._useStack((16 : stdgo.GoInt));
            return (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((9 : stdgo.GoInt)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        };
        var _concrete:(stdgo.Pointer<stdgo.GoInt>, stdgo.GoInt) -> stdgo.GoInt = null;
        var _fn = (stdgo._internal.reflect.Reflect_makeFunc.makeFunc(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_concrete)).type(), _target)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_concrete) : stdgo.Ref<(stdgo.Pointer<stdgo.GoInt>, stdgo.GoInt) -> stdgo.GoInt>))).elem().set(_fn?.__copy__());
        var _x = (_concrete((null : stdgo.Pointer<stdgo.GoInt>), (7 : stdgo.GoInt)) : stdgo.GoInt);
        if (_x != ((9 : stdgo.GoInt))) {
            _t.errorf(("have %#q want 9" : stdgo.GoString), stdgo.Go.toInterface(_x));
        };
    }
