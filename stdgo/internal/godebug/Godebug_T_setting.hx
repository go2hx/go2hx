package stdgo.internal.godebug;
@:structInit @:using(stdgo.internal.godebug.Godebug.T_setting_static_extension) abstract T_setting(stdgo._internal.internal.godebug.Godebug_T_setting.T_setting) from stdgo._internal.internal.godebug.Godebug_T_setting.T_setting to stdgo._internal.internal.godebug.Godebug_T_setting.T_setting {
    public var _value(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_T_value.T_value>;
    function get__value():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_T_value.T_value> return this._value;
    function set__value(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_T_value.T_value>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_T_value.T_value> {
        this._value = v;
        return v;
    }
    public var _nonDefaultOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__nonDefaultOnce():stdgo._internal.sync.Sync_Once.Once return this._nonDefaultOnce;
    function set__nonDefaultOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._nonDefaultOnce = v;
        return v;
    }
    public var _nonDefault(get, set) : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64;
    function get__nonDefault():stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 return this._nonDefault;
    function set__nonDefault(v:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
        this._nonDefault = v;
        return v;
    }
    public var _info(get, set) : Info;
    function get__info():Info return this._info;
    function set__info(v:Info):Info {
        this._info = (v : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_Info.Info>);
        return v;
    }
    public function new(?_value:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_T_value.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Sync_Once.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64, ?_info:Info) this = new stdgo._internal.internal.godebug.Godebug_T_setting.T_setting(_value, _nonDefaultOnce, _nonDefault, (_info : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_Info.Info>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
