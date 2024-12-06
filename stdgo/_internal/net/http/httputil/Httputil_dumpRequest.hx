package stdgo._internal.net.http.httputil;
function dumpRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _save = (_req.body : stdgo._internal.io.Io_ReadCloser.ReadCloser);
        if ((!_body || (_req.body == null) : Bool)) {
            _req.body = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainBody._drainBody(_req.body);
                _save = __tmp__._0;
                _req.body = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _reqURI = (_req.requestURI?.__copy__() : stdgo.GoString);
        if (_reqURI == (stdgo.Go.str())) {
            _reqURI = _req.url.requestURI()?.__copy__();
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b__pointer__), ("%s %s HTTP/%d.%d\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.httputil.Httputil__valueOrDefault._valueOrDefault(_req.method?.__copy__(), ("GET" : stdgo.GoString))), stdgo.Go.toInterface(_reqURI), stdgo.Go.toInterface(_req.protoMajor), stdgo.Go.toInterface(_req.protoMinor));
        var _absRequestURI = (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_req.requestURI?.__copy__(), ("http://" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_req.requestURI?.__copy__(), ("https://" : stdgo.GoString)) : Bool);
        if (!_absRequestURI) {
            var _host = (_req.host?.__copy__() : stdgo.GoString);
            if (((_host == stdgo.Go.str()) && (_req.url != null && ((_req.url : Dynamic).__nil__ == null || !(_req.url : Dynamic).__nil__)) : Bool)) {
                _host = _req.url.host?.__copy__();
            };
            if (_host != (stdgo.Go.str())) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b__pointer__), ("Host: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_host));
            };
        };
        var _chunked = (((_req.transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && (_req.transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool);
        if (((_req.transferEncoding.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b__pointer__), ("Transfer-Encoding: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_req.transferEncoding, ("," : stdgo.GoString))));
        };
        _err = _req.header.writeSubset(stdgo.Go.asInterface(_b__pointer__), stdgo._internal.net.http.httputil.Httputil__reqWriteExcludeHeaderDump._reqWriteExcludeHeaderDump);
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_b__pointer__), ("\r\n" : stdgo.GoString));
        if (_req.body != null) {
            var _dest:stdgo._internal.io.Io_Writer.Writer = stdgo.Go.asInterface(_b__pointer__);
            if (_chunked) {
                _dest = stdgo._internal.net.http.httputil.Httputil_newChunkedWriter.newChunkedWriter(_dest);
            };
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(_dest, _req.body);
                _err = __tmp__._1;
            };
            if (_chunked) {
                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dest) : stdgo._internal.io.Io_Closer.Closer)) : stdgo._internal.io.Io_Closer.Closer).close();
                stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface(_b__pointer__), ("\r\n" : stdgo.GoString));
            };
        };
        _req.body = _save;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : _b.bytes(), _1 : (null : stdgo.Error) };
    }
