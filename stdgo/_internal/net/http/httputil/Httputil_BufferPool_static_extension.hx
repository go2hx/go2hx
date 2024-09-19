package stdgo._internal.net.http.httputil;
@:keep class BufferPool_static_extension {
    static public function put(t:BufferPool, _0:stdgo.Slice<stdgo.GoUInt8>):Void t.put(_0);
    static public function get(t:BufferPool):stdgo.Slice<stdgo.GoUInt8> return t.get();
}
