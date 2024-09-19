package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_writeErrorOnlyWriter_asInterface) class T_writeErrorOnlyWriter_static_extension {
    @:keep
    static public function write( _w:_internal.bufio_test.Bufio_test_T_writeErrorOnlyWriter.T_writeErrorOnlyWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.bufio_test.Bufio_test_T_writeErrorOnlyWriter.T_writeErrorOnlyWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("writeErrorOnlyWriter error" : stdgo.GoString)) };
    }
}
