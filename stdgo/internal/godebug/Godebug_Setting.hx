package stdgo.internal.godebug;
@:structInit @:using(stdgo.internal.godebug.Godebug.Setting_static_extension) abstract Setting(stdgo._internal.internal.godebug.Godebug_Setting.Setting) from stdgo._internal.internal.godebug.Godebug_Setting.Setting to stdgo._internal.internal.godebug.Godebug_Setting.Setting {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _setting(get, set) : T_setting;
    function get__setting():T_setting return this._setting;
    function set__setting(v:T_setting):T_setting {
        this._setting = (v : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_T_setting.T_setting>);
        return v;
    }
    public function new(?_name:String, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_setting:T_setting) this = new stdgo._internal.internal.godebug.Godebug_Setting.Setting((_name : stdgo.GoString), _once, (_setting : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_T_setting.T_setting>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
