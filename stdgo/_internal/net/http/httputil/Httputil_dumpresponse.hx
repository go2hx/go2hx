package stdgo._internal.net.http.httputil;
function dumpResponse(_resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _body:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _err:stdgo.Error = (null : stdgo.Error);
        var _save = ((@:checkr _resp ?? throw "null pointer dereference").body : stdgo._internal.io.Io_readcloser.ReadCloser);
        var _savecl = ((@:checkr _resp ?? throw "null pointer dereference").contentLength : stdgo.GoInt64);
        if (!_body) {
            if ((@:checkr _resp ?? throw "null pointer dereference").contentLength == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _resp ?? throw "null pointer dereference").body = stdgo._internal.net.http.httputil.Httputil__emptybody._emptyBody;
            } else {
                (@:checkr _resp ?? throw "null pointer dereference").body = stdgo.Go.asInterface((new stdgo._internal.net.http.httputil.Httputil_t_failuretoreadbody.T_failureToReadBody() : stdgo._internal.net.http.httputil.Httputil_t_failuretoreadbody.T_failureToReadBody));
            };
        } else if ((@:checkr _resp ?? throw "null pointer dereference").body == null) {
            (@:checkr _resp ?? throw "null pointer dereference").body = stdgo._internal.net.http.httputil.Httputil__emptybody._emptyBody;
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.httputil.Httputil__drainbody._drainBody((@:checkr _resp ?? throw "null pointer dereference").body);
                _save = @:tmpset0 __tmp__._0;
                (@:checkr _resp ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        _err = @:check2r _resp.write(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.httputil.Httputil__errnobody._errNoBody))) {
            _err = (null : stdgo.Error);
        };
        (@:checkr _resp ?? throw "null pointer dereference").body = _save;
        (@:checkr _resp ?? throw "null pointer dereference").contentLength = _savecl;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : @:check2 _b.bytes(), _1 : (null : stdgo.Error) };
    }
