package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension) class Request {
    public var method : stdgo.GoString = "";
    public var url : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
    public var proto : stdgo.GoString = "";
    public var protoMajor : stdgo.GoInt = 0;
    public var protoMinor : stdgo.GoInt = 0;
    public var header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var body : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var getBody : () -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } = null;
    public var contentLength : stdgo.GoInt64 = 0;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var close : Bool = false;
    public var host : stdgo.GoString = "";
    public var form : stdgo._internal.net.url.Url_Values.Values = (null : stdgo._internal.net.url.Url_Values.Values);
    public var postForm : stdgo._internal.net.url.Url_Values.Values = (null : stdgo._internal.net.url.Url_Values.Values);
    public var multipartForm : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>);
    public var trailer : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var remoteAddr : stdgo.GoString = "";
    public var requestURI : stdgo.GoString = "";
    public var tls : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
    public var cancel : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>);
    public var response : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public function new(?method:stdgo.GoString, ?url:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, ?proto:stdgo.GoString, ?protoMajor:stdgo.GoInt, ?protoMinor:stdgo.GoInt, ?header:stdgo._internal.net.http.Http_Header.Header, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?getBody:() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; }, ?contentLength:stdgo.GoInt64, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?close:Bool, ?host:stdgo.GoString, ?form:stdgo._internal.net.url.Url_Values.Values, ?postForm:stdgo._internal.net.url.Url_Values.Values, ?multipartForm:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Form.Form>, ?trailer:stdgo._internal.net.http.Http_Header.Header, ?remoteAddr:stdgo.GoString, ?requestURI:stdgo.GoString, ?tls:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>, ?cancel:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?response:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, ?_ctx:stdgo._internal.context.Context_Context.Context) {
        if (method != null) this.method = method;
        if (url != null) this.url = url;
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
        if (tls != null) this.tls = tls;
        if (cancel != null) this.cancel = cancel;
        if (response != null) this.response = response;
        if (_ctx != null) this._ctx = _ctx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Request(
method,
url,
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
tls,
cancel,
response,
_ctx);
    }
}
