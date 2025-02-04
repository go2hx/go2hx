package stdgo._internal.net.http.cgi;
function serve(_handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error {
        var __tmp__ = stdgo._internal.net.http.cgi.Cgi_request.request(), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if ((@:checkr _req ?? throw "null pointer dereference").body == null) {
            (@:checkr _req ?? throw "null pointer dereference").body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody);
        };
        if (_handler == null) {
            _handler = stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultservemux.defaultServeMux);
        };
        var _rw = (stdgo.Go.setRef(({ _req : _req, _header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), _bufw : stdgo._internal.bufio.Bufio_newwriter.newWriter(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout)) } : stdgo._internal.net.http.cgi.Cgi_t_response.T_response)) : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_t_response.T_response>);
        _handler.serveHTTP(stdgo.Go.asInterface(_rw), _req);
        @:check2r _rw.write((null : stdgo.Slice<stdgo.GoUInt8>));
        {
            _err = @:check2r (@:checkr _rw ?? throw "null pointer dereference")._bufw.flush();
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
