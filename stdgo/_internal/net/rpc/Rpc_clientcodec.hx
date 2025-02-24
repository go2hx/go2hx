package stdgo._internal.net.rpc;
@:interface typedef ClientCodec = stdgo.StructType & {
    @:interfacetypeffun
    function writeRequest(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>, _1:stdgo.AnyInterface):stdgo.Error;
    @:interfacetypeffun
    function readResponseHeader(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>):stdgo.Error;
    @:interfacetypeffun
    function readResponseBody(_0:stdgo.AnyInterface):stdgo.Error;
    @:interfacetypeffun
    function close():stdgo.Error;
};
