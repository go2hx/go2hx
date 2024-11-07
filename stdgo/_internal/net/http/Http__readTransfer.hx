package stdgo._internal.net.http;
function _readTransfer(_msg:stdgo.AnyInterface, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _t = (stdgo.Go.setRef(({ requestMethod : ("GET" : stdgo.GoString) } : stdgo._internal.net.http.Http_T_transferReader.T_transferReader)) : stdgo.Ref<stdgo._internal.net.http.Http_T_transferReader.T_transferReader>);
        var _isResponse = (false : Bool);
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                _t.header = _rr.header;
                _t.statusCode = _rr.statusCode;
                _t.protoMajor = _rr.protoMajor;
                _t.protoMinor = _rr.protoMinor;
                _t.close = stdgo._internal.net.http.Http__shouldClose._shouldClose(_t.protoMajor, _t.protoMinor, _t.header, true);
                _isResponse = true;
                if ((_rr.request != null && ((_rr.request : Dynamic).__nil__ == null || !(_rr.request : Dynamic).__nil__))) {
                    _t.requestMethod = _rr.request.method?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                _t.header = _rr.header;
                _t.requestMethod = _rr.method?.__copy__();
                _t.protoMajor = _rr.protoMajor;
                _t.protoMinor = _rr.protoMinor;
                _t.statusCode = (200 : stdgo.GoInt);
                _t.close = _rr.close;
            } else {
                var _rr:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(("unexpected type" : stdgo.GoString));
            };
        };
        if (((_t.protoMajor == (0 : stdgo.GoInt)) && (_t.protoMinor == (0 : stdgo.GoInt)) : Bool)) {
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                _t.protoMajor = __tmp__0;
                _t.protoMinor = __tmp__1;
            };
        };
        {
            var _err = (_t._parseTransferEncoding() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__fixLength._fixLength(_isResponse, _t.statusCode, _t.requestMethod?.__copy__(), _t.header, _t.chunked), _realLength:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((_isResponse && (_t.requestMethod == ("HEAD" : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.net.http.Http__parseContentLength._parseContentLength(_t.header._get(("Content-Length" : stdgo.GoString))?.__copy__()), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                } else {
                    _t.contentLength = _n;
                };
            };
        } else {
            _t.contentLength = _realLength;
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__fixTrailer._fixTrailer(_t.header, _t.chunked);
            _t.trailer = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                if (((_realLength == ((-1i64 : stdgo.GoInt64)) && !_t.chunked : Bool) && stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_t.statusCode) : Bool)) {
                    _t.close = true;
                };
            };
        };
        if (_t.chunked) {
            if ((_isResponse && ((stdgo._internal.net.http.Http__noResponseBodyExpected._noResponseBodyExpected(_t.requestMethod?.__copy__()) || !stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_t.statusCode) : Bool)) : Bool)) {
                _t.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
            } else {
                _t.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo._internal.net.http.internal.Internal_newChunkedReader.newChunkedReader(stdgo.Go.asInterface(_r)), _hdr : _msg, _r : _r, _closing : _t.close } : stdgo._internal.net.http.Http_T_body.T_body)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>));
            };
        } else if (_realLength == ((0i64 : stdgo.GoInt64))) {
            _t.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
        } else if ((_realLength > (0i64 : stdgo.GoInt64) : Bool)) {
            _t.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo._internal.io.Io_limitReader.limitReader(stdgo.Go.asInterface(_r), _realLength), _closing : _t.close } : stdgo._internal.net.http.Http_T_body.T_body)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>));
        } else {
            if (_t.close) {
                _t.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo.Go.asInterface(_r), _closing : _t.close } : stdgo._internal.net.http.Http_T_body.T_body)) : stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>));
            } else {
                _t.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
            };
        };
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                _rr.body = _t.body;
                _rr.contentLength = _t.contentLength;
                if (_t.chunked) {
                    _rr.transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                _rr.close = _t.close;
                _rr.trailer = _t.trailer;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                _rr.body = _t.body;
                _rr.contentLength = _t.contentLength;
                if (_t.chunked) {
                    _rr.transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                _rr.close = _t.close;
                _rr.trailer = _t.trailer;
            };
        };
        return (null : stdgo.Error);
    }
