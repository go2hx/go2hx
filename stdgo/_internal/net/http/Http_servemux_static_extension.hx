package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ServeMux_asInterface) class ServeMux_static_extension {
    @:keep
    @:tdfield
    static public function handleFunc( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        if (_handler == null) {
            throw stdgo.Go.toInterface(("http: nil handler" : stdgo.GoString));
        };
        @:check2r _mux.handle(_pattern?.__copy__(), stdgo.Go.asInterface((_handler : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc)));
    }
    @:keep
    @:tdfield
    static public function handle( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_handler.Handler):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _mux ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_pattern == ((stdgo.Go.str() : stdgo.GoString))) {
                throw stdgo.Go.toInterface(("http: invalid pattern" : stdgo.GoString));
            };
            if (_handler == null) {
                throw stdgo.Go.toInterface(("http: nil handler" : stdgo.GoString));
            };
            {
                var __tmp__ = ((@:checkr _mux ?? throw "null pointer dereference")._m != null && (@:checkr _mux ?? throw "null pointer dereference")._m.__exists__(_pattern?.__copy__()) ? { _0 : (@:checkr _mux ?? throw "null pointer dereference")._m[_pattern?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry), _1 : false }), __3447:stdgo._internal.net.http.Http_t_muxentry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    throw stdgo.Go.toInterface((("http: multiple registrations for " : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString));
                };
            };
            if ((@:checkr _mux ?? throw "null pointer dereference")._m == null) {
                (@:checkr _mux ?? throw "null pointer dereference")._m = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>();
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>);
            };
            var _e = ({ _h : _handler, _pattern : _pattern?.__copy__() } : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry);
            (@:checkr _mux ?? throw "null pointer dereference")._m[_pattern] = _e?.__copy__();
            if (_pattern[((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                (@:checkr _mux ?? throw "null pointer dereference")._es = stdgo._internal.net.http.Http__appendsorted._appendSorted((@:checkr _mux ?? throw "null pointer dereference")._es, _e?.__copy__());
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
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
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function serveHTTP( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        if ((@:checkr _r ?? throw "null pointer dereference").requestURI == (("*" : stdgo.GoString))) {
            if (@:check2r _r.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            _w.writeHeader((400 : stdgo.GoInt));
            return;
        };
        var __tmp__ = @:check2r _mux.handler(_r), _h:stdgo._internal.net.http.Http_handler.Handler = __tmp__._0, __3427:stdgo.GoString = __tmp__._1;
        _h.serveHTTP(_w, _r);
    }
    @:keep
    @:tdfield
    static public function handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_handler.Handler), _pattern = ("" : stdgo.GoString);
        if ((@:checkr _r ?? throw "null pointer dereference").method == (("CONNECT" : stdgo.GoString))) {
            {
                var __tmp__ = @:check2r _mux._redirectToPathSlash((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__(), (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__(), (@:checkr _r ?? throw "null pointer dereference").uRL), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirecthandler.redirectHandler((@:check2r _u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : (@:checkr _u ?? throw "null pointer dereference").path?.__copy__() };
                        _h = __tmp__._0;
                        _pattern = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            return {
                final __tmp__ = @:check2r _mux._handler((@:checkr _r ?? throw "null pointer dereference").host?.__copy__(), (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__());
                _h = __tmp__._0;
                _pattern = __tmp__._1?.__copy__();
                { _0 : _h, _1 : _pattern };
            };
        };
        var _host = (stdgo._internal.net.http.Http__striphostport._stripHostPort((@:checkr _r ?? throw "null pointer dereference").host?.__copy__())?.__copy__() : stdgo.GoString);
        var _path = (stdgo._internal.net.http.Http__cleanpath._cleanPath((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = @:check2r _mux._redirectToPathSlash(_host?.__copy__(), _path?.__copy__(), (@:checkr _r ?? throw "null pointer dereference").uRL), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirecthandler.redirectHandler((@:check2r _u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : (@:checkr _u ?? throw "null pointer dereference").path?.__copy__() };
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
            var _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").rawQuery?.__copy__() } : stdgo._internal.net.url.Url_url.URL)) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirecthandler.redirectHandler((@:check2r _u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : _pattern?.__copy__() };
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r _mux._handler(_host?.__copy__(), (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__());
            _h = __tmp__._0;
            _pattern = __tmp__._1?.__copy__();
            { _0 : _h, _1 : _pattern };
        };
    }
}
