package stdgo._internal.net.http.httputil;
function dumpRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _save = ((@:checkr _req ?? throw "null pointer dereference").body : stdgo._internal.io.Io_readcloser.ReadCloser);
        if ((!_body || ((@:checkr _req ?? throw "null pointer dereference").body == null) : Bool)) {
            (@:checkr _req ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainbody._drainBody((@:checkr _req ?? throw "null pointer dereference").body);
                _save = @:tmpset0 __tmp__._0;
                (@:checkr _req ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _reqURI = ((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__() : stdgo.GoString);
        if (_reqURI == ((stdgo.Go.str() : stdgo.GoString))) {
            _reqURI = @:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.requestURI()?.__copy__();
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("%s %s HTTP/%d.%d\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.httputil.Httputil__valueordefault._valueOrDefault((@:checkr _req ?? throw "null pointer dereference").method?.__copy__(), ("GET" : stdgo.GoString))), stdgo.Go.toInterface(_reqURI), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").protoMajor), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").protoMinor));
        var _absRequestURI = (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__(), ("http://" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__(), ("https://" : stdgo.GoString)) : Bool);
        if (!_absRequestURI) {
            var _host = ((@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
            if (((_host == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _req ?? throw "null pointer dereference").uRL != null && (((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__ == null || !((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) : Bool)) {
                _host = (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__();
            };
            if (_host != ((stdgo.Go.str() : stdgo.GoString))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("Host: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_host));
            };
        };
        var _chunked = ((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool);
        if ((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("Transfer-Encoding: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join((@:checkr _req ?? throw "null pointer dereference").transferEncoding, ("," : stdgo.GoString))));
        };
        _err = (@:checkr _req ?? throw "null pointer dereference").header.writeSubset(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.net.http.httputil.Httputil__reqwriteexcludeheaderdump._reqWriteExcludeHeaderDump);
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n" : stdgo.GoString));
        if ((@:checkr _req ?? throw "null pointer dereference").body != null) {
            var _dest:stdgo._internal.io.Io_writer.Writer = stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
            if (_chunked) {
                _dest = stdgo._internal.net.http.httputil.Httputil_newchunkedwriter.newChunkedWriter(_dest);
            };
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(_dest, (@:checkr _req ?? throw "null pointer dereference").body);
                _err = @:tmpset0 __tmp__._1;
            };
            if (_chunked) {
                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dest) : stdgo._internal.io.Io_closer.Closer)) : stdgo._internal.io.Io_closer.Closer).close();
                stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n" : stdgo.GoString));
            };
        };
        (@:checkr _req ?? throw "null pointer dereference").body = _save;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : @:check2 _b.bytes(), _1 : (null : stdgo.Error) };
    }
