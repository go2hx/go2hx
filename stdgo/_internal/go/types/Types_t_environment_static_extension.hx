package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_environment_asInterface) class T_environment_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _env:stdgo.Ref<stdgo._internal.go.types.Types_t_environment.T_environment>, _name:stdgo.GoString):stdgo._internal.go.types.Types_object.Object {
        @:recv var _env:stdgo.Ref<stdgo._internal.go.types.Types_t_environment.T_environment> = _env;
        var __tmp__ = (@:checkr _env ?? throw "null pointer dereference")._scope.lookupParent(_name?.__copy__(), (@:checkr _env ?? throw "null pointer dereference")._pos), __0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = __tmp__._0, _obj:stdgo._internal.go.types.Types_object.Object = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L51"
        return _obj;
    }
}
