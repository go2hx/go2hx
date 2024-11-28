package stdgo._internal.net.http;
function _newTransferWriter(_r:stdgo.AnyInterface):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>; var _1 : stdgo.Error; } {
        var _t = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>), _err = (null : stdgo.Error);
        _t = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter() : stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter)) : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>);
        var _atLeastHTTP11 = (false : Bool);
        {
            final __type__ = _r;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                if (((_rr.contentLength != (0i64 : stdgo.GoInt64)) && (_rr.body == null) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: Request.ContentLength=%d with nil Body" : stdgo.GoString), stdgo.Go.toInterface(_rr.contentLength)) };
                        _t = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _t.method = stdgo._internal.net.http.Http__valueOrDefault._valueOrDefault(_rr.method?.__copy__(), ("GET" : stdgo.GoString))?.__copy__();
                _t.close = _rr.close;
                _t.transferEncoding = _rr.transferEncoding;
                _t.header = _rr.header;
                _t.trailer = _rr.trailer;
                _t.body = _rr.body;
                _t.bodyCloser = _rr.body;
                _t.contentLength = _rr._outgoingLength();
                if ((((_t.contentLength < (0i64 : stdgo.GoInt64) : Bool) && (_t.transferEncoding.length) == ((0 : stdgo.GoInt)) : Bool) && _t._shouldSendChunkedRequestBody() : Bool)) {
                    _t.transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                if (((_t.contentLength != (0i64 : stdgo.GoInt64)) && !stdgo._internal.net.http.Http__isKnownInMemoryReader._isKnownInMemoryReader(_t.body) : Bool)) {
                    _t.flushHeaders = true;
                };
                _atLeastHTTP11 = true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                _t.isResponse = true;
                if ((_rr.request != null && ((_rr.request : Dynamic).__nil__ == null || !(_rr.request : Dynamic).__nil__))) {
                    _t.method = _rr.request.method?.__copy__();
                };
                _t.body = _rr.body;
                _t.bodyCloser = _rr.body;
                _t.contentLength = _rr.contentLength;
                _t.close = _rr.close;
                _t.transferEncoding = _rr.transferEncoding;
                _t.header = _rr.header;
                _t.trailer = _rr.trailer;
                _atLeastHTTP11 = _rr.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt));
                _t.responseToHEAD = stdgo._internal.net.http.Http__noResponseBodyExpected._noResponseBodyExpected(_t.method?.__copy__());
            };
        };
        if (_t.responseToHEAD) {
            _t.body = (null : stdgo._internal.io.Io_Reader.Reader);
            if (stdgo._internal.net.http.Http__chunked._chunked(_t.transferEncoding)) {
                _t.contentLength = (-1i64 : stdgo.GoInt64);
            };
        } else {
            if ((!_atLeastHTTP11 || (_t.body == null) : Bool)) {
                _t.transferEncoding = (null : stdgo.Slice<stdgo.GoString>);
            };
            if (stdgo._internal.net.http.Http__chunked._chunked(_t.transferEncoding)) {
                _t.contentLength = (-1i64 : stdgo.GoInt64);
            } else if (_t.body == null) {
                _t.contentLength = (0i64 : stdgo.GoInt64);
            };
        };
        if (!stdgo._internal.net.http.Http__chunked._chunked(_t.transferEncoding)) {
            _t.trailer = null;
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
            _t = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
