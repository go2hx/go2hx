package stdgo._internal.net.http.httptrace;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_clienttrace_static_extension.ClientTrace_static_extension) class ClientTrace {
    public var getConn : stdgo.GoString -> Void = null;
    public var gotConn : stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void = null;
    public var putIdleConn : stdgo.Error -> Void = null;
    public var gotFirstResponseByte : () -> Void = null;
    public var got100Continue : () -> Void = null;
    public var got1xxResponse : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error = null;
    public var dNSStart : stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void = null;
    public var dNSDone : stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void = null;
    public var connectStart : (stdgo.GoString, stdgo.GoString) -> Void = null;
    public var connectDone : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void = null;
    public var tLSHandshakeStart : () -> Void = null;
    public var tLSHandshakeDone : (stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void = null;
    public var wroteHeaderField : (stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void = null;
    public var wroteHeaders : () -> Void = null;
    public var wait100Continue : () -> Void = null;
    public var wroteRequest : stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void = null;
    public function new(?getConn:stdgo.GoString -> Void, ?gotConn:stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void, ?putIdleConn:stdgo.Error -> Void, ?gotFirstResponseByte:() -> Void, ?got100Continue:() -> Void, ?got1xxResponse:(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error, ?dNSStart:stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void, ?dNSDone:stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void, ?tLSHandshakeStart:() -> Void, ?tLSHandshakeDone:(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void, ?wroteHeaderField:(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void, ?wroteHeaders:() -> Void, ?wait100Continue:() -> Void, ?wroteRequest:stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void) {
        if (getConn != null) this.getConn = getConn;
        if (gotConn != null) this.gotConn = gotConn;
        if (putIdleConn != null) this.putIdleConn = putIdleConn;
        if (gotFirstResponseByte != null) this.gotFirstResponseByte = gotFirstResponseByte;
        if (got100Continue != null) this.got100Continue = got100Continue;
        if (got1xxResponse != null) this.got1xxResponse = got1xxResponse;
        if (dNSStart != null) this.dNSStart = dNSStart;
        if (dNSDone != null) this.dNSDone = dNSDone;
        if (connectStart != null) this.connectStart = connectStart;
        if (connectDone != null) this.connectDone = connectDone;
        if (tLSHandshakeStart != null) this.tLSHandshakeStart = tLSHandshakeStart;
        if (tLSHandshakeDone != null) this.tLSHandshakeDone = tLSHandshakeDone;
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
dNSStart,
dNSDone,
connectStart,
connectDone,
tLSHandshakeStart,
tLSHandshakeDone,
wroteHeaderField,
wroteHeaders,
wait100Continue,
wroteRequest);
    }
}
