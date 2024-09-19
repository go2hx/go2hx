package stdgo._internal.net.http.cgi;
@:structInit @:using(stdgo._internal.net.http.cgi.Cgi_T_response_static_extension.T_response_static_extension) class T_response {
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _header : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _code : stdgo.GoInt = 0;
    public var _wroteHeader : Bool = false;
    public var _wroteCGIHeader : Bool = false;
    public var _bufw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public function new(?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_header:stdgo._internal.net.http.Http_Header.Header, ?_code:stdgo.GoInt, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_bufw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>) {
        if (_req != null) this._req = _req;
        if (_header != null) this._header = _header;
        if (_code != null) this._code = _code;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_wroteCGIHeader != null) this._wroteCGIHeader = _wroteCGIHeader;
        if (_bufw != null) this._bufw = _bufw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_response(_req, _header, _code, _wroteHeader, _wroteCGIHeader, _bufw);
    }
}