package stdgo._internal.net.http.httputil;
function dumpRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _save = ((@:checkr _req ?? throw "null pointer dereference").body : stdgo._internal.io.Io_readcloser.ReadCloser);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L221"
        if ((!_body || ((@:checkr _req ?? throw "null pointer dereference").body == null) : Bool)) {
            (@:checkr _req ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainbody._drainBody((@:checkr _req ?? throw "null pointer dereference").body);
                _save = @:tmpset0 __tmp__._0;
                (@:checkr _req ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L225"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L226"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _reqURI = ((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L239"
        if (_reqURI == ((stdgo.Go.str() : stdgo.GoString))) {
            _reqURI = (@:checkr _req ?? throw "null pointer dereference").uRL.requestURI()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L243"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("%s %s HTTP/%d.%d\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.httputil.Httputil__valueordefault._valueOrDefault((@:checkr _req ?? throw "null pointer dereference").method?.__copy__(), ("GET" : stdgo.GoString))), stdgo.Go.toInterface(_reqURI), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").protoMajor), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").protoMinor));
        var _absRequestURI = (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__(), ("http://" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__(), ("https://" : stdgo.GoString)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L247"
        if (!_absRequestURI) {
            var _host = ((@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L249"
            if (((_host == (stdgo.Go.str() : stdgo.GoString)) && ({
                final value = (@:checkr _req ?? throw "null pointer dereference").uRL;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                _host = (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L252"
            if (_host != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L253"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("Host: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_host));
            };
        };
        var _chunked = ((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L258"
        if ((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L259"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("Transfer-Encoding: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join((@:checkr _req ?? throw "null pointer dereference").transferEncoding, ("," : stdgo.GoString))));
        };
        _err = (@:checkr _req ?? throw "null pointer dereference").header.writeSubset(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.net.http.httputil.Httputil__reqwriteexcludeheaderdump._reqWriteExcludeHeaderDump);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L263"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L264"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L267"
        stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L269"
        if ((@:checkr _req ?? throw "null pointer dereference").body != null) {
            var _dest:stdgo._internal.io.Io_writer.Writer = stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L271"
            if (_chunked) {
                _dest = stdgo._internal.net.http.httputil.Httputil_newchunkedwriter.newChunkedWriter(_dest);
            };
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(_dest, (@:checkr _req ?? throw "null pointer dereference").body);
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L275"
            if (_chunked) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L276"
                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dest) : stdgo._internal.io.Io_closer.Closer)) : stdgo._internal.io.Io_closer.Closer).close();
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L277"
                stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("\r\n" : stdgo.GoString));
            };
        };
        (@:checkr _req ?? throw "null pointer dereference").body = _save;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L282"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L283"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L285"
        return { _0 : _b.bytes(), _1 : (null : stdgo.Error) };
    }
