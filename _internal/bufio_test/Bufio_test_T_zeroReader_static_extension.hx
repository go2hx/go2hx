package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_zeroReader_asInterface) class T_zeroReader_static_extension {
    @:keep
    static public function read( _:_internal.bufio_test.Bufio_test_T_zeroReader.T_zeroReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.bufio_test.Bufio_test_T_zeroReader.T_zeroReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
