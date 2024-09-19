package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testMapIterDelete1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _iter = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_m)).mapRange();
        var _got:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while (_iter.next()) {
            _got = (_got.__append__(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_iter.key())), stdgo.Go.toInterface(stdgo.Go.asInterface(_iter.value())))?.__copy__()));
            if (_m != null) _m.remove(("one" : stdgo.GoString));
            if (_m != null) _m.remove(("two" : stdgo.GoString));
            if (_m != null) _m.remove(("three" : stdgo.GoString));
        };
        if ((_got.length) != ((1 : stdgo.GoInt))) {
            _t.errorf(("iterator returned wrong number of elements: got %d, want 1" : stdgo.GoString), stdgo.Go.toInterface((_got.length)));
        };
    }
