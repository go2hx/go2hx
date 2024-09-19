package stdgo._internal.net.rpc;
function dialHTTPPath(_network:stdgo.GoString, _address:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _address?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        stdgo._internal.io.Io_writeString.writeString(_conn, ((("CONNECT " : stdgo.GoString) + _path?.__copy__() : stdgo.GoString) + (" HTTP/1.0\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var __tmp__ = stdgo._internal.net.http.Http_readResponse.readResponse(stdgo._internal.bufio.Bufio_newReader.newReader(_conn), (stdgo.Go.setRef(({ method : ("CONNECT" : stdgo.GoString) } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>)), _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) && (_resp.status == stdgo._internal.net.rpc.Rpc__connected._connected) : Bool)) {
            return { _0 : stdgo._internal.net.rpc.Rpc_newClient.newClient(_conn), _1 : (null : stdgo.Error) };
        };
        if (_err == null) {
            _err = stdgo._internal.errors.Errors_new_.new_((("unexpected HTTP response: " : stdgo.GoString) + _resp.status?.__copy__() : stdgo.GoString)?.__copy__());
        };
        _conn.close();
        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial-http" : stdgo.GoString), net : ((_network + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _address?.__copy__() : stdgo.GoString)?.__copy__(), addr : (null : stdgo._internal.net.Net_Addr.Addr), err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
    }
