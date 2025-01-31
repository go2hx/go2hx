package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _w:stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter = _w?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
    }
}
