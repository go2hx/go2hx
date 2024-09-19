package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension) class T_populateResponse {
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
    public var _ch : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>);
    public var _wroteHeader : Bool = false;
    public var _hasContent : Bool = false;
    public var _sentResponse : Bool = false;
    public var _pw : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = (null : stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>);
    public function new(?_res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, ?_ch:stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>, ?_wroteHeader:Bool, ?_hasContent:Bool, ?_sentResponse:Bool, ?_pw:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter>) {
        if (_res != null) this._res = _res;
        if (_ch != null) this._ch = _ch;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_hasContent != null) this._hasContent = _hasContent;
        if (_sentResponse != null) this._sentResponse = _sentResponse;
        if (_pw != null) this._pw = _pw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_populateResponse(_res, _ch, _wroteHeader, _hasContent, _sentResponse, _pw);
    }
}
