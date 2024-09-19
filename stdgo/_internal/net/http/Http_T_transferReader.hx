package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_transferReader_static_extension.T_transferReader_static_extension) class T_transferReader {
    public var header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var statusCode : stdgo.GoInt = 0;
    public var requestMethod : stdgo.GoString = "";
    public var protoMajor : stdgo.GoInt = 0;
    public var protoMinor : stdgo.GoInt = 0;
    public var body : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var contentLength : stdgo.GoInt64 = 0;
    public var chunked : Bool = false;
    public var close : Bool = false;
    public var trailer : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public function new(?header:stdgo._internal.net.http.Http_Header.Header, ?statusCode:stdgo.GoInt, ?requestMethod:stdgo.GoString, ?protoMajor:stdgo.GoInt, ?protoMinor:stdgo.GoInt, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?contentLength:stdgo.GoInt64, ?chunked:Bool, ?close:Bool, ?trailer:stdgo._internal.net.http.Http_Header.Header) {
        if (header != null) this.header = header;
        if (statusCode != null) this.statusCode = statusCode;
        if (requestMethod != null) this.requestMethod = requestMethod;
        if (protoMajor != null) this.protoMajor = protoMajor;
        if (protoMinor != null) this.protoMinor = protoMinor;
        if (body != null) this.body = body;
        if (contentLength != null) this.contentLength = contentLength;
        if (chunked != null) this.chunked = chunked;
        if (close != null) this.close = close;
        if (trailer != null) this.trailer = trailer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_transferReader(header, statusCode, requestMethod, protoMajor, protoMinor, body, contentLength, chunked, close, trailer);
    }
}
