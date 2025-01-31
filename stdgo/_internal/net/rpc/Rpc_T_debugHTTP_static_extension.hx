package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_debugHTTP_asInterface) class T_debugHTTP_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _server:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _server:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP = _server?.__copy__();
        var _services:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray = new stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray(0, 0);
        @:check2 _server.server._serviceMap.range(function(_snamei:stdgo.AnyInterface, _svci:stdgo.AnyInterface):Bool {
            var _svc = (stdgo.Go.typeAssert((_svci : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
            var _ds = (new stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService(_svc, (stdgo.Go.typeAssert((_snamei : stdgo.GoString)) : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod>((0 : stdgo.GoInt).toBasic(), ((@:checkr _svc ?? throw "null pointer dereference")._method.length), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((@:checkr _svc ?? throw "null pointer dereference")._method.length) ? (0 : stdgo.GoInt).toBasic() : ((@:checkr _svc ?? throw "null pointer dereference")._method.length) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod)]) : stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray)) : stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService);
            for (_mname => _method in (@:checkr _svc ?? throw "null pointer dereference")._method) {
                _ds.method = (_ds.method.__append__((new stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod(_method, _mname?.__copy__()) : stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod)));
            };
            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ds.method));
            _services = (_services.__append__(_ds?.__copy__()));
            return true;
        });
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_services));
        var _err = (@:check2r stdgo._internal.net.rpc.Rpc__debug._debug.execute(_w, stdgo.Go.toInterface(stdgo.Go.asInterface(_services))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(_w, stdgo.Go.toInterface(("rpc: error executing template:" : stdgo.GoString)), stdgo.Go.toInterface(_err.error()));
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _sendResponse( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _1:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _2:stdgo.AnyInterface, _3:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _4:stdgo.GoString):Void return @:_5 __self__._sendResponse(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _register( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.AnyInterface, _1:stdgo.GoString, _2:Bool):stdgo.Error return @:_5 __self__._register(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _readRequestHeader( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return @:_5 __self__._readRequestHeader(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _readRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return @:_5 __self__._readRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _getResponse( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return @:_5 __self__._getResponse();
    @:embedded
    @:embeddededffieldsffun
    public static function _getRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return @:_5 __self__._getRequest();
    @:embedded
    @:embeddededffieldsffun
    public static function _freeResponse( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):Void return @:_5 __self__._freeResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _freeRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):Void return @:_5 __self__._freeRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function serveRequest( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return @:_5 __self__.serveRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function serveConn( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void return @:_5 __self__.serveConn(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function serveCodec( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void return @:_5 __self__.serveCodec(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function registerName( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.GoString, _1:stdgo.AnyInterface):stdgo.Error return @:_5 __self__.registerName(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function register( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.AnyInterface):stdgo.Error return @:_5 __self__.register(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function handleHTTP( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo.GoString, _1:stdgo.GoString):Void return @:_5 __self__.handleHTTP(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function accept( __self__:stdgo._internal.net.rpc.Rpc_T_debugHTTP.T_debugHTTP, _0:stdgo._internal.net.Net_Listener.Listener):Void return @:_5 __self__.accept(_0);
}
