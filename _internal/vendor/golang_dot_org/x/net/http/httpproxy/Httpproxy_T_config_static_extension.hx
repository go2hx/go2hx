package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy.T_config_asInterface) class T_config_static_extension {
    @:keep
    static public function _init( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config>):Void {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config> = _c;
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__parseProxy._parseProxy(_c.config.httpproxy?.__copy__()), _parsed:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _c._httpProxy = _parsed;
            };
        };
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__parseProxy._parseProxy(_c.config.httpsproxy?.__copy__()), _parsed:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _c._httpsProxy = _parsed;
            };
        };
        for (__0 => _p in stdgo._internal.strings.Strings_split.split(_c.config.noProxy?.__copy__(), ("," : stdgo.GoString))) {
            _p = stdgo._internal.strings.Strings_toLower.toLower(stdgo._internal.strings.Strings_trimSpace.trimSpace(_p?.__copy__())?.__copy__())?.__copy__();
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                continue;
            };
            if (_p == (("*" : stdgo.GoString))) {
                _c._ipMatchers = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>(1, 1, ...[stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_allMatch.T_allMatch() : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_allMatch.T_allMatch))]) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>);
                _c._domainMatchers = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>(1, 1, ...[stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_allMatch.T_allMatch() : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_allMatch.T_allMatch))]) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_matcher.T_matcher>);
                return;
            };
            {
                var __tmp__ = stdgo._internal.net.Net_parseCIDR.parseCIDR(_p?.__copy__()), __1:stdgo._internal.net.Net_IP.IP = __tmp__._0, _pnet:stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    _c._ipMatchers = (_c._ipMatchers.__append__(stdgo.Go.asInterface(({ _cidr : _pnet } : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_cidrMatch.T_cidrMatch))));
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_p?.__copy__()), _phost:stdgo.GoString = __tmp__._0, _pport:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err == null) {
                if ((_phost.length) == ((0 : stdgo.GoInt))) {
                    continue;
                };
                if (((_phost[(0 : stdgo.GoInt)] == (91 : stdgo.GoUInt8)) && (_phost[((_phost.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
                    _phost = (_phost.__slice__((1 : stdgo.GoInt), ((_phost.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            } else {
                _phost = _p?.__copy__();
            };
            {
                var _pip = (stdgo._internal.net.Net_parseIP.parseIP(_phost?.__copy__()) : stdgo._internal.net.Net_IP.IP);
                if (_pip != null) {
                    _c._ipMatchers = (_c._ipMatchers.__append__(stdgo.Go.asInterface(({ _ip : _pip, _port : _pport?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_ipMatch.T_ipMatch))));
                    continue;
                };
            };
            if ((_phost.length) == ((0 : stdgo.GoInt))) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_phost?.__copy__(), ("*." : stdgo.GoString))) {
                _phost = (_phost.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            var _matchHost = (false : Bool);
            if (_phost[(0 : stdgo.GoInt)] != ((46 : stdgo.GoUInt8))) {
                _matchHost = true;
                _phost = (("." : stdgo.GoString) + _phost?.__copy__() : stdgo.GoString)?.__copy__();
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__idnaASCII._idnaASCII(_phost?.__copy__()), _v:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _phost = _v?.__copy__();
                };
            };
            _c._domainMatchers = (_c._domainMatchers.__append__(stdgo.Go.asInterface(({ _host : _phost?.__copy__(), _port : _pport?.__copy__(), _matchHost : _matchHost } : _internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_domainMatch.T_domainMatch))));
        };
    }
    @:keep
    static public function _useProxy( _cfg:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config>, _addr:stdgo.GoString):Bool {
        @:recv var _cfg:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config> = _cfg;
        if ((_addr.length) == ((0 : stdgo.GoInt))) {
            return true;
        };
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return false;
        };
        if (_host == (("localhost" : stdgo.GoString))) {
            return false;
        };
        var _ip = (stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__()) : stdgo._internal.net.Net_IP.IP);
        if (_ip != null) {
            if (_ip.isLoopback()) {
                return false;
            };
        };
        _addr = stdgo._internal.strings.Strings_toLower.toLower(stdgo._internal.strings.Strings_trimSpace.trimSpace(_host?.__copy__())?.__copy__())?.__copy__();
        if (_ip != null) {
            for (__0 => _m in _cfg._ipMatchers) {
                if (_m._match(_addr?.__copy__(), _port?.__copy__(), _ip)) {
                    return false;
                };
            };
        };
        for (__0 => _m in _cfg._domainMatchers) {
            if (_m._match(_addr?.__copy__(), _port?.__copy__(), _ip)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function _proxyForURL( _cfg:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config>, _reqURL:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        @:recv var _cfg:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config> = _cfg;
        var _proxy:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        if (_reqURL.scheme == (("https" : stdgo.GoString))) {
            _proxy = _cfg._httpsProxy;
        } else if (_reqURL.scheme == (("http" : stdgo.GoString))) {
            _proxy = _cfg._httpProxy;
            if ((((_proxy != null) && ((_proxy : Dynamic).__nil__ == null || !(_proxy : Dynamic).__nil__)) && _cfg.config.cgi : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("refusing to use HTTP_PROXY value in CGI environment; see golang.org/s/cgihttpproxy" : stdgo.GoString)) };
            };
        };
        if (_proxy == null || (_proxy : Dynamic).__nil__) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (!_cfg._useProxy(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__canonicalAddr._canonicalAddr(_reqURL)?.__copy__())) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        return { _0 : _proxy, _1 : (null : stdgo.Error) };
    }
    @:embedded
    public static function proxyFunc( __self__:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config):stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return __self__.proxyFunc();
}
