package stdgo._internal.net.http.httputil;
@:keep class BufferPool_static_extension {
    @:interfacetypeffun
    static public function put(t:stdgo._internal.net.http.httputil.Httputil_bufferpool.BufferPool, _0:stdgo.Slice<stdgo.GoUInt8>):Void t.put(_0);
    @:interfacetypeffun
    static public function get(t:stdgo._internal.net.http.httputil.Httputil_bufferpool.BufferPool):stdgo.Slice<stdgo.GoUInt8> return t.get();
}
