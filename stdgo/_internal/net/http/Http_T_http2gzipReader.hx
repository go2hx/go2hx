package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2gzipReader_static_extension.T_http2gzipReader_static_extension) class T_http2gzipReader {
    @:optional
    public var __50 : stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _body : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _zr : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
    public var _zerr : stdgo.Error = (null : stdgo.Error);
    public function new(?__50:stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable, ?_body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_zr:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, ?_zerr:stdgo.Error) {
        if (__50 != null) this.__50 = __50;
        if (_body != null) this._body = _body;
        if (_zr != null) this._zr = _zr;
        if (_zerr != null) this._zerr = _zerr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2gzipReader(__50, _body, _zr, _zerr);
    }
}
