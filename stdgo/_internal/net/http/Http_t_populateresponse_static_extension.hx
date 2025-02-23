package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_populateResponse_asInterface) class T_populateResponse_static_extension {
    @:keep
    @:tdfield
    static public function write( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _pr ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _pr.writeHeader((200 : stdgo.GoInt));
        };
        (@:checkr _pr ?? throw "null pointer dereference")._hasContent = true;
        if (!(@:checkr _pr ?? throw "null pointer dereference")._sentResponse) {
            @:check2r _pr._sendResponse();
        };
        return {
            final __tmp__ = @:check2r (@:checkr _pr ?? throw "null pointer dereference")._pw.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function writeHeader( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>, _code:stdgo.GoInt):Void {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        if ((@:checkr _pr ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        (@:checkr _pr ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").statusCode = _code;
        (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").status = stdgo._internal.net.http.Http__fmt._fmt.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText(_code)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function header( _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _pr:stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse> = _pr;
        return (@:checkr (@:checkr _pr ?? throw "null pointer dereference")._res ?? throw "null pointer dereference").header;
    }
}
