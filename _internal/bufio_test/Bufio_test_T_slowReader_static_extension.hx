package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_slowReader_asInterface) class T_slowReader_static_extension {
    @:keep
    static public function read( _sr:stdgo.Ref<_internal.bufio_test.Bufio_test_T_slowReader.T_slowReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sr:stdgo.Ref<_internal.bufio_test.Bufio_test_T_slowReader.T_slowReader> = _sr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_p.length) > _sr._max : Bool)) {
            _p = (_p.__slice__((0 : stdgo.GoInt), _sr._max) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _sr._buf.read(_p);
    }
}
