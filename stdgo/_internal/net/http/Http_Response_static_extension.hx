package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Response_asInterface) class Response_static_extension {
    @:keep
    static public function _isProtocolSwitch( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        return stdgo._internal.net.http.Http__isProtocolSwitchResponse._isProtocolSwitchResponse(_r.statusCode, _r.header);
    }
    @:keep
    static public function _bodyIsWritable( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r.body) : stdgo._internal.io.Io_Writer.Writer)) : stdgo._internal.io.Io_Writer.Writer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_Writer.Writer), _1 : false };
        }, __33932 = __tmp__._0, _ok = __tmp__._1;
        return _ok;
    }
    @:keep
    static public function _closeBody( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        if (_r.body != null) {
            _r.body.close();
        };
    }
    @:keep
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        var _text = (_r.status?.__copy__() : stdgo.GoString);
        if (_text == (stdgo.Go.str())) {
            _text = stdgo._internal.net.http.Http_statusText.statusText(_r.statusCode)?.__copy__();
            if (_text == (stdgo.Go.str())) {
                _text = (("status code " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_r.statusCode)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        } else {
            _text = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_text?.__copy__(), (stdgo._internal.strconv.Strconv_itoa.itoa(_r.statusCode) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("HTTP/%d.%d %03d %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_r.protoMajor), stdgo.Go.toInterface(_r.protoMinor), stdgo.Go.toInterface(_r.statusCode), stdgo.Go.toInterface(_text)), __33932:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _r1 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_Response.Response)?.__copy__();
            var x = (_r1 : stdgo._internal.net.http.Http_Response.Response);
            x.status = __tmp__.status;
            x.statusCode = __tmp__.statusCode;
            x.proto = __tmp__.proto;
            x.protoMajor = __tmp__.protoMajor;
            x.protoMinor = __tmp__.protoMinor;
            x.header = __tmp__.header;
            x.body = __tmp__.body;
            x.contentLength = __tmp__.contentLength;
            x.transferEncoding = __tmp__.transferEncoding;
            x.close = __tmp__.close;
            x.uncompressed = __tmp__.uncompressed;
            x.trailer = __tmp__.trailer;
            x.request = __tmp__.request;
            x.tls = __tmp__.tls;
        };
        if (((_r1.contentLength == (0i64 : stdgo.GoInt64)) && (_r1.body != null) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
            var __tmp__ = _r1.body.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                return _err;
            };
            if (_n == ((0 : stdgo.GoInt))) {
                _r1.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
            } else {
                _r1.contentLength = (-1i64 : stdgo.GoInt64);
                _r1.body = stdgo.Go.asInterface(({ reader : stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))), _r.body), closer : _r.body } : stdgo._internal.net.http.Http_T__struct_1.T__struct_1));
            };
        };
        if (((((_r1.contentLength == ((-1i64 : stdgo.GoInt64)) && !_r1.close : Bool) && _r1.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : Bool) && !stdgo._internal.net.http.Http__chunked._chunked(_r1.transferEncoding) : Bool) && !_r1.uncompressed : Bool)) {
            _r1.close = true;
        };
        var __tmp__ = stdgo._internal.net.http.Http__newTransferWriter._newTransferWriter(stdgo.Go.toInterface(stdgo.Go.asInterface(_r1))), _tw:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _err = _tw._writeHeader(_w, null);
        if (_err != null) {
            return _err;
        };
        _err = _r.header.writeSubset(_w, stdgo._internal.net.http.Http__respExcludeHeader._respExcludeHeader);
        if (_err != null) {
            return _err;
        };
        var _contentLengthAlreadySent = (_tw._shouldSendContentLength() : Bool);
        if ((((_r1.contentLength == ((0i64 : stdgo.GoInt64)) && !stdgo._internal.net.http.Http__chunked._chunked(_r1.transferEncoding) : Bool) && !_contentLengthAlreadySent : Bool) && stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_r.statusCode) : Bool)) {
            {
                var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("Content-Length: 0\r\n" : stdgo.GoString)), __33933:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, ("\r\n" : stdgo.GoString)), __33933:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _err = _tw._writeBody(_w);
        if (_err != null) {
            return _err;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        return ((_r.protoMajor > _major : Bool) || (_r.protoMajor == (_major) && (_r.protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    static public function location( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        var _lv = (_r.header.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_lv == (stdgo.Go.str())) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errNoLocation.errNoLocation };
        };
        if (((_r.request != null && ((_r.request : Dynamic).__nil__ == null || !(_r.request : Dynamic).__nil__)) && (_r.request.url != null && ((_r.request.url : Dynamic).__nil__ == null || !(_r.request.url : Dynamic).__nil__)) : Bool)) {
            return _r.request.url.parse(_lv?.__copy__());
        };
        return stdgo._internal.net.url.Url_parse.parse(_lv?.__copy__());
    }
    @:keep
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = _r;
        return stdgo._internal.net.http.Http__readSetCookies._readSetCookies(_r.header);
    }
}
