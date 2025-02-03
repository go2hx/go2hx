package stdgo.net.http.httputil;
class BufferPool_static_extension {
    static public function put(t:stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool, _0:Array<std.UInt>):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.httputil.Httputil_BufferPool_static_extension.BufferPool_static_extension.put(t, _0);
    }
    static public function get(t:stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.httputil.Httputil_BufferPool_static_extension.BufferPool_static_extension.get(t)) i];
    }
}
