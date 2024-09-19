package stdgo._internal.net.http;
function readResponse(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        var _tp = stdgo._internal.net.textproto.Textproto_newReader.newReader(_r);
        var _resp = (stdgo.Go.setRef(({ request : _req } : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        var __tmp__ = _tp.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (" " : stdgo.GoString)), _proto:stdgo.GoString = __tmp__._0, _status:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP response" : stdgo.GoString), _line?.__copy__()) };
        };
        _resp.proto = _proto?.__copy__();
        _resp.status = stdgo._internal.strings.Strings_trimLeft.trimLeft(_status?.__copy__(), (" " : stdgo.GoString))?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_resp.status?.__copy__(), (" " : stdgo.GoString)), _statusCode:stdgo.GoString = __tmp__._0, __143:stdgo.GoString = __tmp__._1, __144:Bool = __tmp__._2;
        if ((_statusCode.length) != ((3 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP status code" : stdgo.GoString), _statusCode?.__copy__()) };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_statusCode?.__copy__());
            _resp.statusCode = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) || (_resp.statusCode < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP status code" : stdgo.GoString), _statusCode?.__copy__()) };
        };
        {
            {
                var __tmp__ = stdgo._internal.net.http.Http_parseHTTPVersion.parseHTTPVersion(_resp.proto?.__copy__());
                _resp.protoMajor = __tmp__._0;
                _resp.protoMinor = __tmp__._1;
                _ok = __tmp__._2;
            };
            if (!_ok) {
                return { _0 : null, _1 : stdgo._internal.net.http.Http__badStringError._badStringError(("malformed HTTP version" : stdgo.GoString), _resp.proto?.__copy__()) };
            };
        };
        var __tmp__ = _tp.readMIMEHeader(), _mimeHeader:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
            };
            return { _0 : null, _1 : _err };
        };
        _resp.header = (_mimeHeader : stdgo._internal.net.http.Http_Header.Header);
        stdgo._internal.net.http.Http__fixPragmaCacheControl._fixPragmaCacheControl(_resp.header);
        _err = stdgo._internal.net.http.Http__readTransfer._readTransfer(stdgo.Go.toInterface(stdgo.Go.asInterface(_resp)), _r);
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : _resp, _1 : (null : stdgo.Error) };
    }
