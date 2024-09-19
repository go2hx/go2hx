package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testImplicitCallConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo._internal.io.Io_writeString.writeString))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _fv.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(("hello world" : stdgo.GoString)))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((_b.string() : stdgo.GoString) != (("hello world" : stdgo.GoString))) {
            _t.errorf(("After call: string=%q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("hello world" : stdgo.GoString)));
        };
    }
