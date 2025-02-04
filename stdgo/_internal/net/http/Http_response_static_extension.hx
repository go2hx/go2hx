package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Response_asInterface) class Response_static_extension {
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        var _text = ((@:checkr _r ?? throw "null pointer dereference").status?.__copy__() : stdgo.GoString);
        if (_text == ((stdgo.Go.str() : stdgo.GoString))) {
            _text = stdgo._internal.net.http.Http_statustext.statusText((@:checkr _r ?? throw "null pointer dereference").statusCode)?.__copy__();
            if (_text == ((stdgo.Go.str() : stdgo.GoString))) {
                _text = (("status code " : stdgo.GoString) + stdgo._internal.net.http.Http__strconv._strconv.itoa((@:checkr _r ?? throw "null pointer dereference").statusCode)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        } else {
            _text = stdgo._internal.net.http.Http__strings._strings.trimPrefix(_text?.__copy__(), (stdgo._internal.net.http.Http__strconv._strconv.itoa((@:checkr _r ?? throw "null pointer dereference").statusCode) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__fmt._fmt.fprintf(_w, ("HTTP/%d.%d %03d %s\r\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").protoMajor), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").protoMinor), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference").statusCode), stdgo.Go.toInterface(_text)), __3241:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _r1 = stdgo._internal.net.http.Http_new_.new_(stdgo._internal.net.http.Http_stdgo._internal.net.http.http_response_static_extension.response_static_extension.stdgo._internal.net.http.Http_response_static_extension.Response_static_extension);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_response.Response)?.__copy__();
            var x = (_r1 : stdgo._internal.net.http.Http_response.Response);
            x.status = __tmp__?.status;
            x.statusCode = __tmp__?.statusCode;
            x.proto = __tmp__?.proto;
            x.protoMajor = __tmp__?.protoMajor;
            x.protoMinor = __tmp__?.protoMinor;
            x.header = __tmp__?.header;
            x.body = __tmp__?.body;
            x.contentLength = __tmp__?.contentLength;
            x.transferEncoding = __tmp__?.transferEncoding;
            x.close = __tmp__?.close;
            x.uncompressed = __tmp__?.uncompressed;
            x.trailer = __tmp__?.trailer;
            x.request = __tmp__?.request;
            x.tLS = __tmp__?.tLS;
        };
        if ((((@:checkr _r1 ?? throw "null pointer dereference").contentLength == (0i64 : stdgo.GoInt64)) && ((@:checkr _r1 ?? throw "null pointer dereference").body != null) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
            var __tmp__ = (@:checkr _r1 ?? throw "null pointer dereference").body.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF)) : Bool)) {
                return _err;
            };
            if (_n == ((0 : stdgo.GoInt))) {
                (@:checkr _r1 ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody);
            } else {
                (@:checkr _r1 ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
                (@:checkr _r1 ?? throw "null pointer dereference").body = stdgo.Go.asInterface(({ reader : stdgo._internal.net.http.Http__io._io.multiReader(stdgo.Go.asInterface(stdgo._internal.net.http.Http__bytes._bytes.newReader((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))), (@:checkr _r ?? throw "null pointer dereference").body), closer : (@:checkr _r ?? throw "null pointer dereference").body } : stdgo._internal.net.http.Http_t__struct_1.T__struct_1));
            };
        };
        if ((((((@:checkr _r1 ?? throw "null pointer dereference").contentLength == ((-1i64 : stdgo.GoInt64)) && !(@:checkr _r1 ?? throw "null pointer dereference").close : Bool) && @:check2r _r1.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : Bool) && !stdgo._internal.net.http.Http__chunked._chunked((@:checkr _r1 ?? throw "null pointer dereference").transferEncoding) : Bool) && !(@:checkr _r1 ?? throw "null pointer dereference").uncompressed : Bool)) {
            (@:checkr _r1 ?? throw "null pointer dereference").close = true;
        };
        var __tmp__ = stdgo._internal.net.http.Http__newtransferwriter._newTransferWriter(stdgo.Go.toInterface(stdgo.Go.asInterface(_r1))), _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _err = @:check2r _tw._writeHeader(_w, null);
        if (_err != null) {
            return _err;
        };
        _err = (@:checkr _r ?? throw "null pointer dereference").header.writeSubset(_w, stdgo._internal.net.http.Http__respexcludeheader._respExcludeHeader);
        if (_err != null) {
            return _err;
        };
        var _contentLengthAlreadySent = (@:check2r _tw._shouldSendContentLength() : Bool);
        if (((((@:checkr _r1 ?? throw "null pointer dereference").contentLength == ((0i64 : stdgo.GoInt64)) && !stdgo._internal.net.http.Http__chunked._chunked((@:checkr _r1 ?? throw "null pointer dereference").transferEncoding) : Bool) && !_contentLengthAlreadySent : Bool) && stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _r ?? throw "null pointer dereference").statusCode) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.http.Http__io._io.writeString(_w, ("Content-Length: 0\r\n" : stdgo.GoString)), __3242:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__io._io.writeString(_w, ("\r\n" : stdgo.GoString)), __3242:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _err = @:check2r _tw._writeBody(_w);
        if (_err != null) {
            return _err;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference").protoMajor > _major : Bool) || ((@:checkr _r ?? throw "null pointer dereference").protoMajor == (_major) && ((@:checkr _r ?? throw "null pointer dereference").protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function location( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        var _lv = ((@:checkr _r ?? throw "null pointer dereference").header.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_lv == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errnolocation.errNoLocation };
        };
        if ((((@:checkr _r ?? throw "null pointer dereference").request != null && (((@:checkr _r ?? throw "null pointer dereference").request : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference").request : Dynamic).__nil__)) && ((@:checkr (@:checkr _r ?? throw "null pointer dereference").request ?? throw "null pointer dereference").uRL != null && (((@:checkr (@:checkr _r ?? throw "null pointer dereference").request ?? throw "null pointer dereference").uRL : Dynamic).__nil__ == null || !((@:checkr (@:checkr _r ?? throw "null pointer dereference").request ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) : Bool)) {
            return @:check2r (@:checkr (@:checkr _r ?? throw "null pointer dereference").request ?? throw "null pointer dereference").uRL.parse(_lv?.__copy__());
        };
        return stdgo._internal.net.http.Http__url._url.parse(_lv?.__copy__());
    }
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        return stdgo._internal.net.http.Http__readsetcookies._readSetCookies((@:checkr _r ?? throw "null pointer dereference").header);
    }
}
