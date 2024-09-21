package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(_internal.bytes_test.Bytes_test.T_panicReader_asInterface) class T_panicReader_static_extension {
    @:keep
    static public function read( _r:_internal.bytes_test.Bytes_test_T_panicReader.T_panicReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:_internal.bytes_test.Bytes_test_T_panicReader.T_panicReader = _r?.__copy__();
        if (_r._panic) {
            throw stdgo.Go.toInterface(("oops" : stdgo.GoString));
        };
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
    }
}
