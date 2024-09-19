package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_negativeEOFReader_asInterface) class T_negativeEOFReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:_internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader,  _r:stdgo.Pointer<_internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        if ((_r.value > (0 : _internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader) : Bool)) {
            var _c = (_r.value : stdgo.GoInt);
            if ((_c > (_p.length) : Bool)) {
                _c = (_p.length);
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _c : Bool), _i++, {
                    _p[(_i : stdgo.GoInt)] = (97 : stdgo.GoUInt8);
                });
            };
            _p[(_c - (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            _r.value = (_r.value - ((_c : _internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader)) : _internal.bufio_test.Bufio_test_T_negativeEOFReader.T_negativeEOFReader);
            return { _0 : _c, _1 : (null : stdgo.Error) };
        };
        return { _0 : (-1 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
    }
}
