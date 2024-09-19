package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_writerWithReadFromError_asInterface) class T_writerWithReadFromError_static_extension {
    @:keep
    static public function write( _w:_internal.bufio_test.Bufio_test_T_writerWithReadFromError.T_writerWithReadFromError, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.bufio_test.Bufio_test_T_writerWithReadFromError.T_writerWithReadFromError = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (10 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readFrom( _w:_internal.bufio_test.Bufio_test_T_writerWithReadFromError.T_writerWithReadFromError, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.bufio_test.Bufio_test_T_writerWithReadFromError.T_writerWithReadFromError = _w?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("writerWithReadFromError error" : stdgo.GoString)) };
    }
}
