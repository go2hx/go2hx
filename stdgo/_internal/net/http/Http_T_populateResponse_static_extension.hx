package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_populateResponse_asInterface) class T_populateResponse_static_extension {
    @:keep
    @:tdfield
    static public function write( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _pr ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _pr.writeHeader((200 : stdgo.GoInt));
        };
        (@:checkr _pr ?? throw "null pointer dereference")._hasContent = true;
        if (!(@:checkr _pr ?? throw "null pointer dereference")._sentResponse) {
            @:check2r _pr._sendResponse();
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = @:check2r (@:checkr _pr ?? throw "null pointer dereference")._pw.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeHeader( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>, _code:stdgo.GoInt):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        if ((@:checkr _pr ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        (@:checkr _pr ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").statusCode = _code;
        (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").status = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_code)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function header( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        return (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").header;
    }
    @:keep
    @:tdfield
    static public function _sendResponse( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        if ((@:checkr _pr ?? throw "null pointer dereference")._sentResponse) {
            return;
        };
        (@:checkr _pr ?? throw "null pointer dereference")._sentResponse = true;
        if ((@:checkr _pr ?? throw "null pointer dereference")._hasContent) {
            (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
        };
        (@:checkr _pr ?? throw "null pointer dereference")._ch.__send__((@:checkr _pr ?? throw "null pointer dereference")._res);
    }
    @:keep
    @:tdfield
    static public function _finish( _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse> = _pr;
        if (!(@:checkr _pr ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _pr.writeHeader((500 : stdgo.GoInt));
        };
        if (!(@:checkr _pr ?? throw "null pointer dereference")._sentResponse) {
            @:check2r _pr._sendResponse();
        };
        @:check2r (@:checkr _pr ?? throw "null pointer dereference")._pw.close();
    }
}
