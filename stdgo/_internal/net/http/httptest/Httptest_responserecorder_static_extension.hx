package stdgo._internal.net.http.httptest;
@:keep @:allow(stdgo._internal.net.http.httptest.Httptest.ResponseRecorder_asInterface) class ResponseRecorder_static_extension {
    @:keep
    @:tdfield
    static public function result( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>):stdgo.Ref<stdgo._internal.net.http.Http_response.Response> {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L182"
        if (({
            final value = (@:checkr _rw ?? throw "null pointer dereference")._result;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L183"
            return (@:checkr _rw ?? throw "null pointer dereference")._result;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L185"
        if ((@:checkr _rw ?? throw "null pointer dereference")._snapHeader == null) {
            (@:checkr _rw ?? throw "null pointer dereference")._snapHeader = (@:checkr _rw ?? throw "null pointer dereference").headerMap.clone();
        };
        var _res = (stdgo.Go.setRef(({ proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), statusCode : (@:checkr _rw ?? throw "null pointer dereference").code, header : (@:checkr _rw ?? throw "null pointer dereference")._snapHeader } : stdgo._internal.net.http.Http_response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        (@:checkr _rw ?? throw "null pointer dereference")._result = _res;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L196"
        if ((@:checkr _res ?? throw "null pointer dereference").statusCode == ((0 : stdgo.GoInt))) {
            (@:checkr _res ?? throw "null pointer dereference").statusCode = (200 : stdgo.GoInt);
        };
        (@:checkr _res ?? throw "null pointer dereference").status = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _res ?? throw "null pointer dereference").statusCode), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText((@:checkr _res ?? throw "null pointer dereference").statusCode)))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L200"
        if (({
            final value = (@:checkr _rw ?? throw "null pointer dereference").body;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _res ?? throw "null pointer dereference").body = stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((@:checkr _rw ?? throw "null pointer dereference").body.bytes())));
        } else {
            (@:checkr _res ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody);
        };
        (@:checkr _res ?? throw "null pointer dereference").contentLength = stdgo._internal.net.http.httptest.Httptest__parsecontentlength._parseContentLength((@:checkr _res ?? throw "null pointer dereference").header.get(("Content-Length" : stdgo.GoString))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L207"
        {
            var __tmp__ = ((@:checkr _rw ?? throw "null pointer dereference")._snapHeader != null && (@:checkr _rw ?? throw "null pointer dereference")._snapHeader.__exists__(("Trailer" : stdgo.GoString)) ? { _0 : (@:checkr _rw ?? throw "null pointer dereference")._snapHeader[("Trailer" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _trailers:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _res ?? throw "null pointer dereference").trailer = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L209"
                for (__0 => _k in _trailers) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L210"
                    for (__1 => _k in stdgo._internal.strings.Strings_split.split(_k?.__copy__(), ("," : stdgo.GoString))) {
                        _k = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(stdgo._internal.net.textproto.Textproto_trimstring.trimString(_k?.__copy__())?.__copy__())?.__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L212"
                        if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validtrailerheader.validTrailerHeader(_k?.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L214"
                            continue;
                        };
                        var __tmp__ = ((@:checkr _rw ?? throw "null pointer dereference").headerMap != null && (@:checkr _rw ?? throw "null pointer dereference").headerMap.__exists__(_k?.__copy__()) ? { _0 : (@:checkr _rw ?? throw "null pointer dereference").headerMap[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L217"
                        if (!_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L218"
                            continue;
                        };
                        var _vv2 = (new stdgo.Slice<stdgo.GoString>((_vv.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L221"
                        _vv2.__copyTo__(_vv);
                        (@:checkr _res ?? throw "null pointer dereference").trailer[_k] = _vv2;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L226"
        for (_k => _vv in (@:checkr _rw ?? throw "null pointer dereference").headerMap) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L227"
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L228"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L230"
            if ((@:checkr _res ?? throw "null pointer dereference").trailer == null) {
                (@:checkr _res ?? throw "null pointer dereference").trailer = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L233"
            for (__0 => _v in _vv) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L234"
                (@:checkr _res ?? throw "null pointer dereference").trailer.add(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))?.__copy__(), _v?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L237"
        return _res;
    }
    @:keep
    @:tdfield
    static public function flush( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L160"
        if (!(@:checkr _rw ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L161"
            _rw.writeHeader((200 : stdgo.GoInt));
        };
        (@:checkr _rw ?? throw "null pointer dereference").flushed = true;
    }
    @:keep
    @:tdfield
    static public function writeHeader( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _code:stdgo.GoInt):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L144"
        if ((@:checkr _rw ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L145"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L148"
        stdgo._internal.net.http.httptest.Httptest__checkwriteheadercode._checkWriteHeaderCode(_code);
        (@:checkr _rw ?? throw "null pointer dereference").code = _code;
        (@:checkr _rw ?? throw "null pointer dereference")._wroteHeader = true;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L151"
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
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L118"
        _rw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>), _str?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L119"
        if (({
            final value = (@:checkr _rw ?? throw "null pointer dereference").body;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L120"
            (@:checkr _rw ?? throw "null pointer dereference").body.writeString(_str?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L122"
        return { _0 : (_str.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L108"
        _rw._writeHeader(_buf, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L109"
        if (({
            final value = (@:checkr _rw ?? throw "null pointer dereference").body;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L110"
            (@:checkr _rw ?? throw "null pointer dereference").body.write(_buf);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L112"
        return { _0 : (_buf.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>, _b:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.GoString):Void {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L84"
        if ((@:checkr _rw ?? throw "null pointer dereference")._wroteHeader) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L85"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L87"
        if (((_str.length) > (512 : stdgo.GoInt) : Bool)) {
            _str = (_str.__slice__(0, (512 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _m = (_rw.header() : stdgo._internal.net.http.Http_header.Header);
        var __tmp__ = (_m != null && _m.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : _m[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasType:Bool = __tmp__._1;
        var _hasTE = (_m.get(("Transfer-Encoding" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L95"
        if ((!_hasType && !_hasTE : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L96"
            if (_b == null) {
                _b = (_str : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L99"
            _m.set(("Content-Type" : stdgo.GoString), stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_b)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L102"
        _rw.writeHeader((200 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function header( _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _rw:stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder> = _rw;
        var _m = ((@:checkr _rw ?? throw "null pointer dereference").headerMap : stdgo._internal.net.http.Http_header.Header);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L69"
        if (_m == null) {
            _m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            (@:checkr _rw ?? throw "null pointer dereference").headerMap = _m;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/recorder.go#L73"
        return _m;
    }
}
