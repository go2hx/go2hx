package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2requestBody_asInterface) class T_http2requestBody_static_extension {
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _b ?? throw "null pointer dereference")._needsContinue) {
            (@:checkr _b ?? throw "null pointer dereference")._needsContinue = false;
            @:check2r (@:checkr _b ?? throw "null pointer dereference")._conn._write100ContinueHeaders((@:checkr _b ?? throw "null pointer dereference")._stream);
        };
        if ((((@:checkr _b ?? throw "null pointer dereference")._pipe == null || ((@:checkr _b ?? throw "null pointer dereference")._pipe : Dynamic).__nil__) || (@:checkr _b ?? throw "null pointer dereference")._sawEOF : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__io._io.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr _b ?? throw "null pointer dereference")._pipe.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
            (@:checkr _b ?? throw "null pointer dereference")._sawEOF = true;
        };
        if ((((@:checkr _b ?? throw "null pointer dereference")._conn == null || ((@:checkr _b ?? throw "null pointer dereference")._conn : Dynamic).__nil__) && stdgo._internal.net.http.Http__http2intests._http2inTests : Bool)) {
            return { _0 : _n, _1 : _err };
        };
        @:check2r (@:checkr _b ?? throw "null pointer dereference")._conn._noteBodyReadFromHandler((@:checkr _b ?? throw "null pointer dereference")._stream, _n, _err);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody> = _b;
        @:check2 (@:checkr _b ?? throw "null pointer dereference")._closeOnce.do_(function():Void {
            if (((@:checkr _b ?? throw "null pointer dereference")._pipe != null && (((@:checkr _b ?? throw "null pointer dereference")._pipe : Dynamic).__nil__ == null || !((@:checkr _b ?? throw "null pointer dereference")._pipe : Dynamic).__nil__))) {
                @:check2r (@:checkr _b ?? throw "null pointer dereference")._pipe.breakWithError(stdgo._internal.net.http.Http__http2errclosedbody._http2errClosedBody);
            };
        });
        return (null : stdgo.Error);
    }
}
