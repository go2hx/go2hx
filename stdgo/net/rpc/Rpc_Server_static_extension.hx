package stdgo.net.rpc;
class Server_static_extension {
    static public function handleHTTP(_server:Server, _rpcPath:String, _debugPath:String):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _rpcPath = (_rpcPath : stdgo.GoString);
        final _debugPath = (_debugPath : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.handleHTTP(_server, _rpcPath, _debugPath);
    }
    static public function serveHTTP(_server:Server, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveHTTP(_server, _w, _req);
    }
    static public function accept(_server:Server, _lis:stdgo._internal.net.Net_Listener.Listener):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.accept(_server, _lis);
    }
    static public function _readRequestHeader(_server:Server, _codec:ServerCodec):stdgo.Tuple.Tuple5<T_service, T_methodType, Request, Bool, stdgo.Error> {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._readRequestHeader(_server, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function _readRequest(_server:Server, _codec:ServerCodec):{ var _0 : T_service; var _1 : T_methodType; var _2 : Request; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return {
            final obj = stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._readRequest(_server, _codec);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4, _5 : obj._5, _6 : obj._6 };
        };
    }
    static public function _freeResponse(_server:Server, _resp:Response):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _resp = (_resp : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._freeResponse(_server, _resp);
    }
    static public function _getResponse(_server:Server):Response {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._getResponse(_server);
    }
    static public function _freeRequest(_server:Server, _req:Request):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._freeRequest(_server, _req);
    }
    static public function _getRequest(_server:Server):Request {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._getRequest(_server);
    }
    static public function serveRequest(_server:Server, _codec:ServerCodec):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveRequest(_server, _codec);
    }
    static public function serveCodec(_server:Server, _codec:ServerCodec):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveCodec(_server, _codec);
    }
    static public function serveConn(_server:Server, _conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.serveConn(_server, _conn);
    }
    static public function _sendResponse(_server:Server, _sending:stdgo._internal.sync.Sync_Mutex.Mutex, _req:Request, _reply:stdgo.AnyInterface, _codec:ServerCodec, _errmsg:String):Void {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _sending = (_sending : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        final _reply = (_reply : stdgo.AnyInterface);
        final _errmsg = (_errmsg : stdgo.GoString);
        stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._sendResponse(_server, _sending, _req, _reply, _codec, _errmsg);
    }
    static public function _register(_server:Server, _rcvr:stdgo.AnyInterface, _name:String, _useName:Bool):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension._register(_server, _rcvr, _name, _useName);
    }
    static public function registerName(_server:Server, _name:String, _rcvr:stdgo.AnyInterface):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _name = (_name : stdgo.GoString);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.registerName(_server, _name, _rcvr);
    }
    static public function register(_server:Server, _rcvr:stdgo.AnyInterface):stdgo.Error {
        final _server = (_server : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Server.Server>);
        final _rcvr = (_rcvr : stdgo.AnyInterface);
        return stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension.register(_server, _rcvr);
    }
}
