package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallConvert(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo._internal.io.Io_ReadWriter.ReadWriter)) : stdgo.Ref<stdgo._internal.io.Io_ReadWriter.ReadWriter>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _f = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(function(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
            return _r;
        }))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _out = _f.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>(1, 1, ...[_v?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
        if ((((_out.length) != ((1 : stdgo.GoInt)) || !((_out[(0 : stdgo.GoInt)].type().string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo._internal.io.Io_Reader.Reader)) : stdgo.Ref<stdgo._internal.io.Io_Reader.Reader>))).elem().string() : String)) : Bool) || !_out[(0 : stdgo.GoInt)].isNil() : Bool)) {
            _t.errorf(("expected [nil], got %v" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
    }
