package stdgo._internal.net.http;
@:interface typedef RoundTripper = stdgo.StructType & {
    @:interfacetypeffun
    function roundTrip(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; };
};
