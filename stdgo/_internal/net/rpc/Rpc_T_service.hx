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
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_service_static_extension.T_service_static_extension) class T_service {
    public var _name : stdgo.GoString = "";
    public var _rcvr : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var _typ : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _method : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>);
    public function new(?_name:stdgo.GoString, ?_rcvr:stdgo._internal.reflect.Reflect_Value.Value, ?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_method:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>) {
        if (_name != null) this._name = _name;
        if (_rcvr != null) this._rcvr = _rcvr;
        if (_typ != null) this._typ = _typ;
        if (_method != null) this._method = _method;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_service(_name, _rcvr, _typ, _method);
    }
}
