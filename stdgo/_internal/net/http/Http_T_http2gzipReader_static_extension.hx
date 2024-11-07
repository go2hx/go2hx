package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2gzipReader_asInterface) class T_http2gzipReader_static_extension {
    @:keep
    static public function close( _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader>):stdgo.Error {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader> = _gz;
        {
            var _err = (_gz._body.close() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _gz._zerr = stdgo._internal.io.fs.Fs_errClosed.errClosed;
        return (null : stdgo.Error);
    }
    @:keep
    static public function read( _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader> = _gz;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_gz._zerr != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _gz._zerr };
        };
        if ((_gz._zr == null || (_gz._zr : Dynamic).__nil__)) {
            {
                var __tmp__ = stdgo._internal.compress.gzip.Gzip_newReader.newReader(_gz._body);
                _gz._zr = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _gz._zerr = _err;
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        return _gz._zr.read(_p);
    }
}
