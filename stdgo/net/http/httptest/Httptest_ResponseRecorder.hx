package stdgo.net.http.httptest;
@:structInit @:using(stdgo.net.http.httptest.Httptest.ResponseRecorder_static_extension) abstract ResponseRecorder(stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder) from stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder to stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder {
    public var code(get, set) : StdTypes.Int;
    function get_code():StdTypes.Int return this.code;
    function set_code(v:StdTypes.Int):StdTypes.Int {
        this.code = (v : stdgo.GoInt);
        return v;
    }
    public var headerMap(get, set) : stdgo._internal.net.http.Http_Header.Header;
    function get_headerMap():stdgo._internal.net.http.Http_Header.Header return this.headerMap;
    function set_headerMap(v:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        this.headerMap = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_body():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.body;
    function set_body(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.body = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return v;
    }
    public var flushed(get, set) : Bool;
    function get_flushed():Bool return this.flushed;
    function set_flushed(v:Bool):Bool {
        this.flushed = v;
        return v;
    }
    public var _result(get, set) : stdgo._internal.net.http.Http_Response.Response;
    function get__result():stdgo._internal.net.http.Http_Response.Response return this._result;
    function set__result(v:stdgo._internal.net.http.Http_Response.Response):stdgo._internal.net.http.Http_Response.Response {
        this._result = (v : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return v;
    }
    public var _snapHeader(get, set) : stdgo._internal.net.http.Http_Header.Header;
    function get__snapHeader():stdgo._internal.net.http.Http_Header.Header return this._snapHeader;
    function set__snapHeader(v:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        this._snapHeader = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public function new(?code:StdTypes.Int, ?headerMap:stdgo._internal.net.http.Http_Header.Header, ?body:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?flushed:Bool, ?_result:stdgo._internal.net.http.Http_Response.Response, ?_snapHeader:stdgo._internal.net.http.Http_Header.Header, ?_wroteHeader:Bool) this = new stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder((code : stdgo.GoInt), headerMap, (body : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), flushed, (_result : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _snapHeader, _wroteHeader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
