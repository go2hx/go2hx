package stdgo._internal.net.rpc;
@:interface typedef ServerCodec = stdgo.StructType & {
    @:interfacetypeffun
    function readRequestHeader(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error;
    @:interfacetypeffun
    function readRequestBody(_0:stdgo.AnyInterface):stdgo.Error;
    @:interfacetypeffun
    function writeResponse(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _1:stdgo.AnyInterface):stdgo.Error;
    @:interfacetypeffun
    function close():stdgo.Error;
};
