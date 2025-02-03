package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_response_static_extension) abstract T_response(stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response) from stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response to stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response {
    public var _req(get, set) : T_request;
    function get__req():T_request return this._req;
    function set__req(v:T_request):T_request {
        this._req = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>);
        return v;
    }
    public var _header(get, set) : stdgo._internal.net.http.Http_Header.Header;
    function get__header():stdgo._internal.net.http.Http_Header.Header return this._header;
    function set__header(v:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        this._header = v;
        return v;
    }
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = (v : stdgo.GoInt);
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _wroteCGIHeader(get, set) : Bool;
    function get__wroteCGIHeader():Bool return this._wroteCGIHeader;
    function set__wroteCGIHeader(v:Bool):Bool {
        this._wroteCGIHeader = v;
        return v;
    }
    public var _w(get, set) : T_bufWriter;
    function get__w():T_bufWriter return this._w;
    function set__w(v:T_bufWriter):T_bufWriter {
        this._w = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter>);
        return v;
    }
    public function new(?_req:T_request, ?_header:stdgo._internal.net.http.Http_Header.Header, ?_code:StdTypes.Int, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_w:T_bufWriter) this = new stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response((_req : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>), _header, (_code : stdgo.GoInt), _wroteHeader, _wroteCGIHeader, (_w : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
