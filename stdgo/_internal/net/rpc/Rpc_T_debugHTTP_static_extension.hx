package stdgo._internal.net.rpc;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_debugHTTP_asInterface) class T_debugHTTP_static_extension {
    @:keep
    static public function serveHTTP( _server:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _server:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP = _server?.__copy__();
        var _services:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray = new stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray(0, 0);
        _server.server._serviceMap.range(function(_snamei:stdgo.AnyInterface, _svci:stdgo.AnyInterface):Bool {
            var _svc = (stdgo.Go.typeAssert((_svci : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
            var _ds = (new stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService(_svc, (stdgo.Go.typeAssert((_snamei : stdgo.GoString)) : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod>((0 : stdgo.GoInt).toBasic(), (_svc._method.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (_svc._method.length) ? (0 : stdgo.GoInt).toBasic() : (_svc._method.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod)]) : stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray)) : stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService);
            for (_mname => _method in _svc._method) {
                _ds.method = (_ds.method.__append__((new stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod(_method, _mname?.__copy__()) : stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod)));
            };
            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ds.method));
            _services = (_services.__append__(_ds?.__copy__()));
            return true;
        });
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_services));
        var _err = (stdgo._internal.net.rpc.Rpc__debug._debug.execute(_w, stdgo.Go.toInterface(stdgo.Go.asInterface(_services))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(("rpc: error executing template:" : stdgo.GoString)), stdgo.Go.toInterface(_err.error()));
        };
    }
    @:embedded
    public static function _sendResponse( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _sending:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _req:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _reply:stdgo.AnyInterface, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _errmsg:stdgo.GoString) __self__._sendResponse(_sending, _req, _reply, _codec, _errmsg);
    @:embedded
    public static function _register( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _rcvr:stdgo.AnyInterface, _name:stdgo.GoString, _useName:Bool):stdgo.Error return __self__._register(_rcvr, _name, _useName);
    @:embedded
    public static function _readRequestHeader( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return __self__._readRequestHeader(_codec);
    @:embedded
    public static function _readRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return __self__._readRequest(_codec);
    @:embedded
    public static function _getResponse( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return __self__._getResponse();
    @:embedded
    public static function _getRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return __self__._getRequest();
    @:embedded
    public static function _freeResponse( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, __0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>) __self__._freeResponse(__0);
    @:embedded
    public static function _freeRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, __0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>) __self__._freeRequest(__0);
    @:embedded
    public static function serveRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return __self__.serveRequest(_codec);
    @:embedded
    public static function serveConn( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) __self__.serveConn(_conn);
    @:embedded
    public static function serveCodec( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _codec:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec) __self__.serveCodec(_codec);
    @:embedded
    public static function registerName( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error return __self__.registerName(_name, _rcvr);
    @:embedded
    public static function register( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, __0:stdgo.AnyInterface):stdgo.Error return __self__.register(__0);
    @:embedded
    public static function handleHTTP( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _network:stdgo.GoString, _address:stdgo.GoString) __self__.handleHTTP(_network, _address);
    @:embedded
    public static function accept( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _lis:stdgo._internal.net.Net_Listener.Listener) __self__.accept(_lis);
}
