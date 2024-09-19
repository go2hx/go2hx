package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_populateResponse_asInterface) class T_populateResponse_static_extension {
    @:keep
    static public function write( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!_pr._wroteHeader) {
            _pr.writeHeader((200 : stdgo.GoInt));
        };
        _pr._hasContent = true;
        if (!_pr._sentResponse) {
            _pr._sendResponse();
        };
        return _pr._pw.write(_p);
    }
    @:keep
    static public function writeHeader( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>, _code:stdgo.GoInt):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        if (_pr._wroteHeader) {
            return;
        };
        _pr._wroteHeader = true;
        _pr._res.statusCode = _code;
        _pr._res.status = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_code)))?.__copy__();
    }
    @:keep
    static public function header( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        return _pr._res.header;
    }
    @:keep
    static public function _sendResponse( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        if (_pr._sentResponse) {
            return;
        };
        _pr._sentResponse = true;
        if (_pr._hasContent) {
            _pr._res.contentLength = (-1i64 : stdgo.GoInt64);
        };
        _pr._ch.__send__(_pr._res);
    }
    @:keep
    static public function _finish( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        if (!_pr._wroteHeader) {
            _pr.writeHeader((500 : stdgo.GoInt));
        };
        if (!_pr._sentResponse) {
            _pr._sendResponse();
        };
        _pr._pw.close();
    }
}
