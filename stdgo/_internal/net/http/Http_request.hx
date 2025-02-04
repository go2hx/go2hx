package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_request_static_extension.Request_static_extension) class Request {
    public var method : stdgo.GoString = "";
    public var uRL : stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    public var proto : stdgo.GoString = "";
    public var protoMajor : stdgo.GoInt = 0;
    public var protoMinor : stdgo.GoInt = 0;
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var body : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var getBody : () -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } = null;
    public var contentLength : stdgo.GoInt64 = 0;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var close : Bool = false;
    public var host : stdgo.GoString = "";
    public var form : stdgo._internal.net.url.Url_values.Values = (null : stdgo._internal.net.url.Url_values.Values);
    public var postForm : stdgo._internal.net.url.Url_values.Values = (null : stdgo._internal.net.url.Url_values.Values);
    public var multipartForm : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>);
    public var trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var remoteAddr : stdgo.GoString = "";
    public var requestURI : stdgo.GoString = "";
    public var tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public var cancel : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
    public var response : stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
    public function new(?method:stdgo.GoString, ?uRL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, ?proto:stdgo.GoString, ?protoMajor:stdgo.GoInt, ?protoMinor:stdgo.GoInt, ?header:stdgo._internal.net.http.Http_header.Header, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?getBody:() -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; }, ?contentLength:stdgo.GoInt64, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?close:Bool, ?host:stdgo.GoString, ?form:stdgo._internal.net.url.Url_values.Values, ?postForm:stdgo._internal.net.url.Url_values.Values, ?multipartForm:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>, ?trailer:stdgo._internal.net.http.Http_header.Header, ?remoteAddr:stdgo.GoString, ?requestURI:stdgo.GoString, ?tLS:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, ?cancel:stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>, ?response:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) {
        if (method != null) this.method = method;
        if (uRL != null) this.uRL = uRL;
        if (proto != null) this.proto = proto;
        if (protoMajor != null) this.protoMajor = protoMajor;
        if (protoMinor != null) this.protoMinor = protoMinor;
        if (header != null) this.header = header;
        if (body != null) this.body = body;
        if (getBody != null) this.getBody = getBody;
        if (contentLength != null) this.contentLength = contentLength;
        if (transferEncoding != null) this.transferEncoding = transferEncoding;
        if (close != null) this.close = close;
        if (host != null) this.host = host;
        if (form != null) this.form = form;
        if (postForm != null) this.postForm = postForm;
        if (multipartForm != null) this.multipartForm = multipartForm;
        if (trailer != null) this.trailer = trailer;
        if (remoteAddr != null) this.remoteAddr = remoteAddr;
        if (requestURI != null) this.requestURI = requestURI;
        if (tLS != null) this.tLS = tLS;
        if (cancel != null) this.cancel = cancel;
        if (response != null) this.response = response;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Request(
method,
uRL,
proto,
protoMajor,
protoMinor,
header,
body,
getBody,
contentLength,
transferEncoding,
close,
host,
form,
postForm,
multipartForm,
trailer,
remoteAddr,
requestURI,
tLS,
cancel,
response);
    }
}
