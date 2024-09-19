package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _w:_internal.io_test.Io_test_T_errWriter.T_errWriter, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.io_test.Io_test_T_errWriter.T_errWriter = _w?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
    }
}
