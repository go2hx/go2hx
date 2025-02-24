package stdgo._internal.net.http.httputil;
@:interface typedef BufferPool = stdgo.StructType & {
    @:interfacetypeffun
    function get():stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function put(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
};
