package stdgo._internal.net.http.httptest;
@:keep @:allow(stdgo._internal.net.http.httptest.Httptest.ResponseRecorder_asInterface) class ResponseRecorder_static_extension {
    @:keep
    static public function result( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>):stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        if (_rw._result != null && ((_rw._result : Dynamic).__nil__ == null || !(_rw._result : Dynamic).__nil__)) {
            return _rw._result;
        };
        if (_rw._snapHeader == null) {
            _rw._snapHeader = _rw.headerMap.clone();
        };
        var _res = (stdgo.Go.setRef(({ proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), statusCode : _rw.code, header : _rw._snapHeader } : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        _rw._result = _res;
        if (_res.statusCode == ((0 : stdgo.GoInt))) {
            _res.statusCode = (200 : stdgo.GoInt);
        };
        _res.status = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), stdgo.Go.toInterface(_res.statusCode), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statusText.statusText(_res.statusCode)))?.__copy__();
        if (_rw.body != null && ((_rw.body : Dynamic).__nil__ == null || !(_rw.body : Dynamic).__nil__)) {
            _res.body = stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_rw.body.bytes())));
        } else {
            _res.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
        };
        _res.contentLength = stdgo._internal.net.http.httptest.Httptest__parseContentLength._parseContentLength(_res.header.get(("Content-Length" : stdgo.GoString))?.__copy__());
        {
            var __tmp__ = (_rw._snapHeader != null && _rw._snapHeader.exists(("Trailer" : stdgo.GoString)) ? { _0 : _rw._snapHeader[("Trailer" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _trailers:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _res.trailer = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
                for (__0 => _k in _trailers) {
                    for (__1 => _k in stdgo._internal.strings.Strings_split.split(_k?.__copy__(), ("," : stdgo.GoString))) {
                        _k = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(stdgo._internal.net.textproto.Textproto_trimString.trimString(_k?.__copy__())?.__copy__())?.__copy__();
                        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validTrailerHeader.validTrailerHeader(_k?.__copy__())) {
                            continue;
                        };
                        var __tmp__ = (_rw.headerMap != null && _rw.headerMap.exists(_k?.__copy__()) ? { _0 : _rw.headerMap[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            continue;
                        };
                        var _vv2 = (new stdgo.Slice<stdgo.GoString>((_vv.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                        stdgo.Go.copySlice(_vv2, _vv);
                        _res.trailer[_k] = _vv2;
                    };
                };
            };
        };
        for (_k => _vv in _rw.headerMap) {
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                continue;
            };
            if (_res.trailer == null) {
                _res.trailer = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            };
            for (__0 => _v in _vv) {
                _res.trailer.add(stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))?.__copy__(), _v?.__copy__());
            };
        };
        return _res;
    }
    @:keep
    static public function flush( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        if (!_rw._wroteHeader) {
            _rw.writeHeader((200 : stdgo.GoInt));
        };
        _rw.flushed = true;
    }
    @:keep
    static public function writeHeader( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>, _code:stdgo.GoInt):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        if (_rw._wroteHeader) {
            return;
        };
        stdgo._internal.net.http.httptest.Httptest__checkWriteHeaderCode._checkWriteHeaderCode(_code);
        _rw.code = _code;
        _rw._wroteHeader = true;
        if (_rw.headerMap == null) {
            _rw.headerMap = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        _rw._snapHeader = _rw.headerMap.clone();
    }
    @:keep
    static public function writeString( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>, _str:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        _rw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>), _str?.__copy__());
        if (_rw.body != null && ((_rw.body : Dynamic).__nil__ == null || !(_rw.body : Dynamic).__nil__)) {
            _rw.body.writeString(_str?.__copy__());
        };
        return { _0 : (_str.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        _rw._writeHeader(_buf, stdgo.Go.str()?.__copy__());
        if (_rw.body != null && ((_rw.body : Dynamic).__nil__ == null || !(_rw.body : Dynamic).__nil__)) {
            _rw.body.write(_buf);
        };
        return { _0 : (_buf.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _writeHeader( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>, _b:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.GoString):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        if (_rw._wroteHeader) {
            return;
        };
        if (((_str.length) > (512 : stdgo.GoInt) : Bool)) {
            _str = (_str.__slice__(0, (512 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _m = (_rw._result.header() : stdgo._internal.net.http.Http_Header.Header);
        var __tmp__ = (_m != null && _m.exists(("Content-Type" : stdgo.GoString)) ? { _0 : _m[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
        var _hasTE = (_m.get(("Transfer-Encoding" : stdgo.GoString)) != (stdgo.Go.str()) : Bool);
        if ((!_hasType && !_hasTE : Bool)) {
            if (_b == null) {
                _b = (_str : stdgo.Slice<stdgo.GoUInt8>);
            };
            _m.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectContentType.detectContentType(_b)?.__copy__());
        };
        _rw.writeHeader((200 : stdgo.GoInt));
    }
    @:keep
    static public function header( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>):stdgo._internal.net.http.Http_Header.Header {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder> = _rw;
        var _m = (_rw.headerMap : stdgo._internal.net.http.Http_Header.Header);
        if (_m == null) {
            _m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
            _rw.headerMap = _m;
        };
        return _m;
    }
}
