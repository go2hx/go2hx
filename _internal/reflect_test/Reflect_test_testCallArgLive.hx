package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallArgLive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var f = (function(_t:_internal.reflect_test.Reflect_test_T_testCallArgLive___localname___T_173836.T_testCallArgLive___localname___T_173836):Void {
            _t.x.value = ("ok" : stdgo.GoString);
        } : _internal.reflect_test.Reflect_test_T_testCallArgLive___localname___T_173836.T_testCallArgLive___localname___T_173836 -> Void);
        stdgo._internal.reflect.Reflect_callGC.callGC.value = true;
        var _x = stdgo.Go.pointer(("" : stdgo.GoString));
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(function(_p:stdgo.Pointer<stdgo.GoString>):Void {
            if (_p.value != (("ok" : stdgo.GoString))) {
                _t.errorf(("x dead prematurely" : stdgo.GoString));
            };
        }));
        var _v = (new _internal.reflect_test.Reflect_test_T_testCallArgLive___localname___T_173836.T_testCallArgLive___localname___T_173836(_x, (null : stdgo.Pointer<stdgo.GoString>)) : _internal.reflect_test.Reflect_test_T_testCallArgLive___localname___T_173836.T_testCallArgLive___localname___T_173836);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(f)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_v))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        stdgo._internal.reflect.Reflect_callGC.callGC.value = false;
    }
