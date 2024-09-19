package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_largeReader_asInterface) class T_largeReader_static_extension {
    @:keep
    static public function read( _:_internal.bufio_test.Bufio_test_T_largeReader.T_largeReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.bufio_test.Bufio_test_T_largeReader.T_largeReader = _?.__copy__();
        return { _0 : ((_p.length) + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
