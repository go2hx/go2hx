package stdgo._internal.net.http;
function readResponse(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        var _tp = stdgo._internal.net.http.Http__textproto._textproto.newReader(_r);
        var _resp = (stdgo.Go.setRef(({ request : _req } : stdgo._internal.net.http.Http_response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        var __tmp__ = @:check2r _tp.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
                _err = stdgo._internal.net.http.Http__io._io.errUnexpectedEOF;
            };
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.net.http.Http__strings._strings.cut(_line?.__copy__(), (" " : stdgo.GoString)), _proto:stdgo.GoString = __tmp__._0, _status:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP response" : stdgo.GoString), _line?.__copy__()) };
        };
        (@:checkr _resp ?? throw "null pointer dereference").proto = _proto?.__copy__();
        (@:checkr _resp ?? throw "null pointer dereference").status = stdgo._internal.net.http.Http__strings._strings.trimLeft(_status?.__copy__(), (" " : stdgo.GoString))?.__copy__();
        var __tmp__ = stdgo._internal.net.http.Http__strings._strings.cut((@:checkr _resp ?? throw "null pointer dereference").status?.__copy__(), (" " : stdgo.GoString)), _statusCode:stdgo.GoString = __tmp__._0, __4:stdgo.GoString = __tmp__._1, __5:Bool = __tmp__._2;
        if ((_statusCode.length) != ((3 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP status code" : stdgo.GoString), _statusCode?.__copy__()) };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__strconv._strconv.atoi(_statusCode?.__copy__());
            (@:checkr _resp ?? throw "null pointer dereference").statusCode = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_err != null) || ((@:checkr _resp ?? throw "null pointer dereference").statusCode < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP status code" : stdgo.GoString), _statusCode?.__copy__()) };
        };
        {
            {
                var __tmp__ = stdgo._internal.net.http.Http_parsehttpversion.parseHTTPVersion((@:checkr _resp ?? throw "null pointer dereference").proto?.__copy__());
                (@:checkr _resp ?? throw "null pointer dereference").protoMajor = @:tmpset0 __tmp__._0;
                (@:checkr _resp ?? throw "null pointer dereference").protoMinor = @:tmpset0 __tmp__._1;
                _ok = @:tmpset0 __tmp__._2;
            };
            if (!_ok) {
                return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP version" : stdgo.GoString), (@:checkr _resp ?? throw "null pointer dereference").proto?.__copy__()) };
            };
        };
        var __tmp__ = @:check2r _tp.readMIMEHeader(), _mimeHeader:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__io._io.eOF))) {
                _err = stdgo._internal.net.http.Http__io._io.errUnexpectedEOF;
            };
            return { _0 : null, _1 : _err };
        };
        (@:checkr _resp ?? throw "null pointer dereference").header = (_mimeHeader : stdgo._internal.net.http.Http_header.Header);
        stdgo._internal.net.http.Http__fixpragmacachecontrol._fixPragmaCacheControl((@:checkr _resp ?? throw "null pointer dereference").header);
        _err = stdgo._internal.net.http.Http__readtransfer._readTransfer(stdgo.Go.toInterface(stdgo.Go.asInterface(_resp)), _r);
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : _resp, _1 : (null : stdgo.Error) };
    }
