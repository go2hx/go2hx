package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
function dialHTTPPath(_network:stdgo.GoString, _address:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_dial.dial(_network?.__copy__(), _address?.__copy__()), _conn:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        stdgo._internal.io.Io_writeString.writeString(_conn, ((("CONNECT " : stdgo.GoString) + _path?.__copy__() : stdgo.GoString) + (" HTTP/1.0\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var __tmp__ = stdgo._internal.net.http.Http_readResponse.readResponse(stdgo._internal.bufio.Bufio_newReader.newReader(_conn), (stdgo.Go.setRef(({ method : ("CONNECT" : stdgo.GoString) } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>)), _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) && ((@:checkr _resp ?? throw "null pointer dereference").status == stdgo._internal.net.rpc.Rpc__connected._connected) : Bool)) {
            return { _0 : stdgo._internal.net.rpc.Rpc_newClient.newClient(_conn), _1 : (null : stdgo.Error) };
        };
        if (_err == null) {
            _err = stdgo._internal.errors.Errors_new_.new_((("unexpected HTTP response: " : stdgo.GoString) + (@:checkr _resp ?? throw "null pointer dereference").status?.__copy__() : stdgo.GoString)?.__copy__());
        };
        _conn.close();
        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial-http" : stdgo.GoString), net : ((_network + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _address?.__copy__() : stdgo.GoString)?.__copy__(), addr : (null : stdgo._internal.net.Net_Addr.Addr), err : _err } : stdgo._internal.net.Net_OpError.OpError)) : stdgo.Ref<stdgo._internal.net.Net_OpError.OpError>)) };
    }
