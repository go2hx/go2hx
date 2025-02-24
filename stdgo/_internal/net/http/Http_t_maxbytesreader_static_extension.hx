package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_maxBytesReader_asInterface) class T_maxBytesReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader> = _l;
        return (@:checkr _l ?? throw "null pointer dereference")._r.close();
    }
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _l ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _l ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((((_p.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64) > (@:checkr _l ?? throw "null pointer dereference")._n : Bool)) {
            _p = (_p.__slice__(0, ((@:checkr _l ?? throw "null pointer dereference")._n + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_n : stdgo.GoInt64) <= (@:checkr _l ?? throw "null pointer dereference")._n : Bool)) {
            (@:checkr _l ?? throw "null pointer dereference")._n = ((@:checkr _l ?? throw "null pointer dereference")._n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
            (@:checkr _l ?? throw "null pointer dereference")._err = _err;
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = ((@:checkr _l ?? throw "null pointer dereference")._n : stdgo.GoInt);
        (@:checkr _l ?? throw "null pointer dereference")._n = (0i64 : stdgo.GoInt64);
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference")._w) : stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156)) : stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156), _1 : false };
            }, _res = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _res._requestTooLarge();
            };
        };
        (@:checkr _l ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError((@:checkr _l ?? throw "null pointer dereference")._i) : stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError)) : stdgo.Ref<stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError>));
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _l ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
