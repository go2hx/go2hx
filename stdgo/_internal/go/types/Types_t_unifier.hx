package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_unifier_static_extension.T_unifier_static_extension) class T_unifier {
    public var _handles : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>>);
    public var _depth : stdgo.GoInt = 0;
    public var _enableInterfaceInference : Bool = false;
    public function new(?_handles:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_type_.Type_>>, ?_depth:stdgo.GoInt, ?_enableInterfaceInference:Bool) {
        if (_handles != null) this._handles = _handles;
        if (_depth != null) this._depth = _depth;
        if (_enableInterfaceInference != null) this._enableInterfaceInference = _enableInterfaceInference;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unifier(_handles, _depth, _enableInterfaceInference);
    }
}
