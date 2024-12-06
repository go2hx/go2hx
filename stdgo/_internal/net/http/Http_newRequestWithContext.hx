package stdgo._internal.net.http;
function newRequestWithContext(_ctx:stdgo._internal.context.Context_Context.Context, _method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        if (_method == (stdgo.Go.str())) {
            _method = ("GET" : stdgo.GoString);
        };
        if (!stdgo._internal.net.http.Http__validMethod._validMethod(_method?.__copy__())) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid method %q" : stdgo.GoString), stdgo.Go.toInterface(_method)) };
        };
        if (_ctx == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/http: nil Context" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_url?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_body) : stdgo._internal.io.Io_ReadCloser.ReadCloser)) : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : false };
        }, _rc = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok && (_body != null) : Bool)) {
            _rc = stdgo._internal.io.Io_nopCloser.nopCloser(_body);
        };
        _u.host = stdgo._internal.net.http.Http__removeEmptyPort._removeEmptyPort(_u.host?.__copy__())?.__copy__();
        var _req = (stdgo.Go.setRef(({ _ctx : _ctx, method : _method?.__copy__(), url : _u, proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), body : _rc, host : _u.host?.__copy__() } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        if (_body != null) {
            {
                final __type__ = _body;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) : __type__.__underlying__().value;
                    _req.contentLength = (_v.len() : stdgo.GoInt64);
                    var _buf = _v.bytes();
                    _req.getBody = function():{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_buf);
                        return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(_r)), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>) : __type__.__underlying__().value;
                    _req.contentLength = (_v.len() : stdgo.GoInt64);
                    var _snapshot = ((_v : stdgo._internal.bytes.Bytes_Reader.Reader)?.__copy__() : stdgo._internal.bytes.Bytes_Reader.Reader);
                    _req.getBody = function():{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = (_snapshot?.__copy__() : stdgo._internal.bytes.Bytes_Reader.Reader);
                        return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>))), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>))) {
                    var _v:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>) : __type__.__underlying__().value;
                    _req.contentLength = (_v.len() : stdgo.GoInt64);
                    var _snapshot = ((_v : stdgo._internal.strings.Strings_Reader.Reader)?.__copy__() : stdgo._internal.strings.Strings_Reader.Reader);
                    _req.getBody = function():{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = (_snapshot?.__copy__() : stdgo._internal.strings.Strings_Reader.Reader);
                        return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>))), _1 : (null : stdgo.Error) };
                    };
                } else {
                    var _v:stdgo._internal.io.Io_Reader.Reader = __type__ == null ? (null : stdgo._internal.io.Io_Reader.Reader) : cast __type__;
                };
            };
            if (((_req.getBody != null) && (_req.contentLength == (0i64 : stdgo.GoInt64)) : Bool)) {
                _req.body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody);
                _req.getBody = function():{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
                    return { _0 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody), _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : _req, _1 : (null : stdgo.Error) };
    }
