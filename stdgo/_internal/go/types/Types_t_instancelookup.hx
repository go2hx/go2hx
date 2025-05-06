package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_instancelookup_static_extension.T_instanceLookup_static_extension) class T_instanceLookup {
    public var _buf : stdgo.GoArray<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>> = new stdgo.GoArray<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>(3, 3);
    public var _m : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>);
    public function new(?_buf:stdgo.GoArray<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>, ?_m:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>>) {
        if (_buf != null) this._buf = _buf;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_instanceLookup(_buf, _m);
    }
}
