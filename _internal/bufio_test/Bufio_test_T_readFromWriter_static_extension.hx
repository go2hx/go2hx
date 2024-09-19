package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_readFromWriter_asInterface) class T_readFromWriter_static_extension {
    @:keep
    static public function readFrom( _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter> = _w;
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_r), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _w._buf = (_w._buf.__append__(...(_b : Array<stdgo.GoUInt8>)));
        _w._readFromBytes = (_w._readFromBytes + ((_b.length)) : stdgo.GoInt);
        return { _0 : (_b.length : stdgo.GoInt64), _1 : _err };
    }
    @:keep
    static public function write( _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_readFromWriter.T_readFromWriter> = _w;
        _w._buf = (_w._buf.__append__(...(_p : Array<stdgo.GoUInt8>)));
        _w._writeBytes = (_w._writeBytes + ((_p.length)) : stdgo.GoInt);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
