package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.StreamWriter_asInterface) class StreamWriter_static_extension {
    @:keep
    static public function close( _w:stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter):stdgo.Error {
        @:recv var _w:stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter = _w?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w.w) : stdgo._internal.io.Io_Closer.Closer)) : stdgo._internal.io.Io_Closer.Closer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_Closer.Closer), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c.close();
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _w:stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.crypto.cipher.Cipher_StreamWriter.StreamWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _c = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _w.s.xorkeyStream(_c, _src);
        {
            var __tmp__ = _w.w.write(_c);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (_src.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
}
