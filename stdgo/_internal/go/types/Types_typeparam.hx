package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_typeparam_static_extension.TypeParam_static_extension) class TypeParam {
    public var _check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
    public var _id : stdgo.GoUInt64 = 0;
    public var _obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
    public var _index : stdgo.GoInt = 0;
    public var _bound : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, ?_id:stdgo.GoUInt64, ?_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, ?_index:stdgo.GoInt, ?_bound:stdgo._internal.go.types.Types_type_.Type_) {
        if (_check != null) this._check = _check;
        if (_id != null) this._id = _id;
        if (_obj != null) this._obj = _obj;
        if (_index != null) this._index = _index;
        if (_bound != null) this._bound = _bound;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeParam(_check, _id, _obj, _index, _bound);
    }
}
