package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_child_asInterface) class T_child_static_extension {
    @:keep
    @:tdfield
    static public function _cleanUp( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L325"
        for (__0 => _req in (@:checkr _c ?? throw "null pointer dereference")._requests) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L326"
            if (({
                final value = (@:checkr _req ?? throw "null pointer dereference")._pw;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L329"
                (@:checkr _req ?? throw "null pointer dereference")._pw.closeWithError(stdgo._internal.net.http.fcgi.Fcgi_errconnclosed.errConnClosed);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _serveRequest( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>, _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>, _body:stdgo._internal.io.Io_readcloser.ReadCloser):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        var _r = stdgo._internal.net.http.fcgi.Fcgi__newresponse._newResponse(_c, _req);
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_requestfrommap.requestFromMap((@:checkr _req ?? throw "null pointer dereference")._params), _httpReq:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L293"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L295"
            _r.writeHeader((500 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L296"
            (@:checkr _c ?? throw "null pointer dereference")._conn._writeRecord((7 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), (@:checkr _req ?? throw "null pointer dereference")._reqId, (_err.error() : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            (@:checkr _httpReq ?? throw "null pointer dereference").body = _body;
            var _withoutUsedEnvVars = stdgo._internal.net.http.fcgi.Fcgi__filteroutusedenvvars._filterOutUsedEnvVars((@:checkr _req ?? throw "null pointer dereference")._params);
            var _envVarCtx = (stdgo._internal.context.Context_withvalue.withValue(_httpReq.context(), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey() : stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey))), stdgo.Go.toInterface(_withoutUsedEnvVars)) : stdgo._internal.context.Context_context.Context);
            _httpReq = _httpReq.withContext(_envVarCtx);
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L302"
            (@:checkr _c ?? throw "null pointer dereference")._handler.serveHTTP(stdgo.Go.asInterface(_r), _httpReq);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L305"
        _r.write((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L306"
        _r.close();
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L307"
        (@:checkr _c ?? throw "null pointer dereference")._conn._writeEndRequest((@:checkr _req ?? throw "null pointer dereference")._reqId, (0 : stdgo.GoInt), (0 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L316"
        stdgo._internal.io.Io_copyn.copyN(stdgo._internal.io.Io_discard.discard, _body, (104857600i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L317"
        _body.close();
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L319"
        if (!(@:checkr _req ?? throw "null pointer dereference")._keepConn) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L320"
            (@:checkr _c ?? throw "null pointer dereference")._conn.close();
        };
    }
    @:keep
    @:tdfield
    static public function _handleRecord( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>, _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._requests != null && (@:checkr _c ?? throw "null pointer dereference")._requests.__exists__((@:checkr _rec ?? throw "null pointer dereference")._h.id) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._requests[(@:checkr _rec ?? throw "null pointer dereference")._h.id], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>), _1 : false }), _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L195"
        if (((!_ok && (@:checkr _rec ?? throw "null pointer dereference")._h.type != ((1 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType)) : Bool) && ((@:checkr _rec ?? throw "null pointer dereference")._h.type != (9 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L197"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L200"
        {
            final __value__ = (@:checkr _rec ?? throw "null pointer dereference")._h.type;
            if (__value__ == ((1 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L202"
                if (({
                    final value = _req;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L205"
                    return stdgo._internal.errors.Errors_new_.new_(("fcgi: received ID that is already in-flight" : stdgo.GoString));
                };
                var _br:stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest = ({} : stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L209"
                {
                    var _err = (_br._read(_rec._content()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L210"
                        return _err;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L212"
                if (_br._role != ((1 : stdgo.GoUInt16))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L213"
                    (@:checkr _c ?? throw "null pointer dereference")._conn._writeEndRequest((@:checkr _rec ?? throw "null pointer dereference")._h.id, (0 : stdgo.GoInt), (3 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L214"
                    return (null : stdgo.Error);
                };
                _req = stdgo._internal.net.http.fcgi.Fcgi__newrequest._newRequest((@:checkr _rec ?? throw "null pointer dereference")._h.id, _br._flags);
                (@:checkr _c ?? throw "null pointer dereference")._requests[(@:checkr _rec ?? throw "null pointer dereference")._h.id] = _req;
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L218"
                return (null : stdgo.Error);
            } else if (__value__ == ((4 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L222"
                if (((_rec._content().length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _req ?? throw "null pointer dereference")._rawParams = ((@:checkr _req ?? throw "null pointer dereference")._rawParams.__append__(...(_rec._content() : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L224"
                    return (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L226"
                _req._parseParams();
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L227"
                return (null : stdgo.Error);
            } else if (__value__ == ((5 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                var _content = _rec._content();
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L230"
                if (({
                    final value = (@:checkr _req ?? throw "null pointer dereference")._pw;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    var _body:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L232"
                    if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.io.Io_pipe.pipe();
                            _body = stdgo.Go.asInterface(@:tmpset0 __tmp__._0);
                            (@:checkr _req ?? throw "null pointer dereference")._pw = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        _body = stdgo._internal.net.http.fcgi.Fcgi__emptybody._emptyBody;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L239"
                    {
                        final __tmp__0 = _req;
final __tmp__1 = _body;
                        stdgo.Go.routine(() -> _c._serveRequest(__tmp__0, __tmp__1));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L241"
                if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L244"
                    (@:checkr _req ?? throw "null pointer dereference")._pw.write(_content);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L246"
                    if ((@:checkr _c ?? throw "null pointer dereference")._requests != null) (@:checkr _c ?? throw "null pointer dereference")._requests.__remove__((@:checkr _req ?? throw "null pointer dereference")._reqId);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L247"
                    if (({
                        final value = (@:checkr _req ?? throw "null pointer dereference")._pw;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L248"
                        (@:checkr _req ?? throw "null pointer dereference")._pw.close();
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L251"
                return (null : stdgo.Error);
            } else if (__value__ == ((9 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                var _values = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    x.set(("FCGI_MPXS_CONNS" : stdgo.GoString), ("1" : stdgo.GoString));
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L254"
                (@:checkr _c ?? throw "null pointer dereference")._conn._writePairs((10 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), (0 : stdgo.GoUInt16), _values);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L255"
                return (null : stdgo.Error);
            } else if (__value__ == ((8 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L258"
                return (null : stdgo.Error);
            } else if (__value__ == ((2 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L260"
                if ((@:checkr _c ?? throw "null pointer dereference")._requests != null) (@:checkr _c ?? throw "null pointer dereference")._requests.__remove__((@:checkr _rec ?? throw "null pointer dereference")._h.id);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L261"
                (@:checkr _c ?? throw "null pointer dereference")._conn._writeEndRequest((@:checkr _rec ?? throw "null pointer dereference")._h.id, (0 : stdgo.GoInt), (0 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L262"
                if (({
                    final value = (@:checkr _req ?? throw "null pointer dereference")._pw;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L263"
                    (@:checkr _req ?? throw "null pointer dereference")._pw.closeWithError(stdgo._internal.net.http.fcgi.Fcgi_errrequestaborted.errRequestAborted);
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L265"
                if (!(@:checkr _req ?? throw "null pointer dereference")._keepConn) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L267"
                    return stdgo._internal.net.http.fcgi.Fcgi__errcloseconn._errCloseConn;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L269"
                return (null : stdgo.Error);
            } else {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b[(0 : stdgo.GoInt)] = ((@:checkr _rec ?? throw "null pointer dereference")._h.type : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L273"
                (@:checkr _c ?? throw "null pointer dereference")._conn._writeRecord((11 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), (0 : stdgo.GoUInt16), _b);
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L274"
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _serve( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                final __f__ = (@:checkr _c ?? throw "null pointer dereference")._conn.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = _c._cleanUp;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _rec:stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record = ({} : stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record);
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L171"
            while (true) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L172"
                {
                    var _err = (_rec._read((@:checkr (@:checkr _c ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L173"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L175"
                {
                    var _err = (_c._handleRecord((stdgo.Go.setRef(_rec) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/child.go#L176"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                };
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
}
