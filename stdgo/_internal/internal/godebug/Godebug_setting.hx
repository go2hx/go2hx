package stdgo._internal.internal.godebug;
@:structInit @:using(stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension) class Setting {
    public var _name : stdgo.GoString = "";
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    @:embedded
    public var _setting : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting> = (null : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting>);
    public function new(?_name:stdgo.GoString, ?_once:stdgo._internal.sync.Sync_once.Once, ?_setting:stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting>) {
        if (_name != null) this._name = _name;
        if (_once != null) this._once = _once;
        if (_setting != null) this._setting = _setting;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Setting(_name, _once, _setting);
    }
}
