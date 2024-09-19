package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_testReader_asInterface) class T_testReader_static_extension {
    @:keep
    static public function read( _t:stdgo.Ref<_internal.bufio_test.Bufio_test_T_testReader.T_testReader>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<_internal.bufio_test.Bufio_test_T_testReader.T_testReader> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = _t._stride;
        if ((_n > (_t._data.length) : Bool)) {
            _n = (_t._data.length);
        };
        if ((_n > (_buf.length) : Bool)) {
            _n = (_buf.length);
        };
        stdgo.Go.copySlice(_buf, _t._data);
        _t._data = (_t._data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_t._data.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io_eof.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
