package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testAlias(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (("hello" : stdgo.GoString) : stdgo.GoString);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.pointer(_x))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _oldvalue = (_v.interface_() : stdgo.AnyInterface);
        _v.setString(("world" : stdgo.GoString));
        var _newvalue = (_v.interface_() : stdgo.AnyInterface);
        if (((_oldvalue != stdgo.Go.toInterface(("hello" : stdgo.GoString))) || (_newvalue != stdgo.Go.toInterface(("world" : stdgo.GoString))) : Bool)) {
            _t.errorf(("aliasing: old=%q new=%q, want hello, world" : stdgo.GoString), _oldvalue, _newvalue);
        };
    }
