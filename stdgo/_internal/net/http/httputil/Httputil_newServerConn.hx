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
function newServerConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> {
        if ((_r == null || (_r : Dynamic).__nil__)) {
            _r = stdgo._internal.bufio.Bufio_newReader.newReader(_c);
        };
        return (stdgo.Go.setRef(({ _c : _c, _r : _r, _pipereq : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>) } : stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
    }
