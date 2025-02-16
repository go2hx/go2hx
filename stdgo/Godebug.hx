package stdgo;
@:structInit @:using(stdgo.internal.godebug.Godebug.Setting_static_extension) abstract Setting(stdgo._internal.internal.godebug.Godebug_setting.Setting) from stdgo._internal.internal.godebug.Godebug_setting.Setting to stdgo._internal.internal.godebug.Godebug_setting.Setting {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _setting(get, set) : T_setting;
    function get__setting():T_setting return this._setting;
    function set__setting(v:T_setting):T_setting {
        this._setting = (v : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting>);
        return v;
    }
    public function new(?_name:String, ?_once:stdgo._internal.sync.Sync_once.Once, ?_setting:T_setting) this = new stdgo._internal.internal.godebug.Godebug_setting.Setting((_name : stdgo.GoString), _once, (_setting : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.godebug.Godebug.T_setting_static_extension) @:dox(hide) abstract T_setting(stdgo._internal.internal.godebug.Godebug_t_setting.T_setting) from stdgo._internal.internal.godebug.Godebug_t_setting.T_setting to stdgo._internal.internal.godebug.Godebug_t_setting.T_setting {
    public var _value(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value>;
    function get__value():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value> return this._value;
    function set__value(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value> {
        this._value = v;
        return v;
    }
    public var _nonDefaultOnce(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__nonDefaultOnce():stdgo._internal.sync.Sync_once.Once return this._nonDefaultOnce;
    function set__nonDefaultOnce(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._nonDefaultOnce = v;
        return v;
    }
    public var _nonDefault(get, set) : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64;
    function get__nonDefault():stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 return this._nonDefault;
    function set__nonDefault(v:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 {
        this._nonDefault = v;
        return v;
    }
    public var _info(get, set) : stdgo._internal.internal.godebugs.Godebugs_info.Info;
    function get__info():stdgo._internal.internal.godebugs.Godebugs_info.Info return this._info;
    function set__info(v:stdgo._internal.internal.godebugs.Godebugs_info.Info):stdgo._internal.internal.godebugs.Godebugs_info.Info {
        this._info = (v : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_info.Info>);
        return v;
    }
    public function new(?_value:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_t_value.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Sync_once.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_info:stdgo._internal.internal.godebugs.Godebugs_info.Info) this = new stdgo._internal.internal.godebug.Godebug_t_setting.T_setting(_value, _nonDefaultOnce, _nonDefault, (_info : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_info.Info>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.godebug.Godebug.T_value_static_extension) @:dox(hide) abstract T_value(stdgo._internal.internal.godebug.Godebug_t_value.T_value) from stdgo._internal.internal.godebug.Godebug_t_value.T_value to stdgo._internal.internal.godebug.Godebug_t_value.T_value {
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public var _bisect(get, set) : stdgo._internal.internal.bisect.Bisect_matcher.Matcher;
    function get__bisect():stdgo._internal.internal.bisect.Bisect_matcher.Matcher return this._bisect;
    function set__bisect(v:stdgo._internal.internal.bisect.Bisect_matcher.Matcher):stdgo._internal.internal.bisect.Bisect_matcher.Matcher {
        this._bisect = (v : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
        return v;
    }
    public function new(?_text:String, ?_bisect:stdgo._internal.internal.bisect.Bisect_matcher.Matcher) this = new stdgo._internal.internal.godebug.Godebug_t_value.T_value((_text : stdgo.GoString), (_bisect : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.godebug.Godebug.T_runtimeStderr_static_extension) @:dox(hide) abstract T_runtimeStderr(stdgo._internal.internal.godebug.Godebug_t_runtimestderr.T_runtimeStderr) from stdgo._internal.internal.godebug.Godebug_t_runtimestderr.T_runtimeStderr to stdgo._internal.internal.godebug.Godebug_t_runtimestderr.T_runtimeStderr {
    public function new() this = new stdgo._internal.internal.godebug.Godebug_t_runtimestderr.T_runtimeStderr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SettingPointer = stdgo._internal.internal.godebug.Godebug_settingpointer.SettingPointer;
class Setting_static_extension {
    static public function value(_s:Setting):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting>);
        return stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension.value(_s);
    }
    static public function _register(_s:Setting):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting>);
        stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension._register(_s);
    }
    static public function incNonDefault(_s:Setting):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting>);
        stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension.incNonDefault(_s);
    }
    static public function string(_s:Setting):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting>);
        return stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension.string(_s);
    }
    static public function undocumented(_s:Setting):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting>);
        return stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension.undocumented(_s);
    }
    static public function name(_s:Setting):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_setting.Setting>);
        return stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension.name(_s);
    }
}
@:dox(hide) typedef T_settingPointer = stdgo._internal.internal.godebug.Godebug_t_settingpointer.T_settingPointer;
@:dox(hide) class T_setting_static_extension {

}
@:dox(hide) typedef T_valuePointer = stdgo._internal.internal.godebug.Godebug_t_valuepointer.T_valuePointer;
@:dox(hide) class T_value_static_extension {

}
@:dox(hide) typedef T_runtimeStderrPointer = stdgo._internal.internal.godebug.Godebug_t_runtimestderrpointer.T_runtimeStderrPointer;
@:dox(hide) class T_runtimeStderr_static_extension {
    static public function write(_:T_runtimeStderr, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_runtimestderr.T_runtimeStderr>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.godebug.Godebug_t_runtimestderr_static_extension.T_runtimeStderr_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    * Package godebug makes the settings in the $GODEBUG environment variable
    * available to other packages. These settings are often used for compatibility
    * tweaks, when we need to change a default behavior but want to let users
    * opt back in to the original. For example GODEBUG=http2server=0 disables
    * HTTP/2 support in the net/http server.
    * 
    * In typical usage, code should declare a Setting as a global
    * and then call Value each time the current setting value is needed:
    * 
    * 	var http2server = godebug.New("http2server")
    * 
    * 	func ServeConn(c net.Conn) {
    * 		if http2server.Value() == "0" {
    * 			disallow HTTP/2
    * 			...
    * 		}
    * 		...
    * 	}
    * 
    * Each time a non-default setting causes a change in program behavior,
    * code should call [Setting.IncNonDefault] to increment a counter that can
    * be reported by [runtime/metrics.Read].
    * Note that counters used with IncNonDefault must be added to
    * various tables in other packages. See the [Setting.IncNonDefault]
    * documentation for details.
**/
class Godebug {
    /**
        * New returns a new Setting for the $GODEBUG setting with the given name.
        * 
        * GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
        * which is used for generating and checking various documentation.
        * If the name is not listed in that table, New will succeed but calling Value
        * on the returned Setting will panic.
        * To disable that panic for access to an undocumented setting,
        * prefix the name with a #, as in godebug.New("#gofsystrace").
        * The # is a signal to New but not part of the key used in $GODEBUG.
    **/
    static public inline function new_(_name:String):Setting {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.internal.godebug.Godebug_new_.new_(_name);
    }
}
