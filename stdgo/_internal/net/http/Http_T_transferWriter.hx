package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension) class T_transferWriter {
    public var method : stdgo.GoString = "";
    public var body : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var bodyCloser : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public var responseToHEAD : Bool = false;
    public var contentLength : stdgo.GoInt64 = 0;
    public var close : Bool = false;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var trailer : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var isResponse : Bool = false;
    public var _bodyReadError : stdgo.Error = (null : stdgo.Error);
    public var flushHeaders : Bool = false;
    public var byteReadCh : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>);
    public function new(?method:stdgo.GoString, ?body:stdgo._internal.io.Io_Reader.Reader, ?bodyCloser:stdgo._internal.io.Io_Closer.Closer, ?responseToHEAD:Bool, ?contentLength:stdgo.GoInt64, ?close:Bool, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?header:stdgo._internal.net.http.Http_Header.Header, ?trailer:stdgo._internal.net.http.Http_Header.Header, ?isResponse:Bool, ?_bodyReadError:stdgo.Error, ?flushHeaders:Bool, ?byteReadCh:stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>) {
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
        if (_bodyReadError != null) this._bodyReadError = _bodyReadError;
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
_bodyReadError,
flushHeaders,
byteReadCh);
    }
}
