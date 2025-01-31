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
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_debugMethod_static_extension.T_debugMethod_static_extension) class T_debugMethod {
    public var type : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>);
    public var name : stdgo.GoString = "";
    public function new(?type:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>, ?name:stdgo.GoString) {
        if (type != null) this.type = type;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_debugMethod(type, name);
    }
}
