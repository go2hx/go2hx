package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict_static_extension.T_readerDict_static_extension) class T_readerDict {
    public var _bounds : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo> = (null : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo>);
    public var _tparams : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
    public var _derived : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo> = (null : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo>);
    public var _derivedTypes : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public function new(?_bounds:stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo>, ?_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, ?_derived:stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo>, ?_derivedTypes:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) {
        if (_bounds != null) this._bounds = _bounds;
        if (_tparams != null) this._tparams = _tparams;
        if (_derived != null) this._derived = _derived;
        if (_derivedTypes != null) this._derivedTypes = _derivedTypes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readerDict(_bounds, _tparams, _derived, _derivedTypes);
    }
}
