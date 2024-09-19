package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_errorThenGoodReader_asInterface) class T_errorThenGoodReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.bufio_test.Bufio_test_T_errorThenGoodReader.T_errorThenGoodReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.bufio_test.Bufio_test_T_errorThenGoodReader.T_errorThenGoodReader> = _r;
        _r._nread++;
        if (!_r._didErr) {
            _r._didErr = true;
            return { _0 : (0 : stdgo.GoInt), _1 : _internal.bufio_test.Bufio_test__errFake._errFake };
        };
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
