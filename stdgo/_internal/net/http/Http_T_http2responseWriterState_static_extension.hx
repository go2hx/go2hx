package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriterState_asInterface) class T_http2responseWriterState_static_extension {
    @:keep
    static public function _writeHeader( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>, _code:stdgo.GoInt):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        if (_rws._wroteHeader) {
            return;
        };
        stdgo._internal.net.http.Http__http2checkWriteHeaderCode._http2checkWriteHeaderCode(_code);
        if (((_code >= (100 : stdgo.GoInt) : Bool) && (_code <= (199 : stdgo.GoInt) : Bool) : Bool)) {
            var _h = (_rws._handlerHeader : stdgo._internal.net.http.Http_Header.Header);
            var __tmp__ = (_h != null && _h.exists(("Content-Length" : stdgo.GoString)) ? { _0 : _h[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32016:stdgo.Slice<stdgo.GoString> = __tmp__._0, _cl:Bool = __tmp__._1;
            var __tmp__ = (_h != null && _h.exists(("Transfer-Encoding" : stdgo.GoString)) ? { _0 : _h[("Transfer-Encoding" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32017:stdgo.Slice<stdgo.GoString> = __tmp__._0, _te:Bool = __tmp__._1;
            if ((_cl || _te : Bool)) {
                _h = _h.clone();
                _h.del(("Content-Length" : stdgo.GoString));
                _h.del(("Transfer-Encoding" : stdgo.GoString));
            };
            if (_rws._conn._writeHeaders(_rws._stream, (stdgo.Go.setRef(({ _streamID : _rws._stream._id, _httpResCode : _code, _h : _h, _endStream : (_rws._handlerDone && !_rws._hasTrailers() : Bool) } : stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>)) != null) {
                _rws._dirty = true;
            };
            return;
        };
        _rws._wroteHeader = true;
        _rws._status = _code;
        if (((_rws._handlerHeader.length) > (0 : stdgo.GoInt) : Bool)) {
            _rws._snapHeader = stdgo._internal.net.http.Http__http2cloneHeader._http2cloneHeader(_rws._handlerHeader);
        };
    }
    @:keep
    static public function _promoteUndeclaredTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        for (_k => _vv in _rws._handlerHeader) {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                continue;
            };
            var _trailerKey = (stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _rws._declareTrailer(_trailerKey?.__copy__());
            _rws._handlerHeader[stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_trailerKey?.__copy__())] = _vv;
        };
        if (((_rws._trailers.length) > (1 : stdgo.GoInt) : Bool)) {
            var _sorter = (stdgo.Go.typeAssert((stdgo._internal.net.http.Http__http2sorterPool._http2sorterPool.get() : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
            _sorter.sortStrings(_rws._trailers);
            stdgo._internal.net.http.Http__http2sorterPool._http2sorterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_sorter)));
        };
    }
    @:keep
    static public function _writeChunk( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!_rws._wroteHeader) {
            _rws._writeHeader((200 : stdgo.GoInt));
        };
        if (_rws._handlerDone) {
            _rws._promoteUndeclaredTrailers();
        };
        var _isHeadResp = (_rws._req.method == (("HEAD" : stdgo.GoString)) : Bool);
        if (!_rws._sentHeader) {
            _rws._sentHeader = true;
            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _clen = __1, _ctype = __0;
            {
                _clen = _rws._snapHeader.get(("Content-Length" : stdgo.GoString))?.__copy__();
                if (_clen != (stdgo.Go.str())) {
                    _rws._snapHeader.del(("Content-Length" : stdgo.GoString));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_clen?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _rws._sentContentLen = (_cl : stdgo.GoInt64);
                        } else {
                            _clen = stdgo.Go.str()?.__copy__();
                        };
                    };
                };
            };
            var __tmp__ = (_rws._snapHeader != null && _rws._snapHeader.exists(("Content-Length" : stdgo.GoString)) ? { _0 : _rws._snapHeader[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32268:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasContentLength:Bool = __tmp__._1;
            if (((((!_hasContentLength && _clen == (stdgo.Go.str()) : Bool) && _rws._handlerDone : Bool) && stdgo._internal.net.http.Http__http2bodyAllowedForStatus._http2bodyAllowedForStatus(_rws._status) : Bool) && ((((_p.length) > (0 : stdgo.GoInt) : Bool) || !_isHeadResp : Bool)) : Bool)) {
                _clen = stdgo._internal.strconv.Strconv_itoa.itoa((_p.length))?.__copy__();
            };
            var __tmp__ = (_rws._snapHeader != null && _rws._snapHeader.exists(("Content-Type" : stdgo.GoString)) ? { _0 : _rws._snapHeader[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32437:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasContentType:Bool = __tmp__._1;
            var _ce = (_rws._snapHeader.get(("Content-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _hasCE = ((_ce.length) > (0 : stdgo.GoInt) : Bool);
            if ((((!_hasCE && !_hasContentType : Bool) && stdgo._internal.net.http.Http__http2bodyAllowedForStatus._http2bodyAllowedForStatus(_rws._status) : Bool) && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ctype = stdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__();
            };
            var _date:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = (_rws._snapHeader != null && _rws._snapHeader.exists(("Date" : stdgo.GoString)) ? { _0 : _rws._snapHeader[("Date" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32606:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _date = stdgo._internal.time.Time_now.now().utc().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__();
                };
            };
            for (__32649 => _v in (_rws._snapHeader[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                stdgo._internal.net.http.Http__http2foreachHeaderElement._http2foreachHeaderElement(_v?.__copy__(), _rws._declareTrailer);
            };
            {
                var __tmp__ = (_rws._snapHeader != null && _rws._snapHeader.exists(("Connection" : stdgo.GoString)) ? { _0 : _rws._snapHeader[("Connection" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32734:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _v = (_rws._snapHeader.get(("Connection" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    if (_rws._snapHeader != null) _rws._snapHeader.remove(("Connection" : stdgo.GoString));
                    if (_v == (("close" : stdgo.GoString))) {
                        _rws._conn._startGracefulShutdown();
                    };
                };
            };
            var _endStream = ((((_rws._handlerDone && !_rws._hasTrailers() : Bool) && (_p.length == (0 : stdgo.GoInt)) : Bool)) || _isHeadResp : Bool);
            _err = _rws._conn._writeHeaders(_rws._stream, (stdgo.Go.setRef(({ _streamID : _rws._stream._id, _httpResCode : _rws._status, _h : _rws._snapHeader, _endStream : _endStream, _contentType : _ctype?.__copy__(), _contentLength : _clen?.__copy__(), _date : _date?.__copy__() } : stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>));
            if (_err != null) {
                _rws._dirty = true;
                return { _0 : _n = (0 : stdgo.GoInt), _1 : _err };
            };
            if (_endStream) {
                return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
            };
        };
        if (_isHeadResp) {
            return { _0 : _n = (_p.length), _1 : _err = (null : stdgo.Error) };
        };
        if (((_p.length == (0 : stdgo.GoInt)) && !_rws._handlerDone : Bool)) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
        };
        var _hasNonemptyTrailers = (_rws._hasNonemptyTrailers() : Bool);
        var _endStream = (_rws._handlerDone && !_hasNonemptyTrailers : Bool);
        if ((((_p.length) > (0 : stdgo.GoInt) : Bool) || _endStream : Bool)) {
            {
                var _err = (_rws._conn._writeDataFromHandler(_rws._stream, _p, _endStream) : stdgo.Error);
                if (_err != null) {
                    _rws._dirty = true;
                    return { _0 : _n = (0 : stdgo.GoInt), _1 : _err };
                };
            };
        };
        if ((_rws._handlerDone && _hasNonemptyTrailers : Bool)) {
            _err = _rws._conn._writeHeaders(_rws._stream, (stdgo.Go.setRef(({ _streamID : _rws._stream._id, _h : _rws._handlerHeader, _trailers : _rws._trailers, _endStream : true } : stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>));
            if (_err != null) {
                _rws._dirty = true;
            };
            return { _0 : _n = (_p.length), _1 : _err };
        };
        return { _0 : _n = (_p.length), _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function _declareTrailer( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>, _k:stdgo.GoString):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        _k = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_k?.__copy__())) {
            _rws._conn._logf(("ignoring invalid trailer %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            return;
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains(_rws._trailers, _k?.__copy__())) {
            _rws._trailers = (_rws._trailers.__append__(_k?.__copy__()));
        };
    }
    @:keep
    static public function _hasNonemptyTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>):Bool {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        for (__31974 => _trailer in _rws._trailers) {
            {
                var __tmp__ = (_rws._handlerHeader != null && _rws._handlerHeader.exists(_trailer?.__copy__()) ? { _0 : _rws._handlerHeader[_trailer?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32059:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return true;
                };
            };
        };
        return false;
    }
    @:keep
    static public function _hasTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>):Bool {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        return ((_rws._trailers.length) > (0 : stdgo.GoInt) : Bool);
    }
}
