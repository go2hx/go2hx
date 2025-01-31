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
class T_debugHTTP_asInterface {
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value.serveHTTP(_w, _req);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _sendResponse(_0:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _1:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _2:stdgo.AnyInterface, _3:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec, _4:stdgo.GoString):Void @:_0 __self__.value._sendResponse(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _register(_0:stdgo.AnyInterface, _1:stdgo.GoString, _2:Bool):stdgo.Error return @:_0 __self__.value._register(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readRequestHeader(_0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : Bool; var _4 : stdgo.Error; } return @:_0 __self__.value._readRequestHeader(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readRequest(_0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>; var _1 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>; var _2 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>; var _3 : stdgo._internal.reflect.Reflect_Value.Value; var _4 : stdgo._internal.reflect.Reflect_Value.Value; var _5 : Bool; var _6 : stdgo.Error; } return @:_0 __self__.value._readRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _getResponse():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> return @:_0 __self__.value._getResponse();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _getRequest():stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> return @:_0 __self__.value._getRequest();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _freeResponse(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):Void @:_0 __self__.value._freeResponse(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _freeRequest(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):Void @:_0 __self__.value._freeRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function serveRequest(_0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):stdgo.Error return @:_0 __self__.value.serveRequest(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function serveConn(_0:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):Void @:_0 __self__.value.serveConn(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function serveCodec(_0:stdgo._internal.net.rpc.Rpc_ServerCodec.ServerCodec):Void @:_0 __self__.value.serveCodec(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function registerName(_0:stdgo.GoString, _1:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.registerName(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function register(_0:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.register(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function handleHTTP(_0:stdgo.GoString, _1:stdgo.GoString):Void @:_0 __self__.value.handleHTTP(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function accept(_0:stdgo._internal.net.Net_Listener.Listener):Void @:_0 __self__.value.accept(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.Rpc_T_debugHTTPPointer.T_debugHTTPPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
