package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_writeStringFormatter_asInterface) class T_writeStringFormatter_static_extension {
    @:keep
    static public function format( _sf:_internal.fmt_test.Fmt_test_T_writeStringFormatter.T_writeStringFormatter, _f:stdgo._internal.fmt.Fmt_State.State, _c:stdgo.GoInt32):Void {
        @:recv var _sf:_internal.fmt_test.Fmt_test_T_writeStringFormatter.T_writeStringFormatter = _sf;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo._internal.io.Io_StringWriter.StringWriter)) : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _sw.writeString(((("***" : stdgo.GoString) + (_sf : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("***" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
    }
}
