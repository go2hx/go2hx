package stdgo._internal.net.http;
function _readTransfer(_msg:stdgo.AnyInterface, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _t = (stdgo.Go.setRef(({ requestMethod : ("GET" : stdgo.GoString) } : stdgo._internal.net.http.Http_T_transferReader.T_transferReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_transferReader.T_transferReader>);
        var _isResponse = (false : Bool);
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                (@:checkr _t ?? throw "null pointer dereference").header = (@:checkr _rr ?? throw "null pointer dereference").header;
                (@:checkr _t ?? throw "null pointer dereference").statusCode = (@:checkr _rr ?? throw "null pointer dereference").statusCode;
                (@:checkr _t ?? throw "null pointer dereference").protoMajor = (@:checkr _rr ?? throw "null pointer dereference").protoMajor;
                (@:checkr _t ?? throw "null pointer dereference").protoMinor = (@:checkr _rr ?? throw "null pointer dereference").protoMinor;
                (@:checkr _t ?? throw "null pointer dereference").close = stdgo._internal.net.http.Http__shouldClose._shouldClose((@:checkr _t ?? throw "null pointer dereference").protoMajor, (@:checkr _t ?? throw "null pointer dereference").protoMinor, (@:checkr _t ?? throw "null pointer dereference").header, true);
                _isResponse = true;
                if (((@:checkr _rr ?? throw "null pointer dereference").request != null && (((@:checkr _rr ?? throw "null pointer dereference").request : Dynamic).__nil__ == null || !((@:checkr _rr ?? throw "null pointer dereference").request : Dynamic).__nil__))) {
                    (@:checkr _t ?? throw "null pointer dereference").requestMethod = (@:checkr (@:checkr _rr ?? throw "null pointer dereference").request ?? throw "null pointer dereference").method?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                (@:checkr _t ?? throw "null pointer dereference").header = (@:checkr _rr ?? throw "null pointer dereference").header;
                (@:checkr _t ?? throw "null pointer dereference").requestMethod = (@:checkr _rr ?? throw "null pointer dereference").method?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference").protoMajor = (@:checkr _rr ?? throw "null pointer dereference").protoMajor;
                (@:checkr _t ?? throw "null pointer dereference").protoMinor = (@:checkr _rr ?? throw "null pointer dereference").protoMinor;
                (@:checkr _t ?? throw "null pointer dereference").statusCode = (200 : stdgo.GoInt);
                (@:checkr _t ?? throw "null pointer dereference").close = (@:checkr _rr ?? throw "null pointer dereference").close;
            } else {
                var _rr:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(("unexpected type" : stdgo.GoString));
            };
        };
        if ((((@:checkr _t ?? throw "null pointer dereference").protoMajor == (0 : stdgo.GoInt)) && ((@:checkr _t ?? throw "null pointer dereference").protoMinor == (0 : stdgo.GoInt)) : Bool)) {
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                (@:checkr _t ?? throw "null pointer dereference").protoMajor = __tmp__0;
                (@:checkr _t ?? throw "null pointer dereference").protoMinor = __tmp__1;
            };
        };
        {
            var _err = (@:check2r _t._parseTransferEncoding() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__fixLength._fixLength(_isResponse, (@:checkr _t ?? throw "null pointer dereference").statusCode, (@:checkr _t ?? throw "null pointer dereference").requestMethod?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").header, (@:checkr _t ?? throw "null pointer dereference").chunked), _realLength:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((_isResponse && ((@:checkr _t ?? throw "null pointer dereference").requestMethod == ("HEAD" : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.http.Http__parseContentLength._parseContentLength((@:checkr _t ?? throw "null pointer dereference").header._get(("Content-Length" : stdgo.GoString))?.__copy__()), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                } else {
                    (@:checkr _t ?? throw "null pointer dereference").contentLength = _n;
                };
            };
        } else {
            (@:checkr _t ?? throw "null pointer dereference").contentLength = _realLength;
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__fixTrailer._fixTrailer((@:checkr _t ?? throw "null pointer dereference").header, (@:checkr _t ?? throw "null pointer dereference").chunked);
            (@:checkr _t ?? throw "null pointer dereference").trailer = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                if (((_realLength == ((-1i64 : stdgo.GoInt64)) && !(@:checkr _t ?? throw "null pointer dereference").chunked : Bool) && stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus((@:checkr _t ?? throw "null pointer dereference").statusCode) : Bool)) {
                    (@:checkr _t ?? throw "null pointer dereference").close = true;
                };
            };
        };
        if ((@:checkr _t ?? throw "null pointer dereference").chunked) {
            if ((_isResponse && ((stdgo._internal.net.http.Http__noResponseBodyExpected._noResponseBodyExpected((@:checkr _t ?? throw "null pointer dereference").requestMethod?.__copy__()) || !stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus((@:checkr _t ?? throw "null pointer dereference").statusCode) : Bool)) : Bool)) {
                (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
            } else {
                (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo._internal.net.http.internal.Internal_newChunkedReader.newChunkedReader(stdgo.Go.asInterface(_r)), _hdr : _msg, _r : _r, _closing : (@:checkr _t ?? throw "null pointer dereference").close } : stdgo._internal.net.http.Http_T_body.T_body)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>));
            };
        } else if (_realLength == ((0i64 : stdgo.GoInt64))) {
            (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
        } else if ((_realLength > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo._internal.io.Io_limitReader.limitReader(stdgo.Go.asInterface(_r), _realLength), _closing : (@:checkr _t ?? throw "null pointer dereference").close } : stdgo._internal.net.http.Http_T_body.T_body)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>));
        } else {
            if ((@:checkr _t ?? throw "null pointer dereference").close) {
                (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo.Go.asInterface(_r), _closing : (@:checkr _t ?? throw "null pointer dereference").close } : stdgo._internal.net.http.Http_T_body.T_body)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>));
            } else {
                (@:checkr _t ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
            };
        };
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                (@:checkr _rr ?? throw "null pointer dereference").body = (@:checkr _t ?? throw "null pointer dereference").body;
                (@:checkr _rr ?? throw "null pointer dereference").contentLength = (@:checkr _t ?? throw "null pointer dereference").contentLength;
                if ((@:checkr _t ?? throw "null pointer dereference").chunked) {
                    (@:checkr _rr ?? throw "null pointer dereference").transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                (@:checkr _rr ?? throw "null pointer dereference").close = (@:checkr _t ?? throw "null pointer dereference").close;
                (@:checkr _rr ?? throw "null pointer dereference").trailer = (@:checkr _t ?? throw "null pointer dereference").trailer;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                (@:checkr _rr ?? throw "null pointer dereference").body = (@:checkr _t ?? throw "null pointer dereference").body;
                (@:checkr _rr ?? throw "null pointer dereference").contentLength = (@:checkr _t ?? throw "null pointer dereference").contentLength;
                if ((@:checkr _t ?? throw "null pointer dereference").chunked) {
                    (@:checkr _rr ?? throw "null pointer dereference").transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                (@:checkr _rr ?? throw "null pointer dereference").close = (@:checkr _t ?? throw "null pointer dereference").close;
                (@:checkr _rr ?? throw "null pointer dereference").trailer = (@:checkr _t ?? throw "null pointer dereference").trailer;
            };
        };
        return _err = (null : stdgo.Error);
    }
