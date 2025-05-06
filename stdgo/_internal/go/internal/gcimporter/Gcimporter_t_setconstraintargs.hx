package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs_static_extension.T_setConstraintArgs_static_extension) class T_setConstraintArgs {
    public var _t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
    public var _constraint : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, ?_constraint:stdgo._internal.go.types.Types_type_.Type_) {
        if (_t != null) this._t = _t;
        if (_constraint != null) this._constraint = _constraint;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_setConstraintArgs(_t, _constraint);
    }
}
