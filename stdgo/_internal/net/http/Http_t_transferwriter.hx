package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_transferwriter_static_extension.T_transferWriter_static_extension) class T_transferWriter {
    public var method : stdgo.GoString = "";
    public var body : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var bodyCloser : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public var responseToHEAD : Bool = false;
    public var contentLength : stdgo.GoInt64 = 0;
    public var close : Bool = false;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var isResponse : Bool = false;
    public var flushHeaders : Bool = false;
    public var byteReadCh : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>);
    public function new(?method:stdgo.GoString, ?body:stdgo._internal.io.Io_reader.Reader, ?bodyCloser:stdgo._internal.io.Io_closer.Closer, ?responseToHEAD:Bool, ?contentLength:stdgo.GoInt64, ?close:Bool, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?header:stdgo._internal.net.http.Http_header.Header, ?trailer:stdgo._internal.net.http.Http_header.Header, ?isResponse:Bool, ?flushHeaders:Bool, ?byteReadCh:stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>) {
        if (method != null) this.method = method;
        if (body != null) this.body = body;
        if (bodyCloser != null) this.bodyCloser = bodyCloser;
        if (responseToHEAD != null) this.responseToHEAD = responseToHEAD;
        if (contentLength != null) this.contentLength = contentLength;
        if (close != null) this.close = close;
        if (transferEncoding != null) this.transferEncoding = transferEncoding;
        if (header != null) this.header = header;
        if (trailer != null) this.trailer = trailer;
        if (isResponse != null) this.isResponse = isResponse;
        if (flushHeaders != null) this.flushHeaders = flushHeaders;
        if (byteReadCh != null) this.byteReadCh = byteReadCh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_transferWriter(
method,
body,
bodyCloser,
responseToHEAD,
contentLength,
close,
transferEncoding,
header,
trailer,
isResponse,
flushHeaders,
byteReadCh);
    }
}
