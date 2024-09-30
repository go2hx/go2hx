package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2stream_asInterface) class T_http2stream_static_extension {
    @:keep
    static public function _processTrailerHeaders( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        var _sc = _st._sc;
        _sc._serveG._check();
        if (_st._gotTrailerHeader) {
            return _sc._countError(("dup_trailers" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)));
        };
        _st._gotTrailerHeader = true;
        if (!_f.streamEnded()) {
            return _sc._countError(("trailers_not_ended" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_st._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        if (((_f.pseudoFields().length) > (0 : stdgo.GoInt) : Bool)) {
            return _sc._countError(("trailers_pseudo" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_st._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
        };
        if (_st._trailer != null) {
            for (__31720 => _hf in _f.regularFields()) {
                var _key = (_sc._canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_key?.__copy__())) {
                    return _sc._countError(("trailers_bogus" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_st._id, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))));
                };
                _st._trailer[_key] = ((_st._trailer[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_hf.value?.__copy__()));
            };
        };
        _st._endStream();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _onWriteTimeout( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        _st._sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(({ streamID : _st._id, code : (2u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), cause : stdgo._internal.os.Os_errDeadlineExceeded.errDeadlineExceeded } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest));
    }
    @:keep
    static public function _onReadTimeout( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        _st._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("%w" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os_errDeadlineExceeded.errDeadlineExceeded)));
    }
    @:keep
    static public function _copyTrailersToHandlerRequest( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        for (_k => _vv in _st._trailer) {
            {
                var __tmp__ = (_st._reqTrailer != null && _st._reqTrailer.exists(_k?.__copy__()) ? { _0 : _st._reqTrailer[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __31678:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _st._reqTrailer[_k] = _vv;
                };
            };
        };
    }
    @:keep
    static public function _endStream( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        var _sc = _st._sc;
        _sc._serveG._check();
        if (((_st._declBodyBytes != (-1i64 : stdgo.GoInt64)) && (_st._declBodyBytes != _st._bodyBytes) : Bool)) {
            _st._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("request declared a Content-Length of %d but only wrote %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_st._declBodyBytes), stdgo.Go.toInterface(_st._bodyBytes)));
        } else {
            _st._body._closeWithErrorAndCode(stdgo._internal.io.Io_eof.eof, _st._copyTrailersToHandlerRequest);
            _st._body.closeWithError(stdgo._internal.io.Io_eof.eof);
        };
        _st._state = (3 : stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState);
    }
    @:keep
    static public function _isPushed( _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>):Bool {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream> = _st;
        return (_st._id % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
}
