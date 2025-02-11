package stdgo._internal.net.http.httptest;
@:keep @:allow(stdgo._internal.net.http.httptest.Httptest.ResponseRecorder_asInterface) class ResponseRecorder_static_extension {
    @:keep
    @:tdfield
    static public function result( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>):stdgo.Ref<stdgo._internal.net.http.Http_response.Response> {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        if (((@:checkr _rw ?? throw "null pointer dereference")._result != null && (((@:checkr _rw ?? throw "null pointer dereference")._result : Dynamic).__nil__ == null || !((@:checkr _rw ?? throw "null pointer dereference")._result : Dynamic).__nil__))) {
            return (@:checkr _rw ?? throw "null pointer dereference")._result;
        };
        if ((@:checkr _rw ?? throw "null pointer dereference")._snapHeader == null) {
            (@:checkr _rw ?? throw "null pointer dereference")._snapHeader = (@:checkr _rw ?? throw "null pointer dereference").headerMap.clone();
        };
        var _res = (stdgo.Go.setRef(({ proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), statusCode : (@:checkr _rw ?? throw "null pointer dereference").code, header : (@:checkr _rw ?? throw "null pointer dereference")._snapHeader } : stdgo._internal.net.http.Http_response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        (@:checkr _rw ?? throw "null pointer dereference")._result = _res;
        if ((@:checkr _res ?? throw "null pointer dereference").statusCode == ((0 : stdgo.GoInt))) {
            (@:checkr _res ?? throw "null pointer dereference").statusCode = (200 : stdgo.GoInt);
        };
        (@:checkr _res ?? throw "null pointer dereference").status = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _res ?? throw "null pointer dereference").statusCode), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText((@:checkr _res ?? throw "null pointer dereference").statusCode)))?.__copy__();
        if (((@:checkr _rw ?? throw "null pointer dereference").body != null && (((@:checkr _rw ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _rw ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
            (@:checkr _res ?? throw "null pointer dereference").body = stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(@:check2r (@:checkr _rw ?? throw "null pointer dereference").body.bytes())));
        } else {
            (@:checkr _res ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody);
        };
        (@:checkr _res ?? throw "null pointer dereference").contentLength = stdgo._internal.net.http.httptest.Httptest__parsecontentlength._parseContentLength((@:checkr _res ?? throw "null pointer dereference").header.get(("Content-Length" : stdgo.GoString))?.__copy__());
        {
            var __tmp__ = ((@:checkr _rw ?? throw "null pointer dereference")._snapHeader != null && (@:checkr _rw ?? throw "null pointer dereference")._snapHeader.__exists__(("Trailer" : stdgo.GoString)) ? { _0 : (@:checkr _rw ?? throw "null pointer dereference")._snapHeader[("Trailer" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _trailers:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _res ?? throw "null pointer dereference").trailer = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
                for (__0 => _k in _trailers) {
                    for (__1 => _k in stdgo._internal.strings.Strings_split.split(_k?.__copy__(), ("," : stdgo.GoString))) {
                        _k = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(stdgo._internal.net.textproto.Textproto_trimstring.trimString(_k?.__copy__())?.__copy__())?.__copy__();
                        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validtrailerheader.validTrailerHeader(_k?.__copy__())) {
                            continue;
                        };
                        var __tmp__ = ((@:checkr _rw ?? throw "null pointer dereference").headerMap != null && (@:checkr _rw ?? throw "null pointer dereference").headerMap.__exists__(_k?.__copy__()) ? { _0 : (@:checkr _rw ?? throw "null pointer dereference").headerMap[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            continue;
                        };
                        var _vv2 = (new stdgo.Slice<stdgo.GoString>((_vv.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                        _vv2.__copyTo__(_vv);
                        (@:checkr _res ?? throw "null pointer dereference").trailer[_k] = _vv2;
                    };
                };
            };
        };
        for (_k => _vv in (@:checkr _rw ?? throw "null pointer dereference").headerMap) {
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                continue;
            };
            if ((@:checkr _res ?? throw "null pointer dereference").trailer == null) {
                (@:checkr _res ?? throw "null pointer dereference").trailer = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            };
            for (__0 => _v in _vv) {
                (@:checkr _res ?? throw "null pointer dereference").trailer.add(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))?.__copy__(), _v?.__copy__());
            };
        };
        return _res;
    }
    @:keep
    @:tdfield
    static public function flush( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        if (!(@:checkr _rw ?? throw "null pointer dereference")._wroteHeader) {
            @:check2r _rw.writeHeader((200 : stdgo.GoInt));
        };
        (@:checkr _rw ?? throw "null pointer dereference").flushed = true;
    }
    @:keep
    @:tdfield
    static public function writeHeader( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _code:stdgo.GoInt):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        if ((@:checkr _rw ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        stdgo._internal.net.http.httptest.Httptest__checkwriteheadercode._checkWriteHeaderCode(_code);
        (@:checkr _rw ?? throw "null pointer dereference").code = _code;
        (@:checkr _rw ?? throw "null pointer dereference")._wroteHeader = true;
        if ((@:checkr _rw ?? throw "null pointer dereference").headerMap == null) {
            (@:checkr _rw ?? throw "null pointer dereference").headerMap = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        (@:checkr _rw ?? throw "null pointer dereference")._snapHeader = (@:checkr _rw ?? throw "null pointer dereference").headerMap.clone();
    }
    @:keep
    @:tdfield
    static public function writeString( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _str:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        @:check2r _rw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>), _str?.__copy__());
        if (((@:checkr _rw ?? throw "null pointer dereference").body != null && (((@:checkr _rw ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _rw ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
            @:check2r (@:checkr _rw ?? throw "null pointer dereference").body.writeString(_str?.__copy__());
        };
        return { _0 : (_str.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        @:check2r _rw._writeHeader(_buf, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        if (((@:checkr _rw ?? throw "null pointer dereference").body != null && (((@:checkr _rw ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _rw ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
            @:check2r (@:checkr _rw ?? throw "null pointer dereference").body.write(_buf);
        };
        return { _0 : (_buf.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _b:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.GoString):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        if ((@:checkr _rw ?? throw "null pointer dereference")._wroteHeader) {
            return;
        };
        if (((_str.length) > (512 : stdgo.GoInt) : Bool)) {
            _str = (_str.__slice__(0, (512 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _m = (@:check2r _rw.header() : stdgo._internal.net.http.Http_header.Header);
        var __tmp__ = (_m != null && _m.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : _m[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
        var _hasTE = (_m.get(("Transfer-Encoding" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)) : Bool);
        if ((!_hasType && !_hasTE : Bool)) {
            if (_b == null) {
                _b = (_str : stdgo.Slice<stdgo.GoUInt8>);
            };
            _m.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_b)?.__copy__());
        };
        @:check2r _rw.writeHeader((200 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function header( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        var _m = ((@:checkr _rw ?? throw "null pointer dereference").headerMap : stdgo._internal.net.http.Http_header.Header);
        if (_m == null) {
            _m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            (@:checkr _rw ?? throw "null pointer dereference").headerMap = _m;
        };
        return _m;
    }
}
