package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.StreamWriter_asInterface) class StreamWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter):stdgo.Error {
        @:recv var _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter = _w?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w.w) : stdgo._internal.io.Io_closer.Closer)) : stdgo._internal.io.Io_closer.Closer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_closer.Closer), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _c.close();
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _c = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _w.s.xORKeyStream(_c, _src);
        {
            var __tmp__ = _w.w.write(_c);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_n != (_src.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
}
