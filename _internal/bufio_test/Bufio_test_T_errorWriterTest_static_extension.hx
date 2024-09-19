package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_errorWriterTest_asInterface) class T_errorWriterTest_static_extension {
    @:keep
    static public function write( _w:_internal.bufio_test.Bufio_test_T_errorWriterTest.T_errorWriterTest, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:_internal.bufio_test.Bufio_test_T_errorWriterTest.T_errorWriterTest = _w?.__copy__();
        return { _0 : (((_p.length) * _w._n : stdgo.GoInt) / _w._m : stdgo.GoInt), _1 : _w._err };
    }
}
