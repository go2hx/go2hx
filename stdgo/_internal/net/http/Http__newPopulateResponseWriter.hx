package stdgo._internal.net.http;
function _newPopulateResponseWriter():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>; var _1 : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>; } {
        var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_PipeReader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_PipeWriter.PipeWriter> = __tmp__._1;
        var _rw = (stdgo.Go.setRef(({ _ch : (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>(0, () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>), _pw : _pw, _res : (stdgo.Go.setRef(({ proto : ("HTTP/1.0" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), close : true, body : stdgo.Go.asInterface(_pr) } : stdgo._internal.net.http.Http_Response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) } : stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse)) : stdgo.Ref<stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse>);
        return { _0 : _rw, _1 : (@:checkr _rw ?? throw "null pointer dereference")._ch };
    }
