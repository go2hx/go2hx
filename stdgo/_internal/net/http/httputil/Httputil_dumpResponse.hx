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
function dumpResponse(_resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _err:stdgo.Error = (null : stdgo.Error);
        var _save = ((@:checkr _resp ?? throw "null pointer dereference").body : stdgo._internal.io.Io_ReadCloser.ReadCloser);
        var _savecl = ((@:checkr _resp ?? throw "null pointer dereference").contentLength : stdgo.GoInt64);
        if (!_body) {
            if ((@:checkr _resp ?? throw "null pointer dereference").contentLength == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _resp ?? throw "null pointer dereference").body = stdgo._internal.net.http.httputil.Httputil__emptyBody._emptyBody;
            } else {
                (@:checkr _resp ?? throw "null pointer dereference").body = stdgo.Go.asInterface((new stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody() : stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody));
            };
        } else if ((@:checkr _resp ?? throw "null pointer dereference").body == null) {
            (@:checkr _resp ?? throw "null pointer dereference").body = stdgo._internal.net.http.httputil.Httputil__emptyBody._emptyBody;
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainBody._drainBody((@:checkr _resp ?? throw "null pointer dereference").body);
                _save = @:tmpset0 __tmp__._0;
                (@:checkr _resp ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        _err = @:check2r _resp.write(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.httputil.Httputil__errNoBody._errNoBody))) {
            _err = (null : stdgo.Error);
        };
        (@:checkr _resp ?? throw "null pointer dereference").body = _save;
        (@:checkr _resp ?? throw "null pointer dereference").contentLength = _savecl;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : @:check2 _b.bytes(), _1 : (null : stdgo.Error) };
    }
