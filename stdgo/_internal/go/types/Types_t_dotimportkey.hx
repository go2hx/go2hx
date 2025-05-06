package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_dotimportkey_static_extension.T_dotImportKey_static_extension) class T_dotImportKey {
    public var _scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _name : stdgo.GoString = "";
    public function new(?_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_name:stdgo.GoString) {
        if (_scope != null) this._scope = _scope;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dotImportKey(_scope, _name);
    }
}
