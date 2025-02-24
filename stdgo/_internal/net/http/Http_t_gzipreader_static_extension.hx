package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_gzipReader_asInterface) class T_gzipReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>):stdgo.Error {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader> = _gz;
        return @:check2r (@:checkr _gz ?? throw "null pointer dereference")._body.close();
    }
    @:keep
    @:tdfield
    static public function read( _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _gz:stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader> = _gz;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _gz ?? throw "null pointer dereference")._zr == null || ((@:checkr _gz ?? throw "null pointer dereference")._zr : Dynamic).__nil__)) {
            if ((@:checkr _gz ?? throw "null pointer dereference")._zerr == null) {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__gzip._gzip.newReader(stdgo.Go.asInterface((@:checkr _gz ?? throw "null pointer dereference")._body));
                    (@:checkr _gz ?? throw "null pointer dereference")._zr = @:tmpset0 __tmp__._0;
                    (@:checkr _gz ?? throw "null pointer dereference")._zerr = @:tmpset0 __tmp__._1;
                };
            };
            if ((@:checkr _gz ?? throw "null pointer dereference")._zerr != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _gz ?? throw "null pointer dereference")._zerr };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        @:check2 (@:checkr (@:checkr _gz ?? throw "null pointer dereference")._body ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr (@:checkr _gz ?? throw "null pointer dereference")._body ?? throw "null pointer dereference")._closed) {
            _err = stdgo._internal.net.http.Http__errreadonclosedresbody._errReadOnClosedResBody;
        };
        @:check2 (@:checkr (@:checkr _gz ?? throw "null pointer dereference")._body ?? throw "null pointer dereference")._mu.unlock();
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r (@:checkr _gz ?? throw "null pointer dereference")._zr.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}
