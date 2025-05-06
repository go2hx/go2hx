package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_instance_static_extension.Instance_static_extension) class Instance {
    public var typeArgs : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
    public var type : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?typeArgs:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>, ?type:stdgo._internal.go.types.Types_type_.Type_) {
        if (typeArgs != null) this.typeArgs = typeArgs;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Instance(typeArgs, type);
    }
}
