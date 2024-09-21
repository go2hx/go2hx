package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_eofReader_asInterface) class T_eofReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.bufio_test.Bufio_test_T_eofReader.T_eofReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.bufio_test.Bufio_test_T_eofReader.T_eofReader> = _r;
        var _read = (stdgo.Go.copySlice(_p, _r._buf) : stdgo.GoInt);
        _r._buf = (_r._buf.__slice__(_read) : stdgo.Slice<stdgo.GoUInt8>);
        {
            final __value__ = _read;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((_r._buf.length))) {
                return { _0 : _read, _1 : stdgo._internal.io.Io_eof.eof };
            };
        };
        return { _0 : _read, _1 : (null : stdgo.Error) };
    }
}
