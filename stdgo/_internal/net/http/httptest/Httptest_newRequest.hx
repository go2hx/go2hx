package stdgo._internal.net.http.httptest;
function newRequest(_method:stdgo.GoString, _target:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> {
        if (_method == (stdgo.Go.str())) {
            _method = ("GET" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.http.Http_readRequest.readRequest(stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader((((_method + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _target?.__copy__() : stdgo.GoString) + (" HTTP/1.0\r\n\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())))), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface((("invalid NewRequest arguments; " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        _req.proto = ("HTTP/1.1" : stdgo.GoString);
        _req.protoMinor = (1 : stdgo.GoInt);
        _req.close = false;
        if (_body != null) {
            {
                final __type__ = _body;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) : __type__.__underlying__().value;
                    _req.contentLength = (_v.len() : stdgo.GoInt64);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Reader.Reader>) : __type__.__underlying__().value;
                    _req.contentLength = (_v.len() : stdgo.GoInt64);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>))) {
                    var _v:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>) : __type__.__underlying__().value;
                    _req.contentLength = (_v.len() : stdgo.GoInt64);
                } else {
                    var _v:stdgo._internal.io.Io_Reader.Reader = __type__ == null ? (null : stdgo._internal.io.Io_Reader.Reader) : cast __type__;
                    _req.contentLength = (-1i64 : stdgo.GoInt64);
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_body) : stdgo._internal.io.Io_ReadCloser.ReadCloser)) : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : false };
                }, _rc = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _req.body = _rc;
                } else {
                    _req.body = stdgo._internal.io.Io_nopCloser.nopCloser(_body);
                };
            };
        };
        _req.remoteAddr = ("192.0.2.1:1234" : stdgo.GoString);
        if (_req.host == (stdgo.Go.str())) {
            _req.host = ("example.com" : stdgo.GoString);
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_target?.__copy__(), ("https://" : stdgo.GoString))) {
            _req.tls = (stdgo.Go.setRef(({ version : (771 : stdgo.GoUInt16), handshakeComplete : true, serverName : _req.host?.__copy__() } : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState>);
        };
        return _req;
    }
