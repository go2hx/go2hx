package stdgo.net.http.cgi;
@:structInit @:using(stdgo.net.http.cgi.Cgi.T_response_static_extension) abstract T_response(stdgo._internal.net.http.cgi.Cgi_T_response.T_response) from stdgo._internal.net.http.cgi.Cgi_T_response.T_response to stdgo._internal.net.http.cgi.Cgi_T_response.T_response {
    public var _req(get, set) : stdgo._internal.net.http.Http_Request.Request;
    function get__req():stdgo._internal.net.http.Http_Request.Request return this._req;
    function set__req(v:stdgo._internal.net.http.Http_Request.Request):stdgo._internal.net.http.Http_Request.Request {
        this._req = (v : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
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
    public var _bufw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bufw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bufw;
    function set__bufw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bufw = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?_req:stdgo._internal.net.http.Http_Request.Request, ?_header:stdgo._internal.net.http.Http_Header.Header, ?_code:StdTypes.Int, ?_wroteHeader:Bool, ?_wroteCGIHeader:Bool, ?_bufw:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.http.cgi.Cgi_T_response.T_response((_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), _header, (_code : stdgo.GoInt), _wroteHeader, _wroteCGIHeader, (_bufw : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
