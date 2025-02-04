package stdgo._internal.net.http.fcgi;
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_t_response_static_extension.T_response_static_extension) class T_response {
    public var _req : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request> = (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
    public var _header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _code : stdgo.GoInt = 0;
    public var _wroteHeader : Bool = false;
    public var _wroteCGIHeader : Bool = false;
    public var _w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter> = (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter>);
    public function new(?_req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>, ?_header:stdgo._internal.net.http.Http_header.Header, ?_code:stdgo.GoInt, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_bufwriter.T_bufWriter>) {
        if (_req != null) this._req = _req;
        if (_header != null) this._header = _header;
        if (_code != null) this._code = _code;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_wroteCGIHeader != null) this._wroteCGIHeader = _wroteCGIHeader;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_response(_req, _header, _code, _wroteHeader, _wroteCGIHeader, _w);
    }
}
