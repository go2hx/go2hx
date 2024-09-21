package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_byteAndEOFReader_asInterface) class T_byteAndEOFReader_static_extension {
    @:keep
    static public function read( _b:_internal.io_test.Io_test_T_byteAndEOFReader.T_byteAndEOFReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:_internal.io_test.Io_test_T_byteAndEOFReader.T_byteAndEOFReader = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("unexpected call" : stdgo.GoString));
        };
        _p[(0 : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
        return { _0 : (1 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
    }
}
