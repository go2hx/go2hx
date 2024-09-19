package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testImplicitAppendConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>(0, 0, ...[]) : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
        var _sv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _sv.set(stdgo._internal.reflect.Reflect_append.append(_sv?.__copy__(), stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)))?.__copy__())?.__copy__());
        if (((_s.length != (1 : stdgo.GoInt)) || (stdgo.Go.toInterface(_s[(0 : stdgo.GoInt)]) != stdgo.Go.toInterface(stdgo.Go.asInterface(_b))) : Bool)) {
            _t.errorf(("after append: s=%v want [%p]" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
        };
    }
