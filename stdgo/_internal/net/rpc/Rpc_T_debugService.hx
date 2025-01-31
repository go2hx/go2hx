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
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_debugService_static_extension.T_debugService_static_extension) class T_debugService {
    public var service : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
    public var name : stdgo.GoString = "";
    public var method : stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray = new stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray(0, 0);
    public function new(?service:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>, ?name:stdgo.GoString, ?method:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray) {
        if (service != null) this.service = service;
        if (name != null) this.name = name;
        if (method != null) this.method = method;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_debugService(service, name, method);
    }
}
