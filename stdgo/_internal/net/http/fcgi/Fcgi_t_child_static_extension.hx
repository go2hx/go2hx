package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_child_asInterface) class T_child_static_extension {
    @:keep
    @:tdfield
    static public function _cleanUp( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        for (__0 => _req in (@:checkr _c ?? throw "null pointer dereference")._requests) {
            if (((@:checkr _req ?? throw "null pointer dereference")._pw != null && (((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__ == null || !((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__))) {
                @:check2r (@:checkr _req ?? throw "null pointer dereference")._pw.closeWithError(stdgo._internal.net.http.fcgi.Fcgi_errconnclosed.errConnClosed);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _serveRequest( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>, _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>, _body:stdgo._internal.io.Io_readcloser.ReadCloser):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        var _r = stdgo._internal.net.http.fcgi.Fcgi__newresponse._newResponse(_c, _req);
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_requestfrommap.requestFromMap((@:checkr _req ?? throw "null pointer dereference")._params), _httpReq:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _r.writeHeader((500 : stdgo.GoInt));
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn._writeRecord((7 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), (@:checkr _req ?? throw "null pointer dereference")._reqId, (_err.error() : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            (@:checkr _httpReq ?? throw "null pointer dereference").body = _body;
            var _withoutUsedEnvVars = stdgo._internal.net.http.fcgi.Fcgi__filteroutusedenvvars._filterOutUsedEnvVars((@:checkr _req ?? throw "null pointer dereference")._params);
            var _envVarCtx = (stdgo._internal.context.Context_withvalue.withValue(@:check2r _httpReq.context(), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey() : stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey))), stdgo.Go.toInterface(_withoutUsedEnvVars)) : stdgo._internal.context.Context_context.Context);
            _httpReq = @:check2r _httpReq.withContext(_envVarCtx);
            (@:checkr _c ?? throw "null pointer dereference")._handler.serveHTTP(stdgo.Go.asInterface(_r), _httpReq);
        };
        @:check2r _r.write((null : stdgo.Slice<stdgo.GoUInt8>));
        @:check2r _r.close();
        @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn._writeEndRequest((@:checkr _req ?? throw "null pointer dereference")._reqId, (0 : stdgo.GoInt), (0 : stdgo.GoUInt8));
        stdgo._internal.io.Io_copyn.copyN(stdgo._internal.io.Io_discard.discard, _body, (104857600i64 : stdgo.GoInt64));
        _body.close();
        if (!(@:checkr _req ?? throw "null pointer dereference")._keepConn) {
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn.close();
        };
    }
    @:keep
    @:tdfield
    static public function _handleRecord( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>, _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> = _c;
        var __tmp__ = ((@:checkr _c ?? throw "null pointer dereference")._requests != null && (@:checkr _c ?? throw "null pointer dereference")._requests.__exists__((@:checkr _rec ?? throw "null pointer dereference")._h.id) ? { _0 : (@:checkr _c ?? throw "null pointer dereference")._requests[(@:checkr _rec ?? throw "null pointer dereference")._h.id], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>), _1 : false }), _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (((!_ok && (@:checkr _rec ?? throw "null pointer dereference")._h.type != ((1 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType)) : Bool) && ((@:checkr _rec ?? throw "null pointer dereference")._h.type != (9 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType)) : Bool)) {
            return (null : stdgo.Error);
        };
        {
            final __value__ = (@:checkr _rec ?? throw "null pointer dereference")._h.type;
            if (__value__ == ((1 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                if ((_req != null && ((_req : Dynamic).__nil__ == null || !(_req : Dynamic).__nil__))) {
                    return stdgo._internal.errors.Errors_new_.new_(("fcgi: received ID that is already in-flight" : stdgo.GoString));
                };
                var _br:stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest = ({} : stdgo._internal.net.http.fcgi.Fcgi_t_beginrequest.T_beginRequest);
                {
                    var _err = (@:check2 _br._read(@:check2r _rec._content()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                if (_br._role != ((1 : stdgo.GoUInt16))) {
                    @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn._writeEndRequest((@:checkr _rec ?? throw "null pointer dereference")._h.id, (0 : stdgo.GoInt), (3 : stdgo.GoUInt8));
                    return (null : stdgo.Error);
                };
                _req = stdgo._internal.net.http.fcgi.Fcgi__newrequest._newRequest((@:checkr _rec ?? throw "null pointer dereference")._h.id, _br._flags);
                (@:checkr _c ?? throw "null pointer dereference")._requests[(@:checkr _rec ?? throw "null pointer dereference")._h.id] = _req;
                return (null : stdgo.Error);
            } else if (__value__ == ((4 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                if (((@:check2r _rec._content().length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _req ?? throw "null pointer dereference")._rawParams = ((@:checkr _req ?? throw "null pointer dereference")._rawParams.__append__(...(@:check2r _rec._content() : Array<stdgo.GoUInt8>)));
                    return (null : stdgo.Error);
                };
                @:check2r _req._parseParams();
                return (null : stdgo.Error);
            } else if (__value__ == ((5 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                var _content = @:check2r _rec._content();
                if (((@:checkr _req ?? throw "null pointer dereference")._pw == null || ((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__)) {
                    var _body:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
                    if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.io.Io_pipe.pipe();
                            _body = stdgo.Go.asInterface(@:tmpset0 __tmp__._0);
                            (@:checkr _req ?? throw "null pointer dereference")._pw = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        _body = stdgo._internal.net.http.fcgi.Fcgi__emptybody._emptyBody;
                    };
                    stdgo.Go.routine(() -> @:check2r _c._serveRequest(_req, _body));
                };
                if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r (@:checkr _req ?? throw "null pointer dereference")._pw.write(_content);
                } else {
                    if ((@:checkr _c ?? throw "null pointer dereference")._requests != null) (@:checkr _c ?? throw "null pointer dereference")._requests.__remove__((@:checkr _req ?? throw "null pointer dereference")._reqId);
                    if (((@:checkr _req ?? throw "null pointer dereference")._pw != null && (((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__ == null || !((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__))) {
                        @:check2r (@:checkr _req ?? throw "null pointer dereference")._pw.close();
                    };
                };
                return (null : stdgo.Error);
            } else if (__value__ == ((9 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                var _values = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    x.set(("FCGI_MPXS_CONNS" : stdgo.GoString), ("1" : stdgo.GoString));
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn._writePairs((10 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), (0 : stdgo.GoUInt16), _values);
                return (null : stdgo.Error);
            } else if (__value__ == ((8 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                return (null : stdgo.Error);
            } else if (__value__ == ((2 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType))) {
                if ((@:checkr _c ?? throw "null pointer dereference")._requests != null) (@:checkr _c ?? throw "null pointer dereference")._requests.__remove__((@:checkr _rec ?? throw "null pointer dereference")._h.id);
                @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn._writeEndRequest((@:checkr _rec ?? throw "null pointer dereference")._h.id, (0 : stdgo.GoInt), (0 : stdgo.GoUInt8));
                if (((@:checkr _req ?? throw "null pointer dereference")._pw != null && (((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__ == null || !((@:checkr _req ?? throw "null pointer dereference")._pw : Dynamic).__nil__))) {
                    @:check2r (@:checkr _req ?? throw "null pointer dereference")._pw.closeWithError(stdgo._internal.net.http.fcgi.Fcgi_errrequestaborted.errRequestAborted);
                };
                if (!(@:checkr _req ?? throw "null pointer dereference")._keepConn) {
                    return stdgo._internal.net.http.fcgi.Fcgi__errcloseconn._errCloseConn;
                };
                return (null : stdgo.Error);
            } else {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b[(0 : stdgo.GoInt)] = ((@:checkr _rec ?? throw "null pointer dereference")._h.type : stdgo.GoUInt8);
                @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn._writeRecord((11 : stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType), (0 : stdgo.GoUInt16), _b);
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
                final __f__ = @:check2r (@:checkr _c ?? throw "null pointer dereference")._conn.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = @:check2r _c._cleanUp;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _rec:stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record = ({} : stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record);
            while (true) {
                {
                    var _err = (@:check2 _rec._read((@:checkr (@:checkr _c ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc) : stdgo.Error);
                    if (_err != null) {
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
                {
                    var _err = (@:check2r _c._handleRecord((stdgo.Go.setRef(_rec) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>)) : stdgo.Error);
                    if (_err != null) {
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
}
