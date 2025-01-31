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
@:interface typedef ServerCodec = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readRequestHeader(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readRequestBody(_0:stdgo.AnyInterface):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeResponse(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _1:stdgo.AnyInterface):stdgo.Error;
    /**
        Close can be called multiple times and must be idempotent.
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
};
