package stdgo._internal.net.http.httptrace;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_ClientTrace_static_extension.ClientTrace_static_extension) class ClientTrace {
    public var getConn : stdgo.GoString -> Void = null;
    public var gotConn : stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo -> Void = null;
    public var putIdleConn : stdgo.Error -> Void = null;
    public var gotFirstResponseByte : () -> Void = null;
    public var got100Continue : () -> Void = null;
    public var got1xxResponse : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error = null;
    public var dnsstart : stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo -> Void = null;
    public var dnsdone : stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo -> Void = null;
    public var connectStart : (stdgo.GoString, stdgo.GoString) -> Void = null;
    public var connectDone : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void = null;
    public var tlshandshakeStart : () -> Void = null;
    public var tlshandshakeDone : (stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Error) -> Void = null;
    public var wroteHeaderField : (stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void = null;
    public var wroteHeaders : () -> Void = null;
    public var wait100Continue : () -> Void = null;
    public var wroteRequest : stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo -> Void = null;
    public function new(?getConn:stdgo.GoString -> Void, ?gotConn:stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo -> Void, ?putIdleConn:stdgo.Error -> Void, ?gotFirstResponseByte:() -> Void, ?got100Continue:() -> Void, ?got1xxResponse:(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error, ?dnsstart:stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo -> Void, ?dnsdone:stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void, ?tlshandshakeStart:() -> Void, ?tlshandshakeDone:(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, stdgo.Error) -> Void, ?wroteHeaderField:(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void, ?wroteHeaders:() -> Void, ?wait100Continue:() -> Void, ?wroteRequest:stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo -> Void) {
        if (getConn != null) this.getConn = getConn;
        if (gotConn != null) this.gotConn = gotConn;
        if (putIdleConn != null) this.putIdleConn = putIdleConn;
        if (gotFirstResponseByte != null) this.gotFirstResponseByte = gotFirstResponseByte;
        if (got100Continue != null) this.got100Continue = got100Continue;
        if (got1xxResponse != null) this.got1xxResponse = got1xxResponse;
        if (dnsstart != null) this.dnsstart = dnsstart;
        if (dnsdone != null) this.dnsdone = dnsdone;
        if (connectStart != null) this.connectStart = connectStart;
        if (connectDone != null) this.connectDone = connectDone;
        if (tlshandshakeStart != null) this.tlshandshakeStart = tlshandshakeStart;
        if (tlshandshakeDone != null) this.tlshandshakeDone = tlshandshakeDone;
        if (wroteHeaderField != null) this.wroteHeaderField = wroteHeaderField;
        if (wroteHeaders != null) this.wroteHeaders = wroteHeaders;
        if (wait100Continue != null) this.wait100Continue = wait100Continue;
        if (wroteRequest != null) this.wroteRequest = wroteRequest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ClientTrace(
getConn,
gotConn,
putIdleConn,
gotFirstResponseByte,
got100Continue,
got1xxResponse,
dnsstart,
dnsdone,
connectStart,
connectDone,
tlshandshakeStart,
tlshandshakeDone,
wroteHeaderField,
wroteHeaders,
wait100Continue,
wroteRequest);
    }
}
