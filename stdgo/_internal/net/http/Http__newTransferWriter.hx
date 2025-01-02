package stdgo._internal.net.http;
function _newTransferWriter(_r:stdgo.AnyInterface):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>; var _1 : stdgo.Error; } {
        var _t = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>), _err = (null : stdgo.Error);
        _t = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter() : stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter)) : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>);
        var _atLeastHTTP11 = (false : Bool);
        {
            final __type__ = _r;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                if ((((@:checkr _rr ?? throw "null pointer dereference").contentLength != (0i64 : stdgo.GoInt64)) && ((@:checkr _rr ?? throw "null pointer dereference").body == null) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: Request.ContentLength=%d with nil Body" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _rr ?? throw "null pointer dereference").contentLength)) };
                        _t = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _t ?? throw "null pointer dereference").method = stdgo._internal.net.http.Http__valueOrDefault._valueOrDefault((@:checkr _rr ?? throw "null pointer dereference").method?.__copy__(), ("GET" : stdgo.GoString))?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference").close = (@:checkr _rr ?? throw "null pointer dereference").close;
                (@:checkr _t ?? throw "null pointer dereference").transferEncoding = (@:checkr _rr ?? throw "null pointer dereference").transferEncoding;
                (@:checkr _t ?? throw "null pointer dereference").header = (@:checkr _rr ?? throw "null pointer dereference").header;
                (@:checkr _t ?? throw "null pointer dereference").trailer = (@:checkr _rr ?? throw "null pointer dereference").trailer;
                (@:checkr _t ?? throw "null pointer dereference").body = (@:checkr _rr ?? throw "null pointer dereference").body;
                (@:checkr _t ?? throw "null pointer dereference").bodyCloser = (@:checkr _rr ?? throw "null pointer dereference").body;
                (@:checkr _t ?? throw "null pointer dereference").contentLength = @:check2r _rr._outgoingLength();
                if (((((@:checkr _t ?? throw "null pointer dereference").contentLength < (0i64 : stdgo.GoInt64) : Bool) && ((@:checkr _t ?? throw "null pointer dereference").transferEncoding.length) == ((0 : stdgo.GoInt)) : Bool) && @:check2r _t._shouldSendChunkedRequestBody() : Bool)) {
                    (@:checkr _t ?? throw "null pointer dereference").transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                if ((((@:checkr _t ?? throw "null pointer dereference").contentLength != (0i64 : stdgo.GoInt64)) && !stdgo._internal.net.http.Http__isKnownInMemoryReader._isKnownInMemoryReader((@:checkr _t ?? throw "null pointer dereference").body) : Bool)) {
                    (@:checkr _t ?? throw "null pointer dereference").flushHeaders = true;
                };
                _atLeastHTTP11 = true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                (@:checkr _t ?? throw "null pointer dereference").isResponse = true;
                if (((@:checkr _rr ?? throw "null pointer dereference").request != null && (((@:checkr _rr ?? throw "null pointer dereference").request : Dynamic).__nil__ == null || !((@:checkr _rr ?? throw "null pointer dereference").request : Dynamic).__nil__))) {
                    (@:checkr _t ?? throw "null pointer dereference").method = (@:checkr (@:checkr _rr ?? throw "null pointer dereference").request ?? throw "null pointer dereference").method?.__copy__();
                };
                (@:checkr _t ?? throw "null pointer dereference").body = (@:checkr _rr ?? throw "null pointer dereference").body;
                (@:checkr _t ?? throw "null pointer dereference").bodyCloser = (@:checkr _rr ?? throw "null pointer dereference").body;
                (@:checkr _t ?? throw "null pointer dereference").contentLength = (@:checkr _rr ?? throw "null pointer dereference").contentLength;
                (@:checkr _t ?? throw "null pointer dereference").close = (@:checkr _rr ?? throw "null pointer dereference").close;
                (@:checkr _t ?? throw "null pointer dereference").transferEncoding = (@:checkr _rr ?? throw "null pointer dereference").transferEncoding;
                (@:checkr _t ?? throw "null pointer dereference").header = (@:checkr _rr ?? throw "null pointer dereference").header;
                (@:checkr _t ?? throw "null pointer dereference").trailer = (@:checkr _rr ?? throw "null pointer dereference").trailer;
                _atLeastHTTP11 = @:check2r _rr.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt));
                (@:checkr _t ?? throw "null pointer dereference").responseToHEAD = stdgo._internal.net.http.Http__noResponseBodyExpected._noResponseBodyExpected((@:checkr _t ?? throw "null pointer dereference").method?.__copy__());
            };
        };
        if ((@:checkr _t ?? throw "null pointer dereference").responseToHEAD) {
            (@:checkr _t ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_Reader.Reader);
            if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
                (@:checkr _t ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
            };
        } else {
            if ((!_atLeastHTTP11 || ((@:checkr _t ?? throw "null pointer dereference").body == null) : Bool)) {
                (@:checkr _t ?? throw "null pointer dereference").transferEncoding = (null : stdgo.Slice<stdgo.GoString>);
            };
            if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
                (@:checkr _t ?? throw "null pointer dereference").contentLength = (-1i64 : stdgo.GoInt64);
            } else if ((@:checkr _t ?? throw "null pointer dereference").body == null) {
                (@:checkr _t ?? throw "null pointer dereference").contentLength = (0i64 : stdgo.GoInt64);
            };
        };
        if (!stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw "null pointer dereference").transferEncoding)) {
            (@:checkr _t ?? throw "null pointer dereference").trailer = null;
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
            _t = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
