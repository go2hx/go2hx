package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_child_asInterface) class T_child_static_extension {
    @:keep
    static public function _cleanUp( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child> = _c;
        for (__0 => _req in _c._requests) {
            if ((_req._pw != null && ((_req._pw : Dynamic).__nil__ == null || !(_req._pw : Dynamic).__nil__))) {
                _req._pw.closeWithError(stdgo._internal.net.http.fcgi.Fcgi_errConnClosed.errConnClosed);
            };
        };
    }
    @:keep
    static public function _serveRequest( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>, _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>, _body:stdgo._internal.io.Io_ReadCloser.ReadCloser):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child> = _c;
        var _r = stdgo._internal.net.http.fcgi.Fcgi__newResponse._newResponse(_c, _req);
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_requestFromMap.requestFromMap(_req._params), _httpReq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _r.writeHeader((500 : stdgo.GoInt));
            _c._conn._writeRecord((7 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType), _req._reqId, (_err.error() : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            _httpReq.body = _body;
            var _withoutUsedEnvVars = stdgo._internal.net.http.fcgi.Fcgi__filterOutUsedEnvVars._filterOutUsedEnvVars(_req._params);
            var _envVarCtx = (stdgo._internal.context.Context_withValue.withValue(_httpReq.context(), stdgo.Go.toInterface((new stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey() : stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey)), stdgo.Go.toInterface(_withoutUsedEnvVars)) : stdgo._internal.context.Context_Context.Context);
            _httpReq = _httpReq.withContext(_envVarCtx);
            _c._handler.serveHTTP(stdgo.Go.asInterface(_r), _httpReq);
        };
        _r.write((null : stdgo.Slice<stdgo.GoUInt8>));
        _r.close();
        _c._conn._writeEndRequest(_req._reqId, (0 : stdgo.GoInt), (0 : stdgo.GoUInt8));
        stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, _body, (104857600i64 : stdgo.GoInt64));
        _body.close();
        if (!_req._keepConn) {
            _c._conn.close();
        };
    }
    @:keep
    static public function _handleRecord( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>, _rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child> = _c;
        var __tmp__ = (_c._requests != null && _c._requests.exists(_rec._h.id) ? { _0 : _c._requests[_rec._h.id], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>), _1 : false }), _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (((!_ok && _rec._h.type != ((1 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType)) : Bool) && (_rec._h.type != (9 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType)) : Bool)) {
            return (null : stdgo.Error);
        };
        {
            final __value__ = _rec._h.type;
            if (__value__ == ((1 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType))) {
                if ((_req != null && ((_req : Dynamic).__nil__ == null || !(_req : Dynamic).__nil__))) {
                    return stdgo._internal.errors.Errors_new_.new_(("fcgi: received ID that is already in-flight" : stdgo.GoString));
                };
                var _br:stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest = ({} : stdgo._internal.net.http.fcgi.Fcgi_T_beginRequest.T_beginRequest);
                {
                    var _err = (_br._read(_rec._content()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                if (_br._role != ((1 : stdgo.GoUInt16))) {
                    _c._conn._writeEndRequest(_rec._h.id, (0 : stdgo.GoInt), (3 : stdgo.GoUInt8));
                    return (null : stdgo.Error);
                };
                _req = stdgo._internal.net.http.fcgi.Fcgi__newRequest._newRequest(_rec._h.id, _br._flags);
                _c._requests[_rec._h.id] = _req;
                return (null : stdgo.Error);
            } else if (__value__ == ((4 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType))) {
                if (((_rec._content().length) > (0 : stdgo.GoInt) : Bool)) {
                    _req._rawParams = (_req._rawParams.__append__(...(_rec._content() : Array<stdgo.GoUInt8>)));
                    return (null : stdgo.Error);
                };
                _req._parseParams();
                return (null : stdgo.Error);
            } else if (__value__ == ((5 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType))) {
                var _content = _rec._content();
                if ((_req._pw == null || (_req._pw : Dynamic).__nil__)) {
                    var _body:stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
                    if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.io.Io_pipe.pipe();
                            _body = stdgo.Go.asInterface(__tmp__._0);
                            _req._pw = __tmp__._1;
                        };
                    } else {
                        _body = stdgo._internal.net.http.fcgi.Fcgi__emptyBody._emptyBody;
                    };
                    stdgo.Go.routine(() -> _c._serveRequest(_req, _body));
                };
                if (((_content.length) > (0 : stdgo.GoInt) : Bool)) {
                    _req._pw.write(_content);
                } else {
                    if (_c._requests != null) _c._requests.remove(_req._reqId);
                    if ((_req._pw != null && ((_req._pw : Dynamic).__nil__ == null || !(_req._pw : Dynamic).__nil__))) {
                        _req._pw.close();
                    };
                };
                return (null : stdgo.Error);
            } else if (__value__ == ((9 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType))) {
                var _values = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    x.set(("FCGI_MPXS_CONNS" : stdgo.GoString), ("1" : stdgo.GoString));
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                _c._conn._writePairs((10 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType), (0 : stdgo.GoUInt16), _values);
                return (null : stdgo.Error);
            } else if (__value__ == ((8 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType))) {
                return (null : stdgo.Error);
            } else if (__value__ == ((2 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType))) {
                if (_c._requests != null) _c._requests.remove(_rec._h.id);
                _c._conn._writeEndRequest(_rec._h.id, (0 : stdgo.GoInt), (0 : stdgo.GoUInt8));
                if ((_req._pw != null && ((_req._pw : Dynamic).__nil__ == null || !(_req._pw : Dynamic).__nil__))) {
                    _req._pw.closeWithError(stdgo._internal.net.http.fcgi.Fcgi_errRequestAborted.errRequestAborted);
                };
                if (!_req._keepConn) {
                    return stdgo._internal.net.http.fcgi.Fcgi__errCloseConn._errCloseConn;
                };
                return (null : stdgo.Error);
            } else {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b[(0 : stdgo.GoInt)] = (_rec._h.type : stdgo.GoUInt8);
                _c._conn._writeRecord((11 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType), (0 : stdgo.GoUInt16), _b);
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    static public function _serve( _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _c._conn.close());
            __deferstack__.unshift(() -> _c._cleanUp());
            var _rec:stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record = ({} : stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record);
            while (true) {
                {
                    var _err = (_rec._read(_c._conn._rwc) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                };
                {
                    var _err = (_c._handleRecord((stdgo.Go.setRef(_rec) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>)) : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                };
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
}
