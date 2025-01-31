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
class T_gobServerCodec_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function writeResponse(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _body:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.writeResponse(_r, _body);
    @:keep
    @:tdfield
    public dynamic function readRequestBody(_body:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.readRequestBody(_body);
    @:keep
    @:tdfield
    public dynamic function readRequestHeader(_r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error return @:_0 __self__.value.readRequestHeader(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.rpc.Rpc_T_gobServerCodecPointer.T_gobServerCodecPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
