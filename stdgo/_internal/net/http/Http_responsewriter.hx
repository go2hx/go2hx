package stdgo._internal.net.http;
@:interface typedef ResponseWriter = stdgo.StructType & {
    @:interfacetypeffun
    function header():stdgo._internal.net.http.Http_header.Header;
    @:interfacetypeffun
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:interfacetypeffun
    function writeHeader(_statusCode:stdgo.GoInt):Void;
};
