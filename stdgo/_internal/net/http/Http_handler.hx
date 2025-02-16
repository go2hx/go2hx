package stdgo._internal.net.http;
@:interface typedef Handler = stdgo.StructType & {
    @:interfacetypeffun
    function serveHTTP(_0:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _1:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void;
};
