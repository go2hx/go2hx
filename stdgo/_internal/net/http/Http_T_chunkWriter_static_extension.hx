package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_chunkWriter_asInterface) class T_chunkWriter_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeader( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        if ((@:checkr _cw ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        (@:checkr _cw ?? throw "null pointer dereference")._wroteHeader = true;
        var _w = (@:checkr _cw ?? throw "null pointer dereference")._res;
        var _keepAlivesEnabled = (@:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._doKeepAlives() : Bool);
        var _isHEAD = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString)) : Bool);
        var _header = ((@:checkr _cw ?? throw "null pointer dereference")._header : stdgo._internal.net.http.Http_Header.Header);
        var _owned = (_header != null : Bool);
        if (!_owned) {
            _header = (@:checkr _w ?? throw "null pointer dereference")._handlerHeader;
        };
        var _excludeHeader:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _delHeader = (function(_key:stdgo.GoString):Void {
            if (_owned) {
                _header.del(_key?.__copy__());
                return;
            };
            {
                var __tmp__ = (_header != null && _header.exists(_key?.__copy__()) ? { _0 : _header[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __34253:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return;
                };
            };
            if (_excludeHeader == null) {
                _excludeHeader = (({
                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                    x.__defaultValue__ = () -> false;
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
            };
            _excludeHeader[_key] = true;
        } : stdgo.GoString -> Void);
        var _setHeader:stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader = ({} : stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader);
        var _trailers = (false : Bool);
        for (_k => _ in (@:checkr _cw ?? throw "null pointer dereference")._header) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                if (_excludeHeader == null) {
                    _excludeHeader = (({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                };
                _excludeHeader[_k] = true;
                _trailers = true;
            };
        };
        for (__34253 => _v in ((@:checkr _cw ?? throw "null pointer dereference")._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            _trailers = true;
            stdgo._internal.net.http.Http__foreachHeaderElement._foreachHeaderElement(_v?.__copy__(), @:check2r (@:checkr _cw ?? throw "null pointer dereference")._res._declareTrailer);
        };
        var _te = (_header._get(("Transfer-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _hasTE = (_te != (stdgo.Go.str()) : Bool);
        if ((((((@:check2 (@:checkr _w ?? throw "null pointer dereference")._handlerDone.load() && !_trailers : Bool) && !_hasTE : Bool) && stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus((@:checkr _w ?? throw "null pointer dereference")._status) : Bool) && !_header._has(("Content-Length" : stdgo.GoString)) : Bool) && ((!_isHEAD || ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._contentLength = (_p.length : stdgo.GoInt64);
            _setHeader._contentLength = stdgo._internal.strconv.Strconv_appendInt.appendInt(((@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._clenBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.length : stdgo.GoInt64), (10 : stdgo.GoInt));
        };
        if (((@:checkr _w ?? throw "null pointer dereference")._wants10KeepAlive && _keepAlivesEnabled : Bool)) {
            var _sentLength = (_header._get(("Content-Length" : stdgo.GoString)) != (stdgo.Go.str()) : Bool);
            if ((_sentLength && (_header._get(("Connection" : stdgo.GoString)) == ("keep-alive" : stdgo.GoString)) : Bool)) {
                (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = false;
            };
        };
        var _hasCL = ((@:checkr _w ?? throw "null pointer dereference")._contentLength != ((-1i64 : stdgo.GoInt64)) : Bool);
        if (((@:checkr _w ?? throw "null pointer dereference")._wants10KeepAlive && (((_isHEAD || _hasCL : Bool) || !stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus((@:checkr _w ?? throw "null pointer dereference")._status) : Bool)) : Bool)) {
            var __tmp__ = (_header != null && _header.exists(("Connection" : stdgo.GoString)) ? { _0 : _header[("Connection" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __34461:stdgo.Slice<stdgo.GoString> = __tmp__._0, _connectionHeaderSet:Bool = __tmp__._1;
            if (!_connectionHeaderSet) {
                _setHeader._connection = ("keep-alive" : stdgo.GoString);
            };
        } else if ((!@:check2r (@:checkr _w ?? throw "null pointer dereference")._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) || (@:checkr _w ?? throw "null pointer dereference")._wantsClose : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
        };
        if (((_header._get(("Connection" : stdgo.GoString)) == ("close" : stdgo.GoString)) || !_keepAlivesEnabled : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").body) : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>), _1 : false };
            }, _ecr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && !@:check2 (@:checkr _ecr ?? throw "null pointer dereference")._sawEOF.load() : Bool)) {
                (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
            };
        };
        if ((((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64)) && !(@:checkr _w ?? throw "null pointer dereference")._closeAfterReply : Bool) && !(@:checkr _w ?? throw "null pointer dereference")._fullDuplex : Bool)) {
            var __0:Bool = false, __1:Bool = false;
var _tooBig = __1, _discard = __0;
            {
                final __type__ = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").body;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>))) {
                    var _bdy:stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader>) : __type__.__underlying__().value;
                    if ((@:checkr (@:checkr _bdy ?? throw "null pointer dereference")._resp ?? throw "null pointer dereference")._wroteContinue) {
                        _discard = true;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>))) {
                    var _bdy:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>) : __type__.__underlying__().value;
                    @:check2 (@:checkr _bdy ?? throw "null pointer dereference")._mu.lock();
                    if ((@:checkr _bdy ?? throw "null pointer dereference")._closed) {
                        if (!(@:checkr _bdy ?? throw "null pointer dereference")._sawEOF) {
                            (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
                        };
                    } else if ((@:check2r _bdy._unreadDataSizeLocked() >= (262144i64 : stdgo.GoInt64) : Bool)) {
                        _tooBig = true;
                    } else {
                        _discard = true;
                    };
                    @:check2 (@:checkr _bdy ?? throw "null pointer dereference")._mu.unlock();
                } else {
                    var _bdy:stdgo._internal.io.Io_ReadCloser.ReadCloser = __type__ == null ? (null : stdgo._internal.io.Io_ReadCloser.ReadCloser) : cast __type__;
                    _discard = true;
                };
            };
            if (_discard) {
                var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, (@:checkr _w ?? throw "null pointer dereference")._reqBody, (262145i64 : stdgo.GoInt64)), __34774:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    final __value__ = _err;
                    if (__value__ == null) {
                        _tooBig = true;
                    } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose))) {} else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        _err = (@:checkr _w ?? throw "null pointer dereference")._reqBody.close();
                        if (_err != null) {
                            (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
                        };
                    } else {
                        (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
                    };
                };
            };
            if (_tooBig) {
                @:check2r _w._requestTooLarge();
                _delHeader(("Connection" : stdgo.GoString));
                _setHeader._connection = ("close" : stdgo.GoString);
            };
        };
        var _code = ((@:checkr _w ?? throw "null pointer dereference")._status : stdgo.GoInt);
        if (stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_code)) {
            var __tmp__ = (_header != null && _header.exists(("Content-Type" : stdgo.GoString)) ? { _0 : _header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __34740:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveType:Bool = __tmp__._1;
            var _ce = (_header.get(("Content-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _hasCE = ((_ce.length) > (0 : stdgo.GoInt) : Bool);
            if ((((!_hasCE && !_haveType : Bool) && !_hasTE : Bool) && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _setHeader._contentType = stdgo._internal.net.http.Http_detectContentType.detectContentType(_p)?.__copy__();
            };
        } else {
            for (__34740 => _k in stdgo._internal.net.http.Http__suppressedHeaders._suppressedHeaders(_code)) {
                _delHeader(_k?.__copy__());
            };
        };
        if (!_header._has(("Date" : stdgo.GoString))) {
            _setHeader._date = stdgo._internal.net.http.Http__appendTime._appendTime(((@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._dateBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.time.Time_now.now()?.__copy__());
        };
        if (((_hasCL && _hasTE : Bool) && (_te != ("identity" : stdgo.GoString)) : Bool)) {
            @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._server._logf(("http: WriteHeader called with both Transfer-Encoding of %q and a Content-Length of %d" : stdgo.GoString), stdgo.Go.toInterface(_te), stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._contentLength));
            _delHeader(("Content-Length" : stdgo.GoString));
            _hasCL = false;
        };
        if ((((@:checkr (@:checkr _w ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString)) || !stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_code) : Bool) || (_code == (204 : stdgo.GoInt)) : Bool)) {
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        } else if (_hasCL) {
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        } else if (@:check2r (@:checkr _w ?? throw "null pointer dereference")._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
            if ((_hasTE && (_te == ("identity" : stdgo.GoString)) : Bool)) {
                (@:checkr _cw ?? throw "null pointer dereference")._chunking = false;
                (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
                _delHeader(("Transfer-Encoding" : stdgo.GoString));
            } else {
                (@:checkr _cw ?? throw "null pointer dereference")._chunking = true;
                _setHeader._transferEncoding = ("chunked" : stdgo.GoString);
                if ((_hasTE && (_te == ("chunked" : stdgo.GoString)) : Bool)) {
                    _delHeader(("Transfer-Encoding" : stdgo.GoString));
                };
            };
        } else {
            (@:checkr _w ?? throw "null pointer dereference")._closeAfterReply = true;
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        };
        if ((@:checkr _cw ?? throw "null pointer dereference")._chunking) {
            _delHeader(("Content-Length" : stdgo.GoString));
        };
        if (!@:check2r (@:checkr _w ?? throw "null pointer dereference")._req.protoAtLeast((1 : stdgo.GoInt), (0 : stdgo.GoInt))) {
            return;
        };
        var _delConnectionHeader = (((@:checkr _w ?? throw "null pointer dereference")._closeAfterReply && ((!_keepAlivesEnabled || !stdgo._internal.net.http.Http__hasToken._hasToken((@:checkr _cw ?? throw "null pointer dereference")._header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString)) : Bool)) : Bool) && !stdgo._internal.net.http.Http__isProtocolSwitchResponse._isProtocolSwitchResponse((@:checkr _w ?? throw "null pointer dereference")._status, _header) : Bool);
        if (_delConnectionHeader) {
            _delHeader(("Connection" : stdgo.GoString));
            if (@:check2r (@:checkr _w ?? throw "null pointer dereference")._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                _setHeader._connection = ("close" : stdgo.GoString);
            };
        };
        stdgo._internal.net.http.Http__writeStatusLine._writeStatusLine((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw, @:check2r (@:checkr _w ?? throw "null pointer dereference")._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)), _code, ((@:checkr _w ?? throw "null pointer dereference")._statusBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _cw ?? throw "null pointer dereference")._header.writeSubset(stdgo.Go.asInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw), _excludeHeader);
        _setHeader.write((@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw);
        @:check2r (@:checkr (@:checkr _w ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
    }
    @:keep
    @:tdfield
    static public function _close( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        if (!(@:checkr _cw ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _cw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        if ((@:checkr _cw ?? throw "null pointer dereference")._chunking) {
            var _bw = (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw;
            @:check2r _bw.writeString(("0\r\n" : stdgo.GoString));
            {
                var _trailers = (@:check2r (@:checkr _cw ?? throw "null pointer dereference")._res._finalTrailers() : stdgo._internal.net.http.Http_Header.Header);
                if (_trailers != null) {
                    _trailers.write(stdgo.Go.asInterface(_bw));
                };
            };
            @:check2r _bw.writeString(("\r\n" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>):stdgo.Error {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        if (!(@:checkr _cw ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _cw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        return @:check2r (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.flush();
    }
    @:keep
    @:tdfield
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (!(@:checkr _cw ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _cw._writeHeader(_p);
        };
        if ((@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._req ?? throw "null pointer dereference").method == (("HEAD" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((@:checkr _cw ?? throw "null pointer dereference")._chunking) {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw), ("%x\r\n" : stdgo.GoString), stdgo.Go.toInterface((_p.length)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.close();
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = @:check2r (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((@:checkr _cw ?? throw "null pointer dereference")._chunking && (_err == null) : Bool)) {
            {
                var __tmp__ = @:check2r (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            (@:checkr (@:checkr (@:checkr _cw ?? throw "null pointer dereference")._res ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.close();
        };
        return { _0 : _n, _1 : _err };
    }
}
