package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_gzipReader_static_extension.T_gzipReader_static_extension) class T_gzipReader {
    @:optional
    public var __88 : stdgo._internal.net.http.Http_T_incomparable.T_incomparable = new stdgo._internal.net.http.Http_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _body : stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>);
    public var _zr : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>);
    public var _zerr : stdgo.Error = (null : stdgo.Error);
    public function new(?__88:stdgo._internal.net.http.Http_T_incomparable.T_incomparable, ?_body:stdgo.Ref<stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal>, ?_zr:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader>, ?_zerr:stdgo.Error) {
        if (__88 != null) this.__88 = __88;
        if (_body != null) this._body = _body;
        if (_zr != null) this._zr = _zr;
        if (_zerr != null) this._zerr = _zerr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gzipReader(__88, _body, _zr, _zerr);
    }
}
