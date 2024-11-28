package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ServeMux_asInterface) class ServeMux_static_extension {
    @:keep
    static public function handleFunc( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        if (_handler == null) {
            throw stdgo.Go.toInterface(("http: nil handler" : stdgo.GoString));
        };
        _mux.handle(_pattern?.__copy__(), stdgo.Go.asInterface((_handler : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc)));
    }
    @:keep
    static public function handle( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_Handler.Handler):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _mux._mu.lock();
            __deferstack__.unshift(() -> _mux._mu.unlock());
            if (_pattern == (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(("http: invalid pattern" : stdgo.GoString));
            };
            if (_handler == null) {
                throw stdgo.Go.toInterface(("http: nil handler" : stdgo.GoString));
            };
            {
                var __tmp__ = (_mux._m != null && _mux._m.exists(_pattern?.__copy__()) ? { _0 : _mux._m[_pattern?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), __34516:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    throw stdgo.Go.toInterface((("http: multiple registrations for " : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString));
                };
            };
            if (_mux._m == null) {
                _mux._m = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>();
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>);
            };
            var _e = ({ _h : _handler, _pattern : _pattern?.__copy__() } : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry);
            _mux._m[_pattern] = _e?.__copy__();
            if (_pattern[((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                _mux._es = stdgo._internal.net.http.Http__appendSorted._appendSorted(_mux._es, _e?.__copy__());
            };
            if (_pattern[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
                _mux._hosts = true;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function serveHTTP( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        if (_r.requestURI == (("*" : stdgo.GoString))) {
            if (_r.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            _w.writeHeader((400 : stdgo.GoInt));
            return;
        };
        var __tmp__ = _mux.handler(_r), _h:stdgo._internal.net.http.Http_Handler.Handler = __tmp__._0, __34496:stdgo.GoString = __tmp__._1;
        _h.serveHTTP(_w, _r);
    }
    @:keep
    static public function _handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var __deferstack__:Array<Void -> Void> = [];
        var _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _pattern = ("" : stdgo.GoString);
        try {
            _mux._mu.rlock();
            __deferstack__.unshift(() -> _mux._mu.runlock());
            if (_mux._hosts) {
                {
                    var __tmp__ = _mux._match((_host + _path?.__copy__() : stdgo.GoString)?.__copy__());
                    _h = __tmp__._0;
                    _pattern = __tmp__._1?.__copy__();
                };
            };
            if (_h == null) {
                {
                    var __tmp__ = _mux._match(_path?.__copy__());
                    _h = __tmp__._0;
                    _pattern = __tmp__._1?.__copy__();
                };
            };
            if (_h == null) {
                {
                    final __tmp__0 = stdgo._internal.net.http.Http_notFoundHandler.notFoundHandler();
                    final __tmp__1 = stdgo.Go.str()?.__copy__();
                    _h = __tmp__0;
                    _pattern = __tmp__1;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : _h, _1 : _pattern };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : _h, _1 : _pattern };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : _h, _1 : _pattern };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _pattern = ("" : stdgo.GoString);
        if (_r.method == (("CONNECT" : stdgo.GoString))) {
            {
                var __tmp__ = _mux._redirectToPathSlash(_r.url.host?.__copy__(), _r.url.path?.__copy__(), _r.url), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _h = stdgo._internal.net.http.Http_redirectHandler.redirectHandler((_u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : _pattern = _u.path?.__copy__() };
                };
            };
            return {
                var __tmp__ = _mux._handler(_r.host?.__copy__(), _r.url.path?.__copy__());
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        var _host = (stdgo._internal.net.http.Http__stripHostPort._stripHostPort(_r.host?.__copy__())?.__copy__() : stdgo.GoString);
        var _path = (stdgo._internal.net.http.Http__cleanPath._cleanPath(_r.url.path?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = _mux._redirectToPathSlash(_host?.__copy__(), _path?.__copy__(), _r.url), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : _h = stdgo._internal.net.http.Http_redirectHandler.redirectHandler((_u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : _pattern = _u.path?.__copy__() };
            };
        };
        if (_path != (_r.url.path)) {
            {
                var __tmp__ = _mux._handler(_host?.__copy__(), _path?.__copy__());
                _pattern = __tmp__._1?.__copy__();
            };
            var _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : _r.url.rawQuery?.__copy__() } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
            return { _0 : _h = stdgo._internal.net.http.Http_redirectHandler.redirectHandler((_u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : _pattern = _pattern?.__copy__() };
        };
        return {
            var __tmp__ = _mux._handler(_host?.__copy__(), _r.url.path?.__copy__());
            _h = __tmp__._0;
            _pattern = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _shouldRedirectRLocked( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString):Bool {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var _p = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_path?.__copy__(), (_host + _path?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__34492 => _c in _p) {
            {
                var __tmp__ = (_mux._m != null && _mux._m.exists(_c?.__copy__()) ? { _0 : _mux._m[_c?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), __34501:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    return false;
                };
            };
        };
        var _n = (_path.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        for (__34493 => _c in _p) {
            {
                var __tmp__ = (_mux._m != null && _mux._m.exists((_c + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) ? { _0 : _mux._m[(_c + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), __34502:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    return _path[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((47 : stdgo.GoUInt8));
                };
            };
        };
        return false;
    }
    @:keep
    static public function _redirectToPathSlash( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : Bool; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        _mux._mu.rlock();
        var _shouldRedirect = (_mux._shouldRedirectRLocked(_host?.__copy__(), _path?.__copy__()) : Bool);
        _mux._mu.runlock();
        if (!_shouldRedirect) {
            return { _0 : _u, _1 : false };
        };
        _path = (_path + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : _u.rawQuery?.__copy__() } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return { _0 : _u, _1 : true };
    }
    @:keep
    static public function _match( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _pattern = ("" : stdgo.GoString);
        var __tmp__ = (_mux._m != null && _mux._m.exists(_path?.__copy__()) ? { _0 : _mux._m[_path?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), _v:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return { _0 : _h = _v._h, _1 : _pattern = _v._pattern?.__copy__() };
        };
        for (__34504 => _e in _mux._es) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_path?.__copy__(), _e._pattern?.__copy__())) {
                return { _0 : _h = _e._h, _1 : _pattern = _e._pattern?.__copy__() };
            };
        };
        return { _0 : _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _1 : _pattern = stdgo.Go.str()?.__copy__() };
    }
}
