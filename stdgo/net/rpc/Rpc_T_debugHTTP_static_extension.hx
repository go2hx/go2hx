package stdgo.net.rpc;
class T_debugHTTP_static_extension {
    static public function serveHTTP(_server:T_debugHTTP, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveHTTP(_server, _w, _req);
    }
    public static function _sendResponse(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.sync.Sync_Mutex.Mutex, _1:Request, _2:stdgo.AnyInterface, _3:ServerCodec, _4:String):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        final _2 = (_2 : stdgo.AnyInterface);
        final _4 = (_4 : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._sendResponse(__self__, _0, _1, _2, _3, _4);
    }
    public static function _register(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.AnyInterface, _1:String, _2:Bool):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._register(__self__, _0, _1, _2);
    }
    public static function _readRequestHeader(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:ServerCodec):stdgo.Tuple.Tuple5<T_service, T_methodType, Request, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._readRequestHeader(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _readRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:ServerCodec):{ var _0 : T_service; var _1 : T_methodType; var _2 : Request; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        return {
            final obj = stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._readRequest(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6 };
        };
    }
    public static function _getResponse(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):Response {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._getResponse(__self__);
    }
    public static function _getRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):Request {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._getRequest(__self__);
    }
    public static function _freeResponse(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:Response):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._freeResponse(__self__, _0);
    }
    public static function _freeRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:Request):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension._freeRequest(__self__, _0);
    }
    public static function serveRequest(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:ServerCodec):stdgo.Error {
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveRequest(__self__, _0);
    }
    public static function serveConn(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveConn(__self__, _0);
    }
    public static function serveCodec(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:ServerCodec):Void {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.serveCodec(__self__, _0);
    }
    public static function registerName(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:String, _1:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.registerName(__self__, _0, _1);
    }
    public static function register(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.AnyInterface):stdgo.Error {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.register(__self__, _0);
    }
    public static function handleHTTP(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.handleHTTP(__self__, _0, _1);
    }
    public static function accept(__self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.net.Net_Listener.Listener):Void {
        stdgo._internal.net.rpc.Rpc_T_debugHTTP_static_extension.T_debugHTTP_static_extension.accept(__self__, _0);
    }
}
