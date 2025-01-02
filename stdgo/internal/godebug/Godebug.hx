package stdgo.internal.godebug;
@:structInit @:using(stdgo.internal.godebug.Godebug.Setting_static_extension) abstract Setting(stdgo._internal.internal.godebug.Godebug_Setting.Setting) from stdgo._internal.internal.godebug.Godebug_Setting.Setting to stdgo._internal.internal.godebug.Godebug_Setting.Setting {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
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
        this._setting = v;
        return v;
    }
    public function new(?_name:String, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_setting:T_setting) this = new stdgo._internal.internal.godebug.Godebug_Setting.Setting(_name, _once, _setting);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_setting(stdgo._internal.internal.godebug.Godebug_T_setting.T_setting) from stdgo._internal.internal.godebug.Godebug_T_setting.T_setting to stdgo._internal.internal.godebug.Godebug_T_setting.T_setting {
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
        this._info = v;
        return v;
    }
    public function new(?_value:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.internal.godebug.Godebug_T_value.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Sync_Once.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64, ?_info:Info) this = new stdgo._internal.internal.godebug.Godebug_T_setting.T_setting(_value, _nonDefaultOnce, _nonDefault, _info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_value(stdgo._internal.internal.godebug.Godebug_T_value.T_value) from stdgo._internal.internal.godebug.Godebug_T_value.T_value to stdgo._internal.internal.godebug.Godebug_T_value.T_value {
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = v;
        return v;
    }
    public var _bisect(get, set) : stdgo._internal.internal.bisect.Bisect_Matcher.Matcher;
    function get__bisect():stdgo._internal.internal.bisect.Bisect_Matcher.Matcher return this._bisect;
    function set__bisect(v:stdgo._internal.internal.bisect.Bisect_Matcher.Matcher):stdgo._internal.internal.bisect.Bisect_Matcher.Matcher {
        this._bisect = v;
        return v;
    }
    public function new(?_text:String, ?_bisect:stdgo._internal.internal.bisect.Bisect_Matcher.Matcher) this = new stdgo._internal.internal.godebug.Godebug_T_value.T_value(_text, _bisect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.godebug.Godebug.T_runtimeStderr_static_extension) abstract T_runtimeStderr(stdgo._internal.internal.godebug.Godebug_T_runtimeStderr.T_runtimeStderr) from stdgo._internal.internal.godebug.Godebug_T_runtimeStderr.T_runtimeStderr to stdgo._internal.internal.godebug.Godebug_T_runtimeStderr.T_runtimeStderr {
    public function new() this = new stdgo._internal.internal.godebug.Godebug_T_runtimeStderr.T_runtimeStderr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SettingPointer = stdgo._internal.internal.godebug.Godebug_SettingPointer.SettingPointer;
class Setting_static_extension {
    static public function value(_s:Setting):String {
        return stdgo._internal.internal.godebug.Godebug_Setting_static_extension.Setting_static_extension.value(_s);
    }
    static public function _register(_s:Setting):Void {
        stdgo._internal.internal.godebug.Godebug_Setting_static_extension.Setting_static_extension._register(_s);
    }
    static public function incNonDefault(_s:Setting):Void {
        stdgo._internal.internal.godebug.Godebug_Setting_static_extension.Setting_static_extension.incNonDefault(_s);
    }
    static public function string(_s:Setting):String {
        return stdgo._internal.internal.godebug.Godebug_Setting_static_extension.Setting_static_extension.string(_s);
    }
    static public function undocumented(_s:Setting):Bool {
        return stdgo._internal.internal.godebug.Godebug_Setting_static_extension.Setting_static_extension.undocumented(_s);
    }
    static public function name(_s:Setting):String {
        return stdgo._internal.internal.godebug.Godebug_Setting_static_extension.Setting_static_extension.name(_s);
    }
}
typedef T_runtimeStderrPointer = stdgo._internal.internal.godebug.Godebug_T_runtimeStderrPointer.T_runtimeStderrPointer;
class T_runtimeStderr_static_extension {
    static public function write(_:T_runtimeStderr, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.godebug.Godebug_T_runtimeStderr_static_extension.T_runtimeStderr_static_extension.write(_, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package godebug makes the settings in the $GODEBUG environment variable
    available to other packages. These settings are often used for compatibility
    tweaks, when we need to change a default behavior but want to let users
    opt back in to the original. For example GODEBUG=http2server=0 disables
    HTTP/2 support in the net/http server.
    
    In typical usage, code should declare a Setting as a global
    and then call Value each time the current setting value is needed:
    
    	var http2server = godebug.New("http2server")
    
    	func ServeConn(c net.Conn) {
    		if http2server.Value() == "0" {
    			disallow HTTP/2
    			...
    		}
    		...
    	}
    
    Each time a non-default setting causes a change in program behavior,
    code should call [Setting.IncNonDefault] to increment a counter that can
    be reported by [runtime/metrics.Read].
    Note that counters used with IncNonDefault must be added to
    various tables in other packages. See the [Setting.IncNonDefault]
    documentation for details.
**/
class Godebug {
    /**
        New returns a new Setting for the $GODEBUG setting with the given name.
        
        GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
        which is used for generating and checking various documentation.
        If the name is not listed in that table, New will succeed but calling Value
        on the returned Setting will panic.
        To disable that panic for access to an undocumented setting,
        prefix the name with a #, as in godebug.New("#gofsystrace").
        The # is a signal to New but not part of the key used in $GODEBUG.
    **/
    static public function new_(_name:String):Setting {
        return stdgo._internal.internal.godebug.Godebug_new_.new_(_name);
    }
}
