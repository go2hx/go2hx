package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testIssue22073(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((0 : _internal.reflect_test.Reflect_test_NonExportedFirst.NonExportedFirst)))).method((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _got = (_m.type().numOut() : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("NumOut: got %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        _m.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
    }
