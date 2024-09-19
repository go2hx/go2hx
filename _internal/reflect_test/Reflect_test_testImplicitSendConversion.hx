package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testImplicitSendConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>((10 : stdgo.GoInt).toBasic(), () -> (null : stdgo._internal.io.Io_Reader.Reader)) : stdgo.Chan<stdgo._internal.io.Io_Reader.Reader>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c)).send(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))?.__copy__());
        {
            var _bb = (_c.__get__() : stdgo._internal.io.Io_Reader.Reader);
            if (stdgo.Go.toInterface(_bb) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))) {
                _t.errorf(("Received %p != %p" : stdgo.GoString), stdgo.Go.toInterface(_bb), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
            };
        };
    }
