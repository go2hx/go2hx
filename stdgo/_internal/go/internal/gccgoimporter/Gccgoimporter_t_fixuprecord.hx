package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord_static_extension.T_fixupRecord_static_extension) class T_fixupRecord {
    public var _toUpdate : stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
    public var _target : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_toUpdate:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, ?_target:stdgo._internal.go.types.Types_type_.Type_) {
        if (_toUpdate != null) this._toUpdate = _toUpdate;
        if (_target != null) this._target = _target;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fixupRecord(_toUpdate, _target);
    }
}
