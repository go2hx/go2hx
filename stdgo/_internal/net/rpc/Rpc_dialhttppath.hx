package stdgo._internal.net.rpc;
function dialHTTPPath(_network:stdgo.GoString, _address:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _address?.__copy__()), _conn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        stdgo._internal.io.Io_writestring.writeString(_conn, ((("CONNECT " : stdgo.GoString) + _path?.__copy__() : stdgo.GoString) + (" HTTP/1.0\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var __tmp__ = stdgo._internal.net.http.Http_readresponse.readResponse(stdgo._internal.bufio.Bufio_newreader.newReader(_conn), (stdgo.Go.setRef(({ method : ("CONNECT" : stdgo.GoString) } : stdgo._internal.net.http.Http_request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>)), _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) && ((@:checkr _resp ?? throw "null pointer dereference").status == stdgo._internal.net.rpc.Rpc__connected._connected) : Bool)) {
            return { _0 : stdgo._internal.net.rpc.Rpc_newclient.newClient(_conn), _1 : (null : stdgo.Error) };
        };
        if (_err == null) {
            _err = stdgo._internal.errors.Errors_new_.new_((("unexpected HTTP response: " : stdgo.GoString) + (@:checkr _resp ?? throw "null pointer dereference").status?.__copy__() : stdgo.GoString)?.__copy__());
        };
        _conn.close();
        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial-http" : stdgo.GoString), net : ((_network + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _address?.__copy__() : stdgo.GoString)?.__copy__(), addr : (null : stdgo._internal.net.Net_addr.Addr), err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
    }
