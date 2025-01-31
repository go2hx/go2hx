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
@:keep @:allow(stdgo._internal.net.rpc.Rpc.ServerError_asInterface) class ServerError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.rpc.Rpc_ServerError.ServerError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.rpc.Rpc_ServerError.ServerError = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
