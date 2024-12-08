package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.Server_asInterface) class Server_static_extension {
    @:keep
    static public function handleHTTP( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _rpcPath:stdgo.GoString, _debugPath:stdgo.GoString):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        stdgo._internal.net.http.Http_handle.handle(_rpcPath?.__copy__(), stdgo.Go.asInterface(_server));
        stdgo._internal.net.http.Http_handle.handle(_debugPath?.__copy__(), stdgo.Go.asInterface((new stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP(_server) : stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP)));
    }
    @:keep
    static public function serveHTTP( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        if (_req.method != (("CONNECT" : stdgo.GoString))) {
            _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
            _w.writeHeader((405 : stdgo.GoInt));
            stdgo._internal.io.Io_writeString.writeString(_w, ("405 must CONNECT\n" : stdgo.GoString));
            return;
        };
        var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.net.http.Http_Hijacker.Hijacker)) : stdgo._internal.net.http.Http_Hijacker.Hijacker).hijack(), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, __8:stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(("rpc hijacking " : stdgo.GoString)), stdgo.Go.toInterface(_req.remoteAddr), stdgo.Go.toInterface((": " : stdgo.GoString)), stdgo.Go.toInterface(_err.error()));
            return;
        };
        stdgo._internal.io.Io_writeString.writeString(_conn, ((("HTTP/1.0 " : stdgo.GoString) + stdgo._internal.net.rpc.Rpc__connected._connected?.__copy__() : stdgo.GoString) + ("\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        _server.serveConn(_conn);
    }
    @:keep
    static public function accept( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _lis:stdgo._internal.net.Net_Listener.Listener):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        while (true) {
            var __tmp__ = _lis.accept(), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(("rpc.Serve: accept:" : stdgo.GoString)), stdgo.Go.toInterface(_err.error()));
                return;
            };
            stdgo.Go.routine(() -> _server.serveConn(_conn));
        };
    }
    @:keep
    static public function _readRequestHeader( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _svc = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>), _mtype = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>), _req = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>), _keepReading = false, _err = (null : stdgo.Error);
        _req = _server._getRequest();
        _err = _codec.readRequestHeader(_req);
        if (_err != null) {
            _req = null;
            if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF)) : Bool)) {
                return { _0 : _svc, _1 : _mtype, _2 : _req, _3 : _keepReading, _4 : _err };
            };
            _err = stdgo._internal.errors.Errors_new_.new_((("rpc: server cannot decode request: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            return { _0 : _svc, _1 : _mtype, _2 : _req, _3 : _keepReading, _4 : _err };
        };
        _keepReading = true;
        var _dot = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_req.serviceMethod?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        if ((_dot < (0 : stdgo.GoInt) : Bool)) {
            _err = stdgo._internal.errors.Errors_new_.new_((("rpc: service/method request ill-formed: " : stdgo.GoString) + _req.serviceMethod?.__copy__() : stdgo.GoString)?.__copy__());
            return { _0 : _svc, _1 : _mtype, _2 : _req, _3 : _keepReading, _4 : _err };
        };
        var _serviceName = ((_req.serviceMethod.__slice__(0, _dot) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _methodName = ((_req.serviceMethod.__slice__((_dot + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = _server._serviceMap.load(stdgo.Go.toInterface(_serviceName)), _svci:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _err = stdgo._internal.errors.Errors_new_.new_((("rpc: can\'t find service " : stdgo.GoString) + _req.serviceMethod?.__copy__() : stdgo.GoString)?.__copy__());
            return { _0 : _svc, _1 : _mtype, _2 : _req, _3 : _keepReading, _4 : _err };
        };
        _svc = (stdgo.Go.typeAssert((_svci : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
        _mtype = (_svc._method[_methodName] ?? (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>));
        if ((_mtype == null || (_mtype : Dynamic).__nil__)) {
            _err = stdgo._internal.errors.Errors_new_.new_((("rpc: can\'t find method " : stdgo.GoString) + _req.serviceMethod?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return { _0 : _svc, _1 : _mtype, _2 : _req, _3 : _keepReading, _4 : _err };
    }
    @:keep
    static public function _readRequest( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _service = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>), _mtype = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>), _req = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>), _argv = ({} : stdgo._internal.reflect.Reflect_Value.Value), _replyv = ({} : stdgo._internal.reflect.Reflect_Value.Value), _keepReading = false, _err = (null : stdgo.Error);
        {
            var __tmp__ = _server._readRequestHeader(_codec);
            _service = __tmp__._0;
            _mtype = __tmp__._1;
            _req = __tmp__._2;
            _keepReading = __tmp__._3;
            _err = __tmp__._4;
        };
        if (_err != null) {
            if (!_keepReading) {
                return { _0 : _service, _1 : _mtype, _2 : _req, _3 : _argv, _4 : _replyv, _5 : _keepReading, _6 : _err };
            };
            _codec.readRequestBody((null : stdgo.AnyInterface));
            return { _0 : _service, _1 : _mtype, _2 : _req, _3 : _argv, _4 : _replyv, _5 : _keepReading, _6 : _err };
        };
        var _argIsValue = (false : Bool);
        if (_mtype.argType.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _argv = stdgo._internal.reflect.Reflect_new_.new_(_mtype.argType.elem())?.__copy__();
        } else {
            _argv = stdgo._internal.reflect.Reflect_new_.new_(_mtype.argType)?.__copy__();
            _argIsValue = true;
        };
        {
            _err = _codec.readRequestBody(_argv.interface_());
            if (_err != null) {
                return { _0 : _service, _1 : _mtype, _2 : _req, _3 : _argv, _4 : _replyv, _5 : _keepReading, _6 : _err };
            };
        };
        if (_argIsValue) {
            _argv = _argv.elem()?.__copy__();
        };
        _replyv = stdgo._internal.reflect.Reflect_new_.new_(_mtype.replyType.elem())?.__copy__();
        {
            final __value__ = _mtype.replyType.elem().kind();
            if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _replyv.elem().set(stdgo._internal.reflect.Reflect_makeMap.makeMap(_mtype.replyType.elem())?.__copy__());
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _replyv.elem().set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_mtype.replyType.elem(), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
            };
        };
        return { _0 : _service, _1 : _mtype, _2 : _req, _3 : _argv, _4 : _replyv, _5 : _keepReading, _6 : _err };
    }
    @:keep
    static public function _freeResponse( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _resp:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        _server._respLock.lock();
        _resp._next = _server._freeResp;
        _server._freeResp = _resp;
        _server._respLock.unlock();
    }
    @:keep
    static public function _getResponse( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        _server._respLock.lock();
        var _resp = _server._freeResp;
        if ((_resp == null || (_resp : Dynamic).__nil__)) {
            _resp = (stdgo.Go.setRef(({} : stdgo._internal.net.rpc.Rpc_Response.Response)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        } else {
            _server._freeResp = _resp._next;
            {
                var __tmp__ = (new stdgo._internal.net.rpc.Rpc_Response.Response() : stdgo._internal.net.rpc.Rpc_Response.Response);
                var x = (_resp : stdgo._internal.net.rpc.Rpc_Response.Response);
                x.serviceMethod = __tmp__.serviceMethod;
                x.seq = __tmp__.seq;
                x.error = __tmp__.error;
                x._next = __tmp__._next;
            };
        };
        _server._respLock.unlock();
        return _resp;
    }
    @:keep
    static public function _freeRequest( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        _server._reqLock.lock();
        _req._next = _server._freeReq;
        _server._freeReq = _req;
        _server._reqLock.unlock();
    }
    @:keep
    static public function _getRequest( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        _server._reqLock.lock();
        var _req = _server._freeReq;
        if ((_req == null || (_req : Dynamic).__nil__)) {
            _req = (stdgo.Go.setRef(({} : stdgo._internal.net.rpc.Rpc_Request.Request)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        } else {
            _server._freeReq = _req._next;
            {
                var __tmp__ = (new stdgo._internal.net.rpc.Rpc_Request.Request() : stdgo._internal.net.rpc.Rpc_Request.Request);
                var x = (_req : stdgo._internal.net.rpc.Rpc_Request.Request);
                x.serviceMethod = __tmp__.serviceMethod;
                x.seq = __tmp__.seq;
                x._next = __tmp__._next;
            };
        };
        _server._reqLock.unlock();
        return _req;
    }
    @:keep
    static public function serveRequest( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _sending = (stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        var __tmp__ = _server._readRequest(_codec), _service:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service> = __tmp__._0, _mtype:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType> = __tmp__._1, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> = __tmp__._2, _argv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._3, _replyv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._4, _keepReading:Bool = __tmp__._5, _err:stdgo.Error = __tmp__._6;
        if (_err != null) {
            if (!_keepReading) {
                return _err;
            };
            if ((_req != null && ((_req : Dynamic).__nil__ == null || !(_req : Dynamic).__nil__))) {
                _server._sendResponse(_sending, _req, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.rpc.Rpc__invalidRequest._invalidRequest)), _codec, _err.error()?.__copy__());
                _server._freeRequest(_req);
            };
            return _err;
        };
        _service._call(_server, _sending, null, _mtype, _req, _argv?.__copy__(), _replyv?.__copy__(), _codec);
        return (null : stdgo.Error);
    }
    @:keep
    static public function serveCodec( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _sending = (stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        var _wg = (stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        while (true) {
            var __tmp__ = _server._readRequest(_codec), _service:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service> = __tmp__._0, _mtype:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType> = __tmp__._1, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> = __tmp__._2, _argv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._3, _replyv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._4, _keepReading:Bool = __tmp__._5, _err:stdgo.Error = __tmp__._6;
            if (_err != null) {
                if ((stdgo._internal.net.rpc.Rpc__debugLog._debugLog && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                    stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
                if (!_keepReading) {
                    break;
                };
                if ((_req != null && ((_req : Dynamic).__nil__ == null || !(_req : Dynamic).__nil__))) {
                    _server._sendResponse(_sending, _req, stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.rpc.Rpc__invalidRequest._invalidRequest)), _codec, _err.error()?.__copy__());
                    _server._freeRequest(_req);
                };
                continue;
            };
            _wg.add((1 : stdgo.GoInt));
            stdgo.Go.routine(() -> _service._call(_server, _sending, _wg, _mtype, _req, _argv?.__copy__(), _replyv?.__copy__(), _codec));
        };
        _wg.wait_();
        _codec.close();
    }
    @:keep
    static public function serveConn( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _buf = stdgo._internal.bufio.Bufio_newWriter.newWriter(_conn);
        var _srv = (stdgo.Go.setRef(({ _rwc : _conn, _dec : stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(_conn), _enc : stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf)), _encBuf : _buf } : stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobServerCodec.T_gobServerCodec>);
        _server.serveCodec(stdgo.Go.asInterface(_srv));
    }
    @:keep
    static public function _sendResponse( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _reply:stdgo.AnyInterface, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _errmsg:stdgo.GoString):Void {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _resp = _server._getResponse();
        _resp.serviceMethod = _req.serviceMethod?.__copy__();
        if (_errmsg != (stdgo.Go.str())) {
            _resp.error = _errmsg?.__copy__();
            _reply = stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.rpc.Rpc__invalidRequest._invalidRequest));
        };
        _resp.seq = _req.seq;
        _sending.lock();
        var _err = (_codec.writeResponse(_resp, _reply) : stdgo.Error);
        if ((stdgo._internal.net.rpc.Rpc__debugLog._debugLog && (_err != null) : Bool)) {
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("rpc: writing response:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _sending.unlock();
        _server._freeResponse(_resp);
    }
    @:keep
    static public function _register( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _rcvr:stdgo.AnyInterface, _name:stdgo.GoString, _useName:Bool):stdgo.Error {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.net.rpc.Rpc_T_service.T_service)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
        _s._typ = stdgo._internal.reflect.Reflect_typeOf.typeOf(_rcvr);
        _s._rcvr = stdgo._internal.reflect.Reflect_valueOf.valueOf(_rcvr)?.__copy__();
        var _sname = (_name?.__copy__() : stdgo.GoString);
        if (!_useName) {
            _sname = stdgo._internal.reflect.Reflect_indirect.indirect(_s._rcvr?.__copy__()).type().name()?.__copy__();
        };
        if (_sname == (stdgo.Go.str())) {
            var _s = ((("rpc.Register: no service name for type " : stdgo.GoString) + (_s._typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(_s));
            return stdgo._internal.errors.Errors_new_.new_(_s?.__copy__());
        };
        if ((!_useName && !stdgo._internal.go.token.Token_isExported.isExported(_sname?.__copy__()) : Bool)) {
            var _s = (((("rpc.Register: type " : stdgo.GoString) + _sname?.__copy__() : stdgo.GoString) + (" is not exported" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(_s));
            return stdgo._internal.errors.Errors_new_.new_(_s?.__copy__());
        };
        _s._name = _sname?.__copy__();
        _s._method = stdgo._internal.net.rpc.Rpc__suitableMethods._suitableMethods(_s._typ, false);
        if ((_s._method.length) == ((0 : stdgo.GoInt))) {
            var _str = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            var _method = stdgo._internal.net.rpc.Rpc__suitableMethods._suitableMethods(stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_s._typ), false);
            if ((_method.length) != ((0 : stdgo.GoInt))) {
                _str = ((("rpc.Register: type " : stdgo.GoString) + _sname?.__copy__() : stdgo.GoString) + (" has no exported methods of suitable type (hint: pass a pointer to value of that type)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                _str = ((("rpc.Register: type " : stdgo.GoString) + _sname?.__copy__() : stdgo.GoString) + (" has no exported methods of suitable type" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
            stdgo._internal.log.Log_print.print(stdgo.Go.toInterface(_str));
            return stdgo._internal.errors.Errors_new_.new_(_str?.__copy__());
        };
        {
            var __tmp__ = _server._serviceMap.loadOrStore(stdgo.Go.toInterface(_sname), stdgo.Go.toInterface(stdgo.Go.asInterface(_s))), __16:stdgo.AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup) {
                return stdgo._internal.errors.Errors_new_.new_((("rpc: service already defined: " : stdgo.GoString) + _sname?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function registerName( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        return _server._register(_rcvr, _name?.__copy__(), true);
    }
    @:keep
    static public function register( _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>, _rcvr:stdgo.AnyInterface):stdgo.Error {
        @:recv var _server:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server> = _server;
        return _server._register(_rcvr, stdgo.Go.str()?.__copy__(), false);
    }
}
