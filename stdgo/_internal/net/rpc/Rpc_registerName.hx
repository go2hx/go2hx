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
function registerName(_name:stdgo.GoString, _rcvr:stdgo.AnyInterface):stdgo.Error {
        return @:check2r stdgo._internal.net.rpc.Rpc_defaultServer.defaultServer.registerName(_name?.__copy__(), _rcvr);
    }
