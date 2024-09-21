package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_writeCountingDiscard_asInterface) class T_writeCountingDiscard_static_extension {
    @:keep
    @:pointer
    static public function write(____:_internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard,  _w:stdgo.Pointer<_internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        _w.value++;
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
