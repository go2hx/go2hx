package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function _testType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _i:stdgo.GoInt, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _want:stdgo.GoString):Void {
        var _s = ((_typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_s != (_want)) {
            _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_want));
        };
    }
