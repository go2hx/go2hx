package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_gzipReader_asInterface) class T_gzipReader_static_extension {
    @:keep
    static public function close( _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader>):stdgo.Error {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader> = _gz;
        return _gz._body.close();
    }
    @:keep
    static public function read( _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader> = _gz;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_gz._zr == null || (_gz._zr : Dynamic).__nil__)) {
            if (_gz._zerr == null) {
                {
                    var __tmp__ = stdgo._internal.compress.gzip.Gzip_newReader.newReader(stdgo.Go.asInterface(_gz._body));
                    _gz._zr = __tmp__._0;
                    _gz._zerr = __tmp__._1;
                };
            };
            if (_gz._zerr != null) {
                return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = _gz._zerr };
            };
        };
        _gz._body._mu.lock();
        if (_gz._body._closed) {
            _err = stdgo._internal.net.http.Http__errReadOnClosedResBody._errReadOnClosedResBody;
        };
        _gz._body._mu.unlock();
        if (_err != null) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err };
        };
        return {
            var __tmp__ = _gz._zr.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
