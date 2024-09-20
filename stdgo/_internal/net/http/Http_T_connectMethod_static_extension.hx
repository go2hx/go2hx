package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connectMethod_asInterface) class T_connectMethod_static_extension {
    @:keep
    static public function _tlsHost( _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod> = _cm;
        var _h = (_cm._targetAddr?.__copy__() : stdgo.GoString);
        if (stdgo._internal.net.http.Http__hasPort._hasPort(_h?.__copy__())) {
            _h = (_h.__slice__(0, stdgo._internal.strings.Strings_lastIndex.lastIndex(_h?.__copy__(), (":" : stdgo.GoString))) : stdgo.GoString)?.__copy__();
        };
        return _h?.__copy__();
    }
    @:keep
    static public function _addr( _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod> = _cm;
        if (_cm._proxyURL != null && ((_cm._proxyURL : Dynamic).__nil__ == null || !(_cm._proxyURL : Dynamic).__nil__)) {
            return stdgo._internal.net.http.Http__canonicalAddr._canonicalAddr(_cm._proxyURL)?.__copy__();
        };
        return _cm._targetAddr?.__copy__();
    }
    @:keep
    static public function _scheme( _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod> = _cm;
        if (_cm._proxyURL != null && ((_cm._proxyURL : Dynamic).__nil__ == null || !(_cm._proxyURL : Dynamic).__nil__)) {
            return _cm._proxyURL.scheme?.__copy__();
        };
        return _cm._targetScheme?.__copy__();
    }
    @:keep
    static public function _key( _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod>):stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod> = _cm;
        var _proxyStr = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _targetAddr = (_cm._targetAddr?.__copy__() : stdgo.GoString);
        if (_cm._proxyURL != null && ((_cm._proxyURL : Dynamic).__nil__ == null || !(_cm._proxyURL : Dynamic).__nil__)) {
            _proxyStr = (_cm._proxyURL.string() : stdgo.GoString)?.__copy__();
            if (((((_cm._proxyURL.scheme == ("http" : stdgo.GoString)) || (_cm._proxyURL.scheme == ("https" : stdgo.GoString)) : Bool)) && (_cm._targetScheme == ("http" : stdgo.GoString)) : Bool)) {
                _targetAddr = stdgo.Go.str()?.__copy__();
            };
        };
        return ({ _proxy : _proxyStr?.__copy__(), _scheme : _cm._targetScheme?.__copy__(), _addr : _targetAddr?.__copy__(), _onlyH1 : _cm._onlyH1 } : stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey);
    }
    @:keep
    static public function _proxyAuth( _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod>):stdgo.GoString {
        @:recv var _cm:stdgo.Ref<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod> = _cm;
        if (_cm._proxyURL == null || (_cm._proxyURL : Dynamic).__nil__) {
            return stdgo.Go.str()?.__copy__();
        };
        {
            var _u = _cm._proxyURL.user;
            if (_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) {
                var _username = (_u.username()?.__copy__() : stdgo.GoString);
                var __tmp__ = _u.password(), _password:stdgo.GoString = __tmp__._0, __35935:Bool = __tmp__._1;
                return (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicAuth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
}
