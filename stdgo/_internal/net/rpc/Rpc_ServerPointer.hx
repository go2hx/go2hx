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
@:keep @:follow @:using(stdgo._internal.net.rpc.Rpc_Server_static_extension.Server_static_extension) typedef ServerPointer = stdgo.Pointer<stdgo._internal.net.rpc.Rpc_Server.Server>;
