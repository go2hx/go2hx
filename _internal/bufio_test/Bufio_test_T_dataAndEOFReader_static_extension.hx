package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_dataAndEOFReader_asInterface) class T_dataAndEOFReader_static_extension {
    @:keep
    static public function read( _r:_internal.bufio_test.Bufio_test_T_dataAndEOFReader.T_dataAndEOFReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:_internal.bufio_test.Bufio_test_T_dataAndEOFReader.T_dataAndEOFReader = _r;
        return { _0 : stdgo.Go.copySlice(_p, _r), _1 : stdgo._internal.io.Io_eof.eof };
    }
}
