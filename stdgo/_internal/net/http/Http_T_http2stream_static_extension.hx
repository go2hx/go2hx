package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2stream_asInterface) class T_http2stream_static_extension {
    @:keep
    @:tdfield
    static public function _processTrailerHeaders( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        var _sc = (@:checkr _st ?? throw "null pointer dereference")._sc;
        (@:checkr _sc ?? throw "null pointer dereference")._serveG._check();
        if ((@:checkr _st ?? throw "null pointer dereference")._gotTrailerHeader) {
            return @:check2r _sc._countError(("dup_trailers" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        (@:checkr _st ?? throw "null pointer dereference")._gotTrailerHeader = true;
        if (!@:check2r _f.streamEnded()) {
            return @:check2r _sc._countError(("trailers_not_ended" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError((@:checkr _st ?? throw "null pointer dereference")._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        if (((@:check2r _f.pseudoFields().length) > (0 : stdgo.GoInt) : Bool)) {
            return @:check2r _sc._countError(("trailers_pseudo" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError((@:checkr _st ?? throw "null pointer dereference")._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        if ((@:checkr _st ?? throw "null pointer dereference")._trailer != null) {
            for (__31725 => _hf in @:check2r _f.regularFields()) {
                var _key = (@:check2r _sc._canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_key?.__copy__())) {
                    return @:check2r _sc._countError(("trailers_bogus" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError((@:checkr _st ?? throw "null pointer dereference")._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
                };
                (@:checkr _st ?? throw "null pointer dereference")._trailer[_key] = (((@:checkr _st ?? throw "null pointer dereference")._trailer[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_hf.value?.__copy__()));
            };
        };
        @:check2r _st._endStream();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _onWriteTimeout( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        @:check2r (@:checkr _st ?? throw "null pointer dereference")._sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(({ streamID : (@:checkr _st ?? throw "null pointer dereference")._id, code : (2u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), cause : stdgo._internal.os.Os_errDeadlineExceeded.errDeadlineExceeded } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
    }
    @:keep
    @:tdfield
    static public function _onReadTimeout( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        @:check2r (@:checkr _st ?? throw "null pointer dereference")._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("%w" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_errDeadlineExceeded.errDeadlineExceeded)));
    }
    @:keep
    @:tdfield
    static public function _copyTrailersToHandlerRequest( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        for (_k => _vv in (@:checkr _st ?? throw "null pointer dereference")._trailer) {
            {
                var __tmp__ = ((@:checkr _st ?? throw "null pointer dereference")._reqTrailer != null && (@:checkr _st ?? throw "null pointer dereference")._reqTrailer.exists(_k?.__copy__()) ? { _0 : (@:checkr _st ?? throw "null pointer dereference")._reqTrailer[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __31683:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _st ?? throw "null pointer dereference")._reqTrailer[_k] = _vv;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _endStream( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        var _sc = (@:checkr _st ?? throw "null pointer dereference")._sc;
        (@:checkr _sc ?? throw "null pointer dereference")._serveG._check();
        if ((((@:checkr _st ?? throw "null pointer dereference")._declBodyBytes != (-1i64 : stdgo.GoInt64)) && ((@:checkr _st ?? throw "null pointer dereference")._declBodyBytes != (@:checkr _st ?? throw "null pointer dereference")._bodyBytes) : Bool)) {
            @:check2r (@:checkr _st ?? throw "null pointer dereference")._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("request declared a Content-Length of %d but only wrote %d bytes" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _st ?? throw "null pointer dereference")._declBodyBytes), stdgo.Go.toInterface((@:checkr _st ?? throw "null pointer dereference")._bodyBytes)));
        } else {
            @:check2r (@:checkr _st ?? throw "null pointer dereference")._body._closeWithErrorAndCode(stdgo._internal.io.Io_eOF.eOF, @:check2r _st._copyTrailersToHandlerRequest);
            @:check2r (@:checkr _st ?? throw "null pointer dereference")._body.closeWithError(stdgo._internal.io.Io_eOF.eOF);
        };
        (@:checkr _st ?? throw "null pointer dereference")._state = (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
    }
    @:keep
    @:tdfield
    static public function _isPushed( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Bool {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        return ((@:checkr _st ?? throw "null pointer dereference")._id % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
}
