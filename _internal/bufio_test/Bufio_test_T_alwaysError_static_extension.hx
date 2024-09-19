package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_alwaysError_asInterface) class T_alwaysError_static_extension {
    @:keep
    static public function read( _:_internal.bufio_test.Bufio_test_T_alwaysError.T_alwaysError, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.bufio_test.Bufio_test_T_alwaysError.T_alwaysError = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
    }
}
