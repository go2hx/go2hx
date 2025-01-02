package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriterState_asInterface) class T_http2responseWriterState_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeader( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>, _code:stdgo.GoInt):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        if ((@:checkr _rws ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        stdgo._internal.net.http.Http__http2checkWriteHeaderCode._http2checkWriteHeaderCode(_code);
        if (((_code >= (100 : stdgo.GoInt) : Bool) && (_code <= (199 : stdgo.GoInt) : Bool) : Bool)) {
            var _h = ((@:checkr _rws ?? throw "null pointer dereference")._handlerHeader : stdgo._internal.net.http.Http_Header.Header);
            var __tmp__ = (_h != null && _h.exists(("Content-Length" : stdgo.GoString)) ? { _0 : _h[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32021:stdgo.Slice<stdgo.GoString> = __tmp__._0, _cl:Bool = __tmp__._1;
            var __tmp__ = (_h != null && _h.exists(("Transfer-Encoding" : stdgo.GoString)) ? { _0 : _h[("Transfer-Encoding" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32022:stdgo.Slice<stdgo.GoString> = __tmp__._0, _te:Bool = __tmp__._1;
            if ((_cl || _te : Bool)) {
                _h = _h.clone();
                _h.del(("Content-Length" : stdgo.GoString));
                _h.del(("Transfer-Encoding" : stdgo.GoString));
            };
            if (@:check2r (@:checkr _rws ?? throw "null pointer dereference")._conn._writeHeaders((@:checkr _rws ?? throw "null pointer dereference")._stream, (stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._id, _httpResCode : _code, _h : _h, _endStream : ((@:checkr _rws ?? throw "null pointer dereference")._handlerDone && !@:check2r _rws._hasTrailers() : Bool) } : stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>)) != null) {
                (@:checkr _rws ?? throw "null pointer dereference")._dirty = true;
            };
            return;
        };
        (@:checkr _rws ?? throw "null pointer dereference")._wroteHeader = true;
        (@:checkr _rws ?? throw "null pointer dereference")._status = _code;
        if ((((@:checkr _rws ?? throw "null pointer dereference")._handlerHeader.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _rws ?? throw "null pointer dereference")._snapHeader = stdgo._internal.net.http.Http__http2cloneHeader._http2cloneHeader((@:checkr _rws ?? throw "null pointer dereference")._handlerHeader);
        };
    }
    @:keep
    @:tdfield
    static public function _promoteUndeclaredTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        for (_k => _vv in (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader) {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                continue;
            };
            var _trailerKey = (stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            @:check2r _rws._declareTrailer(_trailerKey?.__copy__());
            (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader[stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_trailerKey?.__copy__())] = _vv;
        };
        if ((((@:checkr _rws ?? throw "null pointer dereference")._trailers.length) > (1 : stdgo.GoInt) : Bool)) {
            var _sorter = (stdgo.Go.typeAssert((@:check2 stdgo._internal.net.http.Http__http2sorterPool._http2sorterPool.get() : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
            @:check2r _sorter.sortStrings((@:checkr _rws ?? throw "null pointer dereference")._trailers);
            @:check2 stdgo._internal.net.http.Http__http2sorterPool._http2sorterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_sorter)));
        };
    }
    @:keep
    @:tdfield
    static public function _writeChunk( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _rws ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _rws._writeHeader((200 : stdgo.GoInt));
        };
        if ((@:checkr _rws ?? throw "null pointer dereference")._handlerDone) {
            @:check2r _rws._promoteUndeclaredTrailers();
        };
        var _isHeadResp = ((@:checkr (@:checkr _rws ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString)) : Bool);
        if (!(@:checkr _rws ?? throw "null pointer dereference")._sentHeader) {
            (@:checkr _rws ?? throw "null pointer dereference")._sentHeader = true;
            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _clen = __1, _ctype = __0;
            {
                _clen = (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.get(("Content-Length" : stdgo.GoString))?.__copy__();
                if (_clen != (stdgo.Go.str())) {
                    (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.del(("Content-Length" : stdgo.GoString));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_clen?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            (@:checkr _rws ?? throw "null pointer dereference")._sentContentLen = (_cl : stdgo.GoInt64);
                        } else {
                            _clen = stdgo.Go.str()?.__copy__();
                        };
                    };
                };
            };
            var __tmp__ = ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader != null && (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.exists(("Content-Length" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw "null pointer dereference")._snapHeader[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32273:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasContentLength:Bool = __tmp__._1;
            if (((((!_hasContentLength && _clen == (stdgo.Go.str()) : Bool) && (@:checkr _rws ?? throw "null pointer dereference")._handlerDone : Bool) && stdgo._internal.net.http.Http__http2bodyAllowedForStatus._http2bodyAllowedForStatus((@:checkr _rws ?? throw "null pointer dereference")._status) : Bool) && ((((_p.length) > (0 : stdgo.GoInt) : Bool) || !_isHeadResp : Bool)) : Bool)) {
                _clen = stdgo._internal.strconv.Strconv_itoa.itoa((_p.length))?.__copy__();
            };
            var __tmp__ = ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader != null && (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.exists(("Content-Type" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw "null pointer dereference")._snapHeader[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32442:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasContentType:Bool = __tmp__._1;
            var _ce = ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader.get(("Content-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _hasCE = ((_ce.length) > (0 : stdgo.GoInt) : Bool);
            if ((((!_hasCE && !_hasContentType : Bool) && stdgo._internal.net.http.Http__http2bodyAllowedForStatus._http2bodyAllowedForStatus((@:checkr _rws ?? throw "null pointer dereference")._status) : Bool) && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ctype = stdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__();
            };
            var _date:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader != null && (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.exists(("Date" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw "null pointer dereference")._snapHeader[("Date" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32611:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _date = stdgo._internal.time.Time_now.now().uTC().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__();
                };
            };
            for (__32654 => _v in ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                stdgo._internal.net.http.Http__http2foreachHeaderElement._http2foreachHeaderElement(_v?.__copy__(), @:check2r _rws._declareTrailer);
            };
            {
                var __tmp__ = ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader != null && (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.exists(("Connection" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw "null pointer dereference")._snapHeader[("Connection" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32739:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _v = ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader.get(("Connection" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    if ((@:checkr _rws ?? throw "null pointer dereference")._snapHeader != null) (@:checkr _rws ?? throw "null pointer dereference")._snapHeader.remove(("Connection" : stdgo.GoString));
                    if (_v == (("close" : stdgo.GoString))) {
                        @:check2r (@:checkr _rws ?? throw "null pointer dereference")._conn._startGracefulShutdown();
                    };
                };
            };
            var _endStream = (((((@:checkr _rws ?? throw "null pointer dereference")._handlerDone && !@:check2r _rws._hasTrailers() : Bool) && (_p.length == (0 : stdgo.GoInt)) : Bool)) || _isHeadResp : Bool);
            _err = @:check2r (@:checkr _rws ?? throw "null pointer dereference")._conn._writeHeaders((@:checkr _rws ?? throw "null pointer dereference")._stream, (stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._id, _httpResCode : (@:checkr _rws ?? throw "null pointer dereference")._status, _h : (@:checkr _rws ?? throw "null pointer dereference")._snapHeader, _endStream : _endStream, _contentType : _ctype?.__copy__(), _contentLength : _clen?.__copy__(), _date : _date?.__copy__() } : stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>));
            if (_err != null) {
                (@:checkr _rws ?? throw "null pointer dereference")._dirty = true;
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_endStream) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (_isHeadResp) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_p.length == (0 : stdgo.GoInt)) && !(@:checkr _rws ?? throw "null pointer dereference")._handlerDone : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _hasNonemptyTrailers = (@:check2r _rws._hasNonemptyTrailers() : Bool);
        var _endStream = ((@:checkr _rws ?? throw "null pointer dereference")._handlerDone && !_hasNonemptyTrailers : Bool);
        if ((((_p.length) > (0 : stdgo.GoInt) : Bool) || _endStream : Bool)) {
            {
                var _err = (@:check2r (@:checkr _rws ?? throw "null pointer dereference")._conn._writeDataFromHandler((@:checkr _rws ?? throw "null pointer dereference")._stream, _p, _endStream) : stdgo.Error);
                if (_err != null) {
                    (@:checkr _rws ?? throw "null pointer dereference")._dirty = true;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        if (((@:checkr _rws ?? throw "null pointer dereference")._handlerDone && _hasNonemptyTrailers : Bool)) {
            _err = @:check2r (@:checkr _rws ?? throw "null pointer dereference")._conn._writeHeaders((@:checkr _rws ?? throw "null pointer dereference")._stream, (stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _rws ?? throw "null pointer dereference")._stream ?? throw "null pointer dereference")._id, _h : (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader, _trailers : (@:checkr _rws ?? throw "null pointer dereference")._trailers, _endStream : true } : stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>));
            if (_err != null) {
                (@:checkr _rws ?? throw "null pointer dereference")._dirty = true;
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _declareTrailer( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>, _k:stdgo.GoString):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        _k = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_k?.__copy__())) {
            @:check2r (@:checkr _rws ?? throw "null pointer dereference")._conn._logf(("ignoring invalid trailer %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            return;
        };
        if (!stdgo._internal.net.http.Http__http2strSliceContains._http2strSliceContains((@:checkr _rws ?? throw "null pointer dereference")._trailers, _k?.__copy__())) {
            (@:checkr _rws ?? throw "null pointer dereference")._trailers = ((@:checkr _rws ?? throw "null pointer dereference")._trailers.__append__(_k?.__copy__()));
        };
    }
    @:keep
    @:tdfield
    static public function _hasNonemptyTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>):Bool {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        for (__31979 => _trailer in (@:checkr _rws ?? throw "null pointer dereference")._trailers) {
            {
                var __tmp__ = ((@:checkr _rws ?? throw "null pointer dereference")._handlerHeader != null && (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader.exists(_trailer?.__copy__()) ? { _0 : (@:checkr _rws ?? throw "null pointer dereference")._handlerHeader[_trailer?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __32064:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return true;
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _hasTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>):Bool {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState> = _rws;
        return (((@:checkr _rws ?? throw "null pointer dereference")._trailers.length) > (0 : stdgo.GoInt) : Bool);
    }
}
