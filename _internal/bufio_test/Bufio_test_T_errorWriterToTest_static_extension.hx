package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_errorWriterToTest_asInterface) class T_errorWriterToTest_static_extension {
    @:keep
    static public function write( _w:_internal.bufio_test.Bufio_test_T_errorWriterToTest.T_errorWriterToTest, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.bufio_test.Bufio_test_T_errorWriterToTest.T_errorWriterToTest = _w?.__copy__();
        return { _0 : ((_p.length) * _w._wn : stdgo.GoInt), _1 : _w._werr };
    }
    @:keep
    static public function read( _r:_internal.bufio_test.Bufio_test_T_errorWriterToTest.T_errorWriterToTest, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:_internal.bufio_test.Bufio_test_T_errorWriterToTest.T_errorWriterToTest = _r?.__copy__();
        return { _0 : ((_p.length) * _r._rn : stdgo.GoInt), _1 : _r._rerr };
    }
}
