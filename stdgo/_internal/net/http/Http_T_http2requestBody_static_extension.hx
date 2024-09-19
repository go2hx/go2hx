package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2requestBody_asInterface) class T_http2requestBody_static_extension {
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_b._needsContinue) {
            _b._needsContinue = false;
            _b._conn._write100ContinueHeaders(_b._stream);
        };
        if ((((_b._pipe == null) || (_b._pipe : Dynamic).__nil__) || _b._sawEOF : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
        };
        {
            var __tmp__ = _b._pipe.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _b._sawEOF = true;
        };
        if (((_b._conn == null) || (_b._conn : Dynamic).__nil__ && stdgo._internal.net.http.Http__http2inTests._http2inTests : Bool)) {
            return { _0 : _n, _1 : _err };
        };
        _b._conn._noteBodyReadFromHandler(_b._stream, _n, _err);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody> = _b;
        _b._closeOnce.do_(function():Void {
            if (_b._pipe != null && ((_b._pipe : Dynamic).__nil__ == null || !(_b._pipe : Dynamic).__nil__)) {
                _b._pipe.breakWithError(stdgo._internal.net.http.Http__http2errClosedBody._http2errClosedBody);
            };
        });
        return (null : stdgo.Error);
    }
}
