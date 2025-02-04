package stdgo._internal.net.http.httptest;
@:structInit @:using(stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension) class ResponseRecorder {
    public var code : stdgo.GoInt = 0;
    public var headerMap : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var body : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    public var flushed : Bool = false;
    public var _result : stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
    public var _snapHeader : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _wroteHeader : Bool = false;
    public function new(?code:stdgo.GoInt, ?headerMap:stdgo._internal.net.http.Http_header.Header, ?body:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, ?flushed:Bool, ?_result:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, ?_snapHeader:stdgo._internal.net.http.Http_header.Header, ?_wroteHeader:Bool) {
        if (code != null) this.code = code;
        if (headerMap != null) this.headerMap = headerMap;
        if (body != null) this.body = body;
        if (flushed != null) this.flushed = flushed;
        if (_result != null) this._result = _result;
        if (_snapHeader != null) this._snapHeader = _snapHeader;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ResponseRecorder(code, headerMap, body, flushed, _result, _snapHeader, _wroteHeader);
    }
}
