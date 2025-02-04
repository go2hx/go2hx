package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_response_static_extension.Response_static_extension) class Response {
    public var status : stdgo.GoString = "";
    public var statusCode : stdgo.GoInt = 0;
    public var proto : stdgo.GoString = "";
    public var protoMajor : stdgo.GoInt = 0;
    public var protoMinor : stdgo.GoInt = 0;
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var body : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var contentLength : stdgo.GoInt64 = 0;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var close : Bool = false;
    public var uncompressed : Bool = false;
    public var trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var request : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public var tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public function new(?status:stdgo.GoString, ?statusCode:stdgo.GoInt, ?proto:stdgo.GoString, ?protoMajor:stdgo.GoInt, ?protoMinor:stdgo.GoInt, ?header:stdgo._internal.net.http.Http_header.Header, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?contentLength:stdgo.GoInt64, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?close:Bool, ?uncompressed:Bool, ?trailer:stdgo._internal.net.http.Http_header.Header, ?request:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, ?tLS:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>) {
        if (status != null) this.status = status;
        if (statusCode != null) this.statusCode = statusCode;
        if (proto != null) this.proto = proto;
        if (protoMajor != null) this.protoMajor = protoMajor;
        if (protoMinor != null) this.protoMinor = protoMinor;
        if (header != null) this.header = header;
        if (body != null) this.body = body;
        if (contentLength != null) this.contentLength = contentLength;
        if (transferEncoding != null) this.transferEncoding = transferEncoding;
        if (close != null) this.close = close;
        if (uncompressed != null) this.uncompressed = uncompressed;
        if (trailer != null) this.trailer = trailer;
        if (request != null) this.request = request;
        if (tLS != null) this.tLS = tLS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Response(
status,
statusCode,
proto,
protoMajor,
protoMinor,
header,
body,
contentLength,
transferEncoding,
close,
uncompressed,
trailer,
request,
tLS);
    }
}
