package stdgo._internal.net.http;
function newRequestWithContext(_ctx:stdgo._internal.context.Context_context.Context, _method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        if (_method == ((stdgo.Go.str() : stdgo.GoString))) {
            _method = ("GET" : stdgo.GoString);
        };
        if (!stdgo._internal.net.http.Http__validmethod._validMethod(_method?.__copy__())) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__fmt._fmt.errorf(("net/http: invalid method %q" : stdgo.GoString), stdgo.Go.toInterface(_method)) };
        };
        if (_ctx == null) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__errors._errors.new_(("net/http: nil Context" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.net.http.Http__urlpkg._urlpkg.parse(_url?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_body) : stdgo._internal.io.Io_readcloser.ReadCloser)) : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : false };
        }, _rc = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok && (_body != null) : Bool)) {
            _rc = stdgo._internal.net.http.Http__io._io.nopCloser(_body);
        };
        (@:checkr _u ?? throw "null pointer dereference").host = stdgo._internal.net.http.Http__removeemptyport._removeEmptyPort((@:checkr _u ?? throw "null pointer dereference").host?.__copy__())?.__copy__();
        var _req = (stdgo.Go.setRef(({ _ctx : _ctx, method : _method?.__copy__(), uRL : _u, proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), body : _rc, host : (@:checkr _u ?? throw "null pointer dereference").host?.__copy__() } : stdgo._internal.net.http.Http_request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        if (_body != null) {
            {
                final __type__ = _body;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__().value;
                    (@:checkr _req ?? throw "null pointer dereference").contentLength = (@:check2r _v.len() : stdgo.GoInt64);
                    var _buf = @:check2r _v.bytes();
                    (@:checkr _req ?? throw "null pointer dereference").getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = stdgo._internal.net.http.Http__bytes._bytes.newReader(_buf);
                        return { _0 : stdgo._internal.net.http.Http__io._io.nopCloser(stdgo.Go.asInterface(_r)), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>) : __type__.__underlying__().value;
                    (@:checkr _req ?? throw "null pointer dereference").contentLength = (@:check2r _v.len() : stdgo.GoInt64);
                    var _snapshot = ((_v : stdgo._internal.bytes.Bytes_reader.Reader)?.__copy__() : stdgo._internal.bytes.Bytes_reader.Reader);
                    (@:checkr _req ?? throw "null pointer dereference").getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = (_snapshot?.__copy__() : stdgo._internal.bytes.Bytes_reader.Reader);
                        return { _0 : stdgo._internal.net.http.Http__io._io.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>))), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>))) {
                    var _v:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>) : __type__.__underlying__().value;
                    (@:checkr _req ?? throw "null pointer dereference").contentLength = (@:check2r _v.len() : stdgo.GoInt64);
                    var _snapshot = ((_v : stdgo._internal.strings.Strings_reader.Reader)?.__copy__() : stdgo._internal.strings.Strings_reader.Reader);
                    (@:checkr _req ?? throw "null pointer dereference").getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = (_snapshot?.__copy__() : stdgo._internal.strings.Strings_reader.Reader);
                        return { _0 : stdgo._internal.net.http.Http__io._io.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>))), _1 : (null : stdgo.Error) };
                    };
                } else {
                    var _v:stdgo._internal.io.Io_reader.Reader = __type__ == null ? (null : stdgo._internal.io.Io_reader.Reader) : cast __type__;
                };
            };
            if ((((@:checkr _req ?? throw "null pointer dereference").getBody != null) && ((@:checkr _req ?? throw "null pointer dereference").contentLength == (0i64 : stdgo.GoInt64)) : Bool)) {
                (@:checkr _req ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody);
                (@:checkr _req ?? throw "null pointer dereference").getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                    return { _0 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody), _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : _req, _1 : (null : stdgo.Error) };
    }
