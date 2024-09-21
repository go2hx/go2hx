package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_emptyThenNonEmptyReader_asInterface) class T_emptyThenNonEmptyReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader.T_emptyThenNonEmptyReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.bufio_test.Bufio_test_T_emptyThenNonEmptyReader.T_emptyThenNonEmptyReader> = _r;
        if ((_r._n <= (0 : stdgo.GoInt) : Bool)) {
            return _r._r.read(_p);
        };
        _r._n--;
        return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
