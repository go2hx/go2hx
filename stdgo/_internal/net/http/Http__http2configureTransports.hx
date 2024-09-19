package stdgo._internal.net.http;
function _http2configureTransports(_t1:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>; var _1 : stdgo.Error; } {
        var _connPool = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>);
        var _t2 = (stdgo.Go.setRef(({ connPool : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool(_connPool) : stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool)), _t1 : _t1 } : stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
        _connPool._t = _t2;
        {
            var _err = (stdgo._internal.net.http.Http__http2registerHTTPSProtocol._http2registerHTTPSProtocol(_t1, (new stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper(_t2) : stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (_t1.tlsclientConfig == null || (_t1.tlsclientConfig : Dynamic).__nil__) {
            _t1.tlsclientConfig = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_Config.Config)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains(_t1.tlsclientConfig.nextProtos, ("h2" : stdgo.GoString))) {
            _t1.tlsclientConfig.nextProtos = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_t1.tlsclientConfig.nextProtos : Array<stdgo.GoString>)));
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains(_t1.tlsclientConfig.nextProtos, ("http/1.1" : stdgo.GoString))) {
            _t1.tlsclientConfig.nextProtos = (_t1.tlsclientConfig.nextProtos.__append__(("http/1.1" : stdgo.GoString)));
        };
        var _upgradeFn = function(_authority:stdgo.GoString, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
            var _addr = (stdgo._internal.net.http.Http__http2authorityAddr._http2authorityAddr(("https" : stdgo.GoString), _authority?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = _connPool._addConnIfNeeded(_addr?.__copy__(), _t2, _c), _used:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo.Go.routine(() -> _c.close());
                    return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper(_err) : stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper));
                } else if (!_used) {
                    stdgo.Go.routine(() -> _c.close());
                };
            };
            return stdgo.Go.asInterface(_t2);
        };
        {
            var _m = _t1.tlsnextProto;
            if ((_m.length) == ((0 : stdgo.GoInt))) {
                _t1.tlsnextProto = ({
                    final x = new stdgo.GoMap.GoStringMap<(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>();
                    x.__defaultValue__ = () -> null;
                    x.set(("h2" : stdgo.GoString), _upgradeFn);
                    x;
                } : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>);
            } else {
                _m[("h2" : stdgo.GoString)] = _upgradeFn;
            };
        };
        return { _0 : _t2, _1 : (null : stdgo.Error) };
    }
