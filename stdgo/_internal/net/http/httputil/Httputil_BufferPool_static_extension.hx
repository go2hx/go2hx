package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
@:keep class BufferPool_static_extension {
    @:interfacetypeffun
    static public function put(t:stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool, _0:stdgo.Slice<stdgo.GoUInt8>):Void t.put(_0);
    @:interfacetypeffun
    static public function get(t:stdgo._internal.net.http.httputil.Httputil_BufferPool.BufferPool):stdgo.Slice<stdgo.GoUInt8> return t.get();
}
