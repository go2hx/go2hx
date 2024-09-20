package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_chunkWriter_asInterface) class T_chunkWriter_static_extension {
    @:keep
    static public function _writeHeader( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        if (_cw._wroteHeader) {
            return;
        };
        _cw._wroteHeader = true;
        var _w = _cw._res;
        var _keepAlivesEnabled = (_w._conn._server._doKeepAlives() : Bool);
        var _isHEAD = (_w._req.method == (("HEAD" : stdgo.GoString)) : Bool);
        var _header = (_cw._header : stdgo._internal.net.http.Http_Header.Header);
        var _owned = (_header != null : Bool);
        if (!_owned) {
            _header = _w._handlerHeader;
        };
        var _excludeHeader:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _delHeader = (function(_key:stdgo.GoString):Void {
            if (_owned) {
                _header.del(_key?.__copy__());
                return;
            };
            {
                var __tmp__ = (_header != null && _header.exists(_key?.__copy__()) ? { _0 : _header[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __34248:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return;
                };
            };
            if (_excludeHeader == null) {
                _excludeHeader = ({
                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                    x.__defaultValue__ = () -> false;
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, Bool>);
            };
            _excludeHeader[_key] = true;
        } : stdgo.GoString -> Void);
        var _setHeader:stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader = ({} : stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader);
        var _trailers = (false : Bool);
        for (_k => _ in _cw._header) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                if (_excludeHeader == null) {
                    _excludeHeader = ({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>);
                };
                _excludeHeader[_k] = true;
                _trailers = true;
            };
        };
        for (__34248 => _v in (_cw._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            _trailers = true;
            stdgo._internal.net.http.Http__foreachHeaderElement._foreachHeaderElement(_v?.__copy__(), _cw._res._declareTrailer);
        };
        var _te = (_header._get(("Transfer-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _hasTE = (_te != (stdgo.Go.str()) : Bool);
        if ((((((_w._handlerDone.load() && !_trailers : Bool) && !_hasTE : Bool) && stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_w._status) : Bool) && !_header._has(("Content-Length" : stdgo.GoString)) : Bool) && ((!_isHEAD || ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            _w._contentLength = (_p.length : stdgo.GoInt64);
            _setHeader._contentLength = stdgo._internal.strconv.Strconv_appendInt.appendInt((_cw._res._clenBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.length : stdgo.GoInt64), (10 : stdgo.GoInt));
        };
        if ((_w._wants10KeepAlive && _keepAlivesEnabled : Bool)) {
            var _sentLength = (_header._get(("Content-Length" : stdgo.GoString)) != (stdgo.Go.str()) : Bool);
            if ((_sentLength && (_header._get(("Connection" : stdgo.GoString)) == ("keep-alive" : stdgo.GoString)) : Bool)) {
                _w._closeAfterReply = false;
            };
        };
        var _hasCL = (_w._contentLength != ((-1i64 : stdgo.GoInt64)) : Bool);
        if ((_w._wants10KeepAlive && (((_isHEAD || _hasCL : Bool) || !stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_w._status) : Bool)) : Bool)) {
            var __tmp__ = (_header != null && _header.exists(("Connection" : stdgo.GoString)) ? { _0 : _header[("Connection" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __34456:stdgo.Slice<stdgo.GoString> = __tmp__._0, _connectionHeaderSet:Bool = __tmp__._1;
            if (!_connectionHeaderSet) {
                _setHeader._connection = ("keep-alive" : stdgo.GoString);
            };
        } else if ((!_w._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) || _w._wantsClose : Bool)) {
            _w._closeAfterReply = true;
        };
        if (((_header._get(("Connection" : stdgo.GoString)) == ("close" : stdgo.GoString)) || !_keepAlivesEnabled : Bool)) {
            _w._closeAfterReply = true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w._req.body) : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>), _1 : false };
            }, _ecr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && !_ecr._sawEOF.load() : Bool)) {
                _w._closeAfterReply = true;
            };
        };
        if (((_w._req.contentLength != ((0i64 : stdgo.GoInt64)) && !_w._closeAfterReply : Bool) && !_w._fullDuplex : Bool)) {
            var __0:Bool = false, __1:Bool = false;
var _tooBig = __1, _discard = __0;
            {
                final __type__ = _w._req.body;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>))) {
                    var _bdy:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__.__underlying__().value;
                    if (_bdy._resp._wroteContinue) {
                        _discard = true;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>))) {
                    var _bdy:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__.__underlying__().value;
                    _bdy._mu.lock();
                    if (_bdy._closed) {
                        if (!_bdy._sawEOF) {
                            _w._closeAfterReply = true;
                        };
                    } else if ((_bdy._unreadDataSizeLocked() >= (262144i64 : stdgo.GoInt64) : Bool)) {
                        _tooBig = true;
                    } else {
                        _discard = true;
                    };
                    _bdy._mu.unlock();
                } else {
                    var _bdy:stdgo._internal.io.Io_ReadCloser.ReadCloser = __type__ == null ? (null : stdgo._internal.io.Io_ReadCloser.ReadCloser) : cast __type__;
                    _discard = true;
                };
            };
            if (_discard) {
                var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, _w._reqBody, (262145i64 : stdgo.GoInt64)), __34769:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    final __value__ = _err;
                    if (__value__ == null) {
                        _tooBig = true;
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose))) {} else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = _w._reqBody.close();
                        if (_err != null) {
                            _w._closeAfterReply = true;
                        };
                    } else {
                        _w._closeAfterReply = true;
                    };
                };
            };
            if (_tooBig) {
                _w._requestTooLarge();
                _delHeader(("Connection" : stdgo.GoString));
                _setHeader._connection = ("close" : stdgo.GoString);
            };
        };
        var _code = (_w._status : stdgo.GoInt);
        if (stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_code)) {
            var __tmp__ = (_header != null && _header.exists(("Content-Type" : stdgo.GoString)) ? { _0 : _header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __34735:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveType:Bool = __tmp__._1;
            var _ce = (_header.get(("Content-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _hasCE = ((_ce.length) > (0 : stdgo.GoInt) : Bool);
            if ((((!_hasCE && !_haveType : Bool) && !_hasTE : Bool) && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _setHeader._contentType = stdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__();
            };
        } else {
            for (__34735 => _k in stdgo._internal.net.http.Http__suppressedHeaders._suppressedHeaders(_code)) {
                _delHeader(_k?.__copy__());
            };
        };
        if (!_header._has(("Date" : stdgo.GoString))) {
            _setHeader._date = stdgo._internal.net.http.Http__appendTime._appendTime((_cw._res._dateBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.time.Time_now.now()?.__copy__());
        };
        if (((_hasCL && _hasTE : Bool) && (_te != ("identity" : stdgo.GoString)) : Bool)) {
            _w._conn._server._logf(("http: WriteHeader called with both Transfer-Encoding of %q and a Content-Length of %d" : stdgo.GoString), stdgo.Go.toInterface(_te), stdgo.Go.toInterface(_w._contentLength));
            _delHeader(("Content-Length" : stdgo.GoString));
            _hasCL = false;
        };
        if (((_w._req.method == (("HEAD" : stdgo.GoString)) || !stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_code) : Bool) || (_code == (204 : stdgo.GoInt)) : Bool)) {
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        } else if (_hasCL) {
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        } else if (_w._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
            if ((_hasTE && (_te == ("identity" : stdgo.GoString)) : Bool)) {
                _cw._chunking = false;
                _w._closeAfterReply = true;
                _delHeader(("Transfer-Encoding" : stdgo.GoString));
            } else {
                _cw._chunking = true;
                _setHeader._transferEncoding = ("chunked" : stdgo.GoString);
                if ((_hasTE && (_te == ("chunked" : stdgo.GoString)) : Bool)) {
                    _delHeader(("Transfer-Encoding" : stdgo.GoString));
                };
            };
        } else {
            _w._closeAfterReply = true;
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        };
        if (_cw._chunking) {
            _delHeader(("Content-Length" : stdgo.GoString));
        };
        if (!_w._req.protoAtLeast((1 : stdgo.GoInt), (0 : stdgo.GoInt))) {
            return;
        };
        var _delConnectionHeader = ((_w._closeAfterReply && ((!_keepAlivesEnabled || !stdgo._internal.net.http.Http__hasToken._hasToken(_cw._header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString)) : Bool)) : Bool) && !stdgo._internal.net.http.Http__isProtocolSwitchResponse._isProtocolSwitchResponse(_w._status, _header) : Bool);
        if (_delConnectionHeader) {
            _delHeader(("Connection" : stdgo.GoString));
            if (_w._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                _setHeader._connection = ("close" : stdgo.GoString);
            };
        };
        stdgo._internal.net.http.Http__writeStatusLine._writeStatusLine(_w._conn._bufw, _w._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)), _code, (_w._statusBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _cw._header.writeSubset(stdgo.Go.asInterface(_w._conn._bufw), _excludeHeader);
        _setHeader.write(_w._conn._bufw);
        _w._conn._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
    }
    @:keep
    static public function _close( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        if (!_cw._wroteHeader) {
            _cw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_cw._chunking) {
            var _bw = _cw._res._conn._bufw;
            _bw.writeString(("0\r\n" : stdgo.GoString));
            {
                var _trailers = (_cw._res._finalTrailers() : stdgo._internal.net.http.Http_Header.Header);
                if (_trailers != null) {
                    _trailers.write(stdgo.Go.asInterface(_bw));
                };
            };
            _bw.writeString(("\r\n" : stdgo.GoString));
        };
    }
    @:keep
    static public function _flush( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>):stdgo.Error {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        if (!_cw._wroteHeader) {
            _cw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        return _cw._res._conn._bufw.flush();
    }
    @:keep
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!_cw._wroteHeader) {
            _cw._writeHeader(_p);
        };
        if (_cw._res._req.method == (("HEAD" : stdgo.GoString))) {
            return { _0 : (_p.length), _1 : (null : stdgo.Error) };
        };
        if (_cw._chunking) {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_cw._res._conn._bufw), ("%x\r\n" : stdgo.GoString), stdgo.Go.toInterface((_p.length)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _cw._res._conn._rwc.close();
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = _cw._res._conn._bufw.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_cw._chunking && (_err == null) : Bool)) {
            {
                var __tmp__ = _cw._res._conn._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            _cw._res._conn._rwc.close();
        };
        return { _0 : _n, _1 : _err };
    }
}
