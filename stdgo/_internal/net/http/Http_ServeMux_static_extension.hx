package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ServeMux_asInterface) class ServeMux_static_extension {
    @:keep
    @:tdfield
    static public function handleFunc( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        if (_handler == null) {
            throw stdgo.Go.toInterface(("http: nil handler" : stdgo.GoString));
        };
        @:check2r _mux.handle(_pattern?.__copy__(), stdgo.Go.asInterface((_handler : stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc)));
    }
    @:keep
    @:tdfield
    static public function handle( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_Handler.Handler):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_pattern == (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(("http: invalid pattern" : stdgo.GoString));
            };
            if (_handler == null) {
                throw stdgo.Go.toInterface(("http: nil handler" : stdgo.GoString));
            };
            {
                var __tmp__ = ((@:checkr _mux ?? throw "null pointer dereference")._m != null && (@:checkr _mux ?? throw "null pointer dereference")._m.exists(_pattern?.__copy__()) ? { _0 : (@:checkr _mux ?? throw "null pointer dereference")._m[_pattern?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), __34521:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    throw stdgo.Go.toInterface((("http: multiple registrations for " : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString));
                };
            };
            if ((@:checkr _mux ?? throw "null pointer dereference")._m == null) {
                (@:checkr _mux ?? throw "null pointer dereference")._m = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>();
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>);
            };
            var _e = ({ _h : _handler, _pattern : _pattern?.__copy__() } : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry);
            (@:checkr _mux ?? throw "null pointer dereference")._m[_pattern] = _e?.__copy__();
            if (_pattern[((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                (@:checkr _mux ?? throw "null pointer dereference")._es = stdgo._internal.net.http.Http__appendSorted._appendSorted((@:checkr _mux ?? throw "null pointer dereference")._es, _e?.__copy__());
            };
            if (_pattern[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
                (@:checkr _mux ?? throw "null pointer dereference")._hosts = true;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function serveHTTP( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        if ((@:checkr _r ?? throw "null pointer dereference").requestURI == (("*" : stdgo.GoString))) {
            if (@:check2r _r.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            _w.writeHeader((400 : stdgo.GoInt));
            return;
        };
        var __tmp__ = @:check2r _mux.handler(_r), _h:stdgo._internal.net.http.Http_Handler.Handler = __tmp__._0, __34501:stdgo.GoString = __tmp__._1;
        _h.serveHTTP(_w, _r);
    }
    @:keep
    @:tdfield
    static public function _handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _pattern = ("" : stdgo.GoString);
        try {
            @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.rLock();
            {
                final __f__ = @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _mux ?? throw "null pointer dereference")._hosts) {
                {
                    var __tmp__ = @:check2r _mux._match((_host + _path?.__copy__() : stdgo.GoString)?.__copy__());
                    _h = @:tmpset0 __tmp__._0;
                    _pattern = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
            if (_h == null) {
                {
                    var __tmp__ = @:check2r _mux._match(_path?.__copy__());
                    _h = @:tmpset0 __tmp__._0;
                    _pattern = @:tmpset0 __tmp__._1?.__copy__();
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
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _h, _1 : _pattern };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _h, _1 : _pattern };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _h, _1 : _pattern };
            };
        };
    }
    @:keep
    @:tdfield
    static public function handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _pattern = ("" : stdgo.GoString);
        if ((@:checkr _r ?? throw "null pointer dereference").method == (("CONNECT" : stdgo.GoString))) {
            {
                var __tmp__ = @:check2r _mux._redirectToPathSlash((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__(), (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__(), (@:checkr _r ?? throw "null pointer dereference").uRL), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirectHandler.redirectHandler((@:check2r _u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : (@:checkr _u ?? throw "null pointer dereference").path?.__copy__() };
                        _h = __tmp__._0;
                        _pattern = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = @:check2r _mux._handler((@:checkr _r ?? throw "null pointer dereference").host?.__copy__(), (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__());
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        var _host = (stdgo._internal.net.http.Http__stripHostPort._stripHostPort((@:checkr _r ?? throw "null pointer dereference").host?.__copy__())?.__copy__() : stdgo.GoString);
        var _path = (stdgo._internal.net.http.Http__cleanPath._cleanPath((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = @:check2r _mux._redirectToPathSlash(_host?.__copy__(), _path?.__copy__(), (@:checkr _r ?? throw "null pointer dereference").uRL), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirectHandler.redirectHandler((@:check2r _u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : (@:checkr _u ?? throw "null pointer dereference").path?.__copy__() };
                    _h = __tmp__._0;
                    _pattern = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (_path != ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path)) {
            {
                var __tmp__ = @:check2r _mux._handler(_host?.__copy__(), _path?.__copy__());
                _pattern = @:tmpset0 __tmp__._1?.__copy__();
            };
            var _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirectHandler.redirectHandler((@:check2r _u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : _pattern?.__copy__() };
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = @:check2r _mux._handler(_host?.__copy__(), (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__());
            _h = __tmp__._0;
            _pattern = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _shouldRedirectRLocked( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString):Bool {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var _p = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_path?.__copy__(), (_host + _path?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__34497 => _c in _p) {
            {
                var __tmp__ = ((@:checkr _mux ?? throw "null pointer dereference")._m != null && (@:checkr _mux ?? throw "null pointer dereference")._m.exists(_c?.__copy__()) ? { _0 : (@:checkr _mux ?? throw "null pointer dereference")._m[_c?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), __34506:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    return false;
                };
            };
        };
        var _n = (_path.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return false;
        };
        for (__34498 => _c in _p) {
            {
                var __tmp__ = ((@:checkr _mux ?? throw "null pointer dereference")._m != null && (@:checkr _mux ?? throw "null pointer dereference")._m.exists((_c + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) ? { _0 : (@:checkr _mux ?? throw "null pointer dereference")._m[(_c + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), __34507:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    return _path[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((47 : stdgo.GoUInt8));
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _redirectToPathSlash( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : Bool; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.rLock();
        var _shouldRedirect = (@:check2r _mux._shouldRedirectRLocked(_host?.__copy__(), _path?.__copy__()) : Bool);
        @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.rUnlock();
        if (!_shouldRedirect) {
            return { _0 : _u, _1 : false };
        };
        _path = (_path + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : (@:checkr _u ?? throw "null pointer dereference").rawQuery?.__copy__() } : stdgo._internal.net.url.Url_URL.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return { _0 : _u, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _match( _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_Handler.Handler), _pattern = ("" : stdgo.GoString);
        var __tmp__ = ((@:checkr _mux ?? throw "null pointer dereference")._m != null && (@:checkr _mux ?? throw "null pointer dereference")._m.exists(_path?.__copy__()) ? { _0 : (@:checkr _mux ?? throw "null pointer dereference")._m[_path?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry), _1 : false }), _v:stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry = __tmp__._0, _ok:Bool = __tmp__._1;
        if (_ok) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : _v._h, _1 : _v._pattern?.__copy__() };
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        for (__34509 => _e in (@:checkr _mux ?? throw "null pointer dereference")._es) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_path?.__copy__(), _e._pattern?.__copy__())) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : _e._h, _1 : _e._pattern?.__copy__() };
                    _h = __tmp__._0;
                    _pattern = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.Http_Handler.Handler; var _1 : stdgo.GoString; } = { _0 : (null : stdgo._internal.net.http.Http_Handler.Handler), _1 : stdgo.Go.str()?.__copy__() };
            _h = __tmp__._0;
            _pattern = __tmp__._1;
            __tmp__;
        };
    }
}
