package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_lazyobject_static_extension.T_lazyObject_static_extension) class T_lazyObject {
    public var _parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _resolve : () -> stdgo._internal.go.types.Types_object.Object = null;
    public var _obj : stdgo._internal.go.types.Types_object.Object = (null : stdgo._internal.go.types.Types_object.Object);
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public function new(?_parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_resolve:() -> stdgo._internal.go.types.Types_object.Object, ?_obj:stdgo._internal.go.types.Types_object.Object, ?_once:stdgo._internal.sync.Sync_once.Once) {
        if (_parent != null) this._parent = _parent;
        if (_resolve != null) this._resolve = _resolve;
        if (_obj != null) this._obj = _obj;
        if (_once != null) this._once = _once;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lazyObject(_parent, _resolve, _obj, _once);
    }
}
