package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
function dumpRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        var _save = ((@:checkr _req ?? throw "null pointer dereference").body : stdgo._internal.io.Io_ReadCloser.ReadCloser);
        if ((!_body || ((@:checkr _req ?? throw "null pointer dereference").body == null) : Bool)) {
            (@:checkr _req ?? throw "null pointer dereference").body = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainBody._drainBody((@:checkr _req ?? throw "null pointer dereference").body);
                _save = @:tmpset0 __tmp__._0;
                (@:checkr _req ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _reqURI = ((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__() : stdgo.GoString);
        if (_reqURI == (stdgo.Go.str())) {
            _reqURI = @:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.requestURI()?.__copy__();
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%s %s HTTP/%d.%d\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.net.http.httputil.Httputil__valueOrDefault._valueOrDefault((@:checkr _req ?? throw "null pointer dereference").method?.__copy__(), ("GET" : stdgo.GoString))), stdgo.Go.toInterface(_reqURI), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").protoMajor), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").protoMinor));
        var _absRequestURI = (stdgo._internal.strings.Strings_hasPrefix.hasPrefix((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__(), ("http://" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasPrefix.hasPrefix((@:checkr _req ?? throw "null pointer dereference").requestURI?.__copy__(), ("https://" : stdgo.GoString)) : Bool);
        if (!_absRequestURI) {
            var _host = ((@:checkr _req ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
            if (((_host == stdgo.Go.str()) && ((@:checkr _req ?? throw "null pointer dereference").uRL != null && (((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__ == null || !((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) : Bool)) {
                _host = (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__();
            };
            if (_host != (stdgo.Go.str())) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("Host: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(_host));
            };
        };
        var _chunked = ((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").transferEncoding[(0 : stdgo.GoInt)] == ("chunked" : stdgo.GoString)) : Bool);
        if ((((@:checkr _req ?? throw "null pointer dereference").transferEncoding.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("Transfer-Encoding: %s\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join((@:checkr _req ?? throw "null pointer dereference").transferEncoding, ("," : stdgo.GoString))));
        };
        _err = (@:checkr _req ?? throw "null pointer dereference").header.writeSubset(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo._internal.net.http.httputil.Httputil__reqWriteExcludeHeaderDump._reqWriteExcludeHeaderDump);
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("\r\n" : stdgo.GoString));
        if ((@:checkr _req ?? throw "null pointer dereference").body != null) {
            var _dest:stdgo._internal.io.Io_Writer.Writer = stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>));
            if (_chunked) {
                _dest = stdgo._internal.net.http.httputil.Httputil_newChunkedWriter.newChunkedWriter(_dest);
            };
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(_dest, (@:checkr _req ?? throw "null pointer dereference").body);
                _err = @:tmpset0 __tmp__._1;
            };
            if (_chunked) {
                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dest) : stdgo._internal.io.Io_Closer.Closer)) : stdgo._internal.io.Io_Closer.Closer).close();
                stdgo._internal.io.Io_writeString.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("\r\n" : stdgo.GoString));
            };
        };
        (@:checkr _req ?? throw "null pointer dereference").body = _save;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : @:check2 _b.bytes(), _1 : (null : stdgo.Error) };
    }
