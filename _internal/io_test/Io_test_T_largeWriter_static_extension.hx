package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_largeWriter_asInterface) class T_largeWriter_static_extension {
    @:keep
    static public function write( _w:_internal.io_test.Io_test_T_largeWriter.T_largeWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.io_test.Io_test_T_largeWriter.T_largeWriter = _w?.__copy__();
        return { _0 : ((_p.length) + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : _w._err };
    }
}
