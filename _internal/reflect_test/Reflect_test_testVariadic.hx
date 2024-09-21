package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testVariadic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var v = (stdgo._internal.reflect.Reflect_valueOf.valueOf : stdgo.AnyInterface -> stdgo._internal.reflect.Reflect_Value.Value);
        _b.reset();
        v(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_fprintf.fprintf)).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(4, 4, ...[v(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))))?.__copy__(), v(stdgo.Go.toInterface(("%s, %d world" : stdgo.GoString)))?.__copy__(), v(stdgo.Go.toInterface(("hello" : stdgo.GoString)))?.__copy__(), v(stdgo.Go.toInterface((42 : stdgo.GoInt)))?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((_b.string() : stdgo.GoString) != (("hello, 42 world" : stdgo.GoString))) {
            _t.errorf(("after Fprintf Call: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("hello 42 world" : stdgo.GoString)));
        };
        _b.reset();
        v(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_fprintf.fprintf)).callSlice((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(3, 3, ...[v(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))))?.__copy__(), v(stdgo.Go.toInterface(("%s, %d world" : stdgo.GoString)))?.__copy__(), v(stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((42 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((_b.string() : stdgo.GoString) != (("hello, 42 world" : stdgo.GoString))) {
            _t.errorf(("after Fprintf CallSlice: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("hello 42 world" : stdgo.GoString)));
        };
    }
