package stdgo._internal.net.http.fcgi;
function _newResponse(_c:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>, _req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response> {
        return (stdgo.Go.setRef(({ _req : _req, _header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), _w : stdgo._internal.net.http.fcgi.Fcgi__newWriter._newWriter((@:checkr _c ?? throw "null pointer dereference")._conn, (6 : stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType), (@:checkr _req ?? throw "null pointer dereference")._reqId) } : stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_response.T_response>);
    }
