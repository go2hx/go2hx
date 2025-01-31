package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader> = _r;
        return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
    }
}
