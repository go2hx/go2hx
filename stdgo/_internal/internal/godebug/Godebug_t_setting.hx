package stdgo._internal.internal.godebug;
@:structInit @:using(stdgo._internal.internal.godebug.Godebug_t_setting_static_extension.T_setting_static_extension) class T_setting {
    public var _value : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value>);
    public var _nonDefaultOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _nonDefault : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64);
    public var _info : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_info.Info> = (null : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_info.Info>);
    public function new(?_value:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Sync_once.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_info:stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_info.Info>) {
        if (_value != null) this._value = _value;
        if (_nonDefaultOnce != null) this._nonDefaultOnce = _nonDefaultOnce;
        if (_nonDefault != null) this._nonDefault = _nonDefault;
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_setting(_value, _nonDefaultOnce, _nonDefault, _info);
    }
}
