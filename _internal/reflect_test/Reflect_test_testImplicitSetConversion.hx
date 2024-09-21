package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testImplicitSetConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.io.Io_Reader.Reader>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _rv.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))?.__copy__());
        if (stdgo.Go.toInterface(_r) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))) {
            _t.errorf(("after Set: r=%T(%v)" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r));
        };
    }
